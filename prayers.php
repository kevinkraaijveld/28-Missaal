<?php
/**
 * Kevin's Missaal — prayers API
 *
 * GET prayers.php?date=2026-06-22
 *
 * Haalt per gebed alle passende onderdelen op voor de gegeven datum.
 * Per tabel worden alle rijen teruggegeven die matchen op:
 *   - type = 'fixed'   → altijd
 *   - type = 'weekday' → weekday-kolom = weekdag van de datum
 *   - type = 'date'    → month + day matchen de datum
 * Gesorteerd op sort_order.
 */

header('Content-Type: application/json; charset=utf-8');

// ── Database configuratie ──────────────────────────────────────
define('DB_HOST', 'localhost');
define('DB_NAME', 'missaal');
define('DB_USER', 'root');   // ← aanpassen
define('DB_PASS', 'mysql');       // ← aanpassen
define('DB_PORT', 3306);

// ── Datum ophalen en valideren ─────────────────────────────────
$date = isset($_GET['date']) ? trim($_GET['date']) : date('Y-m-d');

if (!preg_match('/^\d{4}-\d{2}-\d{2}$/', $date)) {
    http_response_code(400);
    echo json_encode(['error' => 'Ongeldige datum. Gebruik YYYY-MM-DD.']);
    exit;
}

$dateObj = DateTime::createFromFormat('Y-m-d', $date);
if (!$dateObj) {
    http_response_code(400);
    echo json_encode(['error' => 'Datum kon niet worden verwerkt.']);
    exit;
}

function updateLitanieNextShowDate($pdo, $today) {
    $stmt = $pdo->prepare("SELECT next_show_date FROM litanie LIMIT 1");
    $stmt->execute();
    $litanie = $stmt->fetch();

    if (!$litanie || !$litanie['next_show_date']) {
        return null;
    }

    $nextShowDate = new DateTime($litanie['next_show_date']);
    $todayDate = new DateTime($today);

    // If next_show_date is in the past, update it
    if ($nextShowDate < $todayDate) {
        // Generate random days between 10 and 20
        $randomDays = rand(1, 10);
        $newDate = clone $todayDate;
        $newDate->modify("+{$randomDays} days");

        $newDateString = $newDate->format('Y-m-d');
        $newMonth = (int) $newDate->format('n');
        $newDay = (int) $newDate->format('j');

        // Update the litanie table
        $updateStmt = $pdo->prepare("
            UPDATE litanie
            SET next_show_date = :nextShowDate,
                month = :month,
                day = :day
            WHERE 1
        ");
        $updateStmt->execute([
            ':nextShowDate' => $newDateString,
            ':month' => $newMonth,
            ':day' => $newDay,
        ]);

        return $newDateString;
    }

    return $litanie['next_show_date'];
}


// PHP geeft 0=zondag … 6=zaterdag → omzetten naar 0=maandag … 6=zondag
$phpWeekday = (int) $dateObj->format('w');
$weekday    = ($phpWeekday === 0) ? 6 : $phpWeekday - 1;
$month      = (int) $dateObj->format('n');
$day        = (int) $dateObj->format('j');

// ── Database verbinding ────────────────────────────────────────
try {
    $pdo = new PDO(
        "mysql:host=" . DB_HOST . ";port=" . DB_PORT
            . ";dbname=" . DB_NAME . ";charset=utf8mb4",
        DB_USER,
        DB_PASS,
        [
            PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
        ]
    );
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database verbinding mislukt.']);
    exit;
}

// Only update if viewing today or later
$todayActual = date('Y-m-d');


    updateLitanieNextShowDate($pdo, $todayActual);


// ── Tabellen en hun UI-naam ────────────────────────────────────
$tables = [
    'lauden'     => 'Lauden',
    'terts'      => 'Terts',
    'sext'       => 'Sext',
    'none_gebed' => 'None',
    'vespers'    => 'Vespers',
    'completten' => 'Completten',
    'hoogfeest'  => 'Hoogfeest',
    'noveen'     => 'Noveen',
    'litanie'    => 'Litanie',
    'metten'     => 'Metten',
];

// ── Query per tabel ────────────────────────────────────────────
$sql = "
SELECT id, slug, title, type, content, sort_order
    FROM `%s`
    WHERE
        type = 'fixed'
        OR (type = 'weekday' AND weekday = :weekday)
        OR (type = 'date'    AND month = :month AND day = :day)
    ORDER BY sort_order ASC
";


foreach ($tables as $table => $label) {
    try {
        $stmt = $pdo->prepare(sprintf($sql, $table));
        $stmt->execute([
            ':weekday' => $weekday,
            ':month'   => $month,
            ':day'     => $day,
        ]);
        $rows = $stmt->fetchAll();

        $result[$table] = [
            'label'      => $label,
            'onderdelen' => $rows,
        ];
    } catch (PDOException $e) {
        // Tabel bestaat maar is leeg of heeft een fout → lege array
        $result[$table] = [
            'label'      => $label,
            'onderdelen' => [],
        ];
    }
}

echo json_encode([
    'datum'   => $date,
    'gebeden' => $result,
], JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT);
