-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Gegenereerd op: 22 jun 2026 om 16:46
-- Serverversie: 8.0.31
-- PHP-versie: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `missaal`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `completten`
--

DROP TABLE IF EXISTS `completten`;
CREATE TABLE `completten` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `completten`
--

INSERT INTO `completten` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'maandag_1', 'Maandag – Johannes 1:1-5', 'weekday', 0, NULL, NULL, 'In het begin was het Woord, het Woord was bij God en het Woord was God.\r\nHet was in het begin bij God.\r\nAlles is erdoor ontstaan en zonder dit is niets ontstaan van wat bestaat.\r\nIn het Woord was het licht en het licht was het leven voor de mensen.\r\nHet licht schijnt in de duisternis en de duisternis heeft haar niet in zijn macht gekregen.', 10),
(2, 'maandag_2', 'Maandag – Prediker 3:1-8', 'weekday', 0, NULL, NULL, 'Voor alles wat er gebeurt is er een uur, een tijd voor alles wat er is onder de hemel.\r\nEr is een tijd om te baren en een tijd om te sterven, een tijd om te planten en een tijd om te oogsten.\r\nEr is een tijd om te doden en een tijd om te helen, een tijd om af te breken en een tijd om op te bouwen.\r\nEr is een tijd om te huilen en een tijd om te lachen, een tijd om te rouwen en een tijd om te dansen.\r\nEr is een tijd om te ontvlammen en een tijd om te verkillen, een tijd om te omhelzen en een tijd om af te weren.\r\nEr is een tijd om te zoeken en een tijd om te verliezen, een tijd om te bewaren en een tijd om weg te gooien.\r\nEr is een tijd om te scheuren en een tijd om te herstellen, een tijd om te zwijgen en een tijd om te spreken.\r\nEr is een tijd om lief te hebben en een tijd om te haten, een tijd van oorlog en een tijd van vrede.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 20),
(3, 'dinsdag_1', 'Dinsdag – 1 Korintiërs 13:1-13', 'weekday', 1, NULL, NULL, 'Al sprak ik de talen van alle mensen en die van de engelen –had ik de liefde niet, ik zou niet meer zijn dan een dreunende gong of een schelle cimbaal. Al had ik de gave om te profeteren en doorgrondde ik alle geheimen, al bezat ik alle kennis en had ik het geloof dat bergen kan verplaatsen – had ik de liefde niet, ik zou niets zijn.\r\nAl verkocht ik mijn bezittingen omdat ik voedsel aan de armen wilde geven, al gaf ik mijn lichaam prijs en kon ik daar trots op zijn – had ik de liefde niet, het zou mij niet baten.\r\n\r\nDe liefde is geduldig en vol goedheid. De liefde kent geen afgunst, geen ijdel vertoon en geen zelfgenoegzaamheid.\r\nZe is niet grof en niet zelfzuchtig, ze laat zich niet boos maken en rekent het kwaad niet aan, ze verheugt zich niet over het onrecht maar vindt vreugde in de waarheid.\r\nAlles verdraagt ze, alles gelooft ze, alles hoopt ze, in alles volhardt ze.\r\n\r\nDe liefde zal nooit vergaan. Profetieën zullen verdwijnen, klanktaal zal verstommen, kennis verloren gaan – want ons kennen schiet tekort en ons profeteren is beperkt.\r\nWanneer het volmaakte komt zal wat beperkt is verdwijnen.\r\nToen ik nog een kind was sprak ik als een kind, dacht ik als een kind, redeneerde ik als een kind. Nu ik volwassen ben heb ik al het\r\nkinderlijke achter me gelaten.\r\nNu kijken we nog in een wazige spiegel, maar straks staan we oog in oog. Nu is mijn kennen nog beperkt, maar straks zal ik volledig kennen, zoals ik zelf gekend ben.\r\n\r\nOns resten geloof, hoop en liefde, deze drie, maar de grootste daarvan is de liefde.\r\n\r\nWoord van de Heer-\r\nWij danken God.', 10),
(4, 'woensdag_1', 'Woensdag – Prediker 1:14,16-18', 'weekday', 2, NULL, NULL, 'Ik heb gezien alle werken die onder de zon worden gedaan.\r\nEn zie, alles is ijdelheid en kwelling van de geest.\r\nIk sprak met mijn eigen hart, zeggende: \'Zie, ik ben tot groot aanzien\r\ngekomen.\r\nEn ik heb mijn hart gegeven om de wijsheid te kennen, en om\r\ndwaasheid en waanzin te kennen.\r\nIk begreep dat dit ook een kwelling van de geest is.\r\nWant in veel wijsheid is veel verdriet, en hij die zijn kennis\r\nvermeerdert, vermeerdert smart.', 10),
(5, 'woensdag_2', 'Woensdag – Matteüs 5:3-12', 'weekday', 2, NULL, NULL, '‘Gelukkig wie nederig van hart zijn,\r\nwant voor hen is het koninkrijk van de hemel.\r\nGelukkig de treurenden,\r\nwant zij zullen getroost worden.\r\nGelukkig de zachtmoedigen,\r\nwant zij zullen het land bezitten.\r\nGelukkig wie hongeren en dorsten naar gerechtigheid,\r\nwant zij zullen verzadigd worden.\r\nGelukkig de barmhartigen,\r\nwant zij zullen barmhartigheid ondervinden.\r\nGelukkig wie zuiver van hart zijn,\r\nwant zij zullen God zien.\r\nGelukkig de vredestichters,\r\nwant zij zullen kinderen van God genoemd worden.\r\nGelukkig wie vanwege de gerechtigheid vervolgd worden,\r\nwant voor hen is het koninkrijk van de hemel.\r\nGelukkig zijn jullie wanneer ze je omwille van mij uitschelden,\r\nvervolgen en van allerlei kwaad betichten.\r\nVerheug je en juich, want je zult rijkelijk worden beloond in de hemel;\r\nzo immers vervolgden ze vóór jullie de profeten.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 20),
(6, 'donderdag_1', 'Donderdag – Gebed om bescherming en vertrouwen', 'weekday', 3, NULL, NULL, 'Hemelse vader,\r\nwij komen tot U met onze noden en onze zorgen.\r\nBescherm ons tegen het kwaad en tegen de verleiding,\r\nen leid ons altijd naar Uw Zoon, Jezus Christus.\r\n\r\nWees onze toevlucht in tijden van strijd,\r\nonze troost in tijden van verdriet,\r\nen onze gids op de weg naar de eeuwige vreugde.\r\nGeef kracht aan hen die die wankelen,\r\ngeef geloof aan hen die twijfelen,\r\nen geef hoop aan hen die lijden.\r\n\r\nLeid ons door Uw Heilig Geest Heer,\r\nopdat wij in geloof en in liefde standvastig blijven.\r\n\r\nIn Uw naam bidden we, vol vertrouwen en vol van hoop.\r\nAmen.', 10),
(7, 'donderdag_2', 'Donderdag – Dankgebed', 'weekday', 3, NULL, NULL, 'Hemelse Vader,\r\nWij zijn U dankbaar voor al het goede wat U ons geschonken heeft, en\r\nwij prijzen en loven Uw goedheid en Uw genade.\r\n\r\nU bent onze sterke rots en onze hoop, U schenkt ons dagelijks\r\nzegeningen en wonderen en daarvoor loven en aanbidden wij Uw grote\r\nnaam.\r\n\r\nIn Uw aanwezigheid voelen we ons geliefd en geborgen, wetende dat U\r\naltijd voor ons zorgt, zelfs wanneer we Uw wegen soms helemaal niet\r\nbegrijpen.\r\n\r\nU bent de bron van ons leven, en we koesteren de momenten waarin we\r\ndicht bij U mogen zijn, in gebed en in aanbidding.\r\n\r\nMaar soms, Heer, worstelen we ook met zoveel vragen. Waarom is er\r\ntoch zoveel lijden in de wereld? En waarom zoveel ongerechtigheid?\r\nHelp ons dan, Heer, en help ook mij Heer, om U te begrijpen en om Uw\r\nwil te volgen, zelfs als de antwoorden mijn verstand te boven gaan.\r\n\r\nLeid ons door uw Heilig Geest, zodat we Uw stem kunnen verstaan en\r\nUw liefde kunnen uitdragen naar anderen. Geef ons de moed om te\r\nhandelen waar nodig is en de wijsheid om te rusten in Uw genade.\r\n\r\nWe vertrouwen op de belofte dat U bij ons bent, elke stap van de weg.\r\nIn Uw naam bidden we, vol vertrouwen en vol hoop.\r\nAmen.', 20),
(8, 'vrijdag_1', 'Vrijdag – De HEER is mijn herder', 'weekday', 4, NULL, NULL, 'De HEER is mijn herder, het ontbreekt mij aan niets.\r\nHij laat mij rusten in groene weiden en voert mij naar vredig water.\r\n\r\nHij geeft mij nieuwe kracht en leidt mij langs veilige paden tot eer van zijn naam.\r\n\r\nAl gaat mijn weg door een donker dal des doods ik vrees geen gevaar,\r\nwant U bent bij mij, Uw stok en Uw staf, zij geven mij moed.\r\n\r\nU nodigt mij aan tafel voor het oog van de vijand.\r\nU zalft mijn hoofd met olie, mijn beker vloeit over.\r\n\r\nGeluk en genade volgen mij alle dagen van mijn leven.\r\nIk keer terug in het huis van de HEER tot in lengte van dagen.', 10),
(9, 'vrijdag_2', 'Vrijdag – Geluk van vergeving', 'weekday', 4, NULL, NULL, 'Gelukkig de mens van wie de ontrouw wordt vergeven, van wie de zonden worden bedekt.\r\nZolang ik zweeg, teerden mijn botten weg, kreunend leed ik, de hele dag.\r\nZwaar drukte uw hand op mij, dag en nacht, mijn kracht smolt weg als in de zomerhitte.\r\n\r\nMaar toen beleed ik u mijn zonde, ik dekte mijn schuld niet toe.\r\nIk zei: “Ik beken de HEER mijn ontrouw” – en u vergaf mij mijn zonde, mijn schuld.\r\n\r\nLaten uw getrouwen dus tot u bidden als zij in zichzelf een zonde vinden.\r\nStormt dan een vloed van water aan, die zal hen niet bereiken.\r\n\r\nBij u ben ik veilig, u behoedt mij in de nood en omringt mij met gejuich van bevrijding.\r\n\r\n“Ik geef inzicht en wijs de weg die je moet gaan.\r\nIk geef raad, op jou rust mijn oog.\r\nWees niet redeloos als paarden of ezels die met bit en toom worden bedwongen, dan zal geen kwaad je treffen.”\r\nZo spreekt de Heer.\r\n\r\nEen slecht mens heeft veel leed te verduren, maar wie op de HEER vertrouwt wordt met liefde omringd.\r\n\r\nVerheug u daarom in de HEER, rechtvaardigen, en juich, zing het uit, allen die oprecht zijn van hart.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 20),
(10, 'zaterdag_1', 'Zaterdag – De tien geboden', 'weekday', 5, NULL, NULL, 'Gedenken wij de tien geboden die God aan Mozes gaf in de woestijn:\r\n\r\nIk ben de Heer, uw God, de God die u uit Egypte heeft bevrijd,\r\nGij zult geen andere goden voor mijn aangezicht aanbidden.\r\nGij zult geen afgodsbeelden maken, niet voor hen neerknielen en hen\r\nniet dienen.\r\nGij zult de naam van de Heer uw God niet ijdellijk gebruiken.\r\nEer uw vader en uw moeder en gedenk de sabbat en houd deze dag in\r\nere.\r\n\r\nGij zult niet doodslaan.\r\nGij zult niet echtbreken.\r\nGij zult niet stelen.\r\nGij zult het bezit van uw naaste niet begerig zijn.\r\nEn gij zult over uw naaste geen vals getuigenis afleggen.', 10),
(11, 'zaterdag_2', 'Zaterdag – Apostelen en heiligen', 'weekday', 5, NULL, NULL, 'Bidden wij tot de discipelen van Christus Jezus:\r\n\r\nSimon Kefas Petrus,\r\nen diens broer Andreas.\r\nJakobus, zoon van Zebedeüs,\r\nen diens broer Johannes.\r\nFilippus van Betsaïda,\r\nBartholomeus Nathanaël,\r\nThomas Didymus,\r\nen Matteüs Levi.\r\nJakobus, zoon van Alfeüs,\r\nJudas Thaddeüs,\r\nSimon Kananeüs de Zeloot,\r\nen Mattias, die Judas Iskariot, de verrader van Jezus verving.\r\n\r\nBidden wij tot de heiligen die God over mijn leven heeft aangesteld:\r\n\r\nHeilige Bernadette van Lourdes,\r\nbid voor ons.\r\nZuster Lucia van Fatima,\r\nbid voor ons.\r\nHeilige Jeanne d\'Arc,\r\nbid voor ons.\r\nHeilige Kevin van Glendalough,\r\nbid voor ons.\r\nSint Nicolaas van Myra,\r\nbid voor ons.\r\nHeilige Martelaar Nicolaas Pieck,\r\nbid voor ons.\r\nHeilige Bonifatius,\r\nbid voor ons.\r\nHeilige Willibrord,\r\nbid voor ons.\r\nHeilige Apostel Judas Thaddeus,\r\nbid voor ons.\r\nHeilige Apostel Simon Kefas Petrus,\r\nbid voor ons.\r\nHeilige Moeder Maria,\r\nbid voor ons.\r\n\r\nChristus Jezus, Zoon van God\r\nverhoor ons.', 20),
(12, 'zondag_1', 'Zondag – Onze Vader', 'weekday', 6, NULL, NULL, 'Onze Vader, die in de hemel zijt,\r\nUw Naam worde geheiligd,\r\nUw Rijk kome,\r\nUw wil geschiede op aarde zoals in de hemel,\r\nGeef ons heden ons dagelijks brood,\r\nEn vergeef ons onze schulden,\r\nzoals ook wij vergeven onze schuldenaren;\r\nEn leid ons niet in beproeving,\r\nmaar verlos ons van het kwade.\r\n\r\nWant van U is het Koninkrijk, de kracht en de heerlijkheid\r\ntot in der eeuwigheid.\r\nAmen.', 10),
(13, 'zondag_2', 'Zondag – Wees gegroet Maria', 'weekday', 6, NULL, NULL, 'Wees gegroet, Maria, vol van genade, de Heer zij met u.\r\nGij zijt de gezegende onder de vrouwen en gezegend is onze lieve Heer\r\nJezus Christus, de vrucht van uw schoot.\r\n\r\nHeilige Maria, Moeder van God, bid voor ons zondaars,\r\nnu en in het uur van onze dood.\r\nAmen.', 20),
(14, 'zondag_3', 'Zondag – O Maria', 'weekday', 6, NULL, NULL, 'O Maria, zonder zonde ontvangen, bid voor ons die onze toevlucht tot u nemen.', 30),
(15, 'zondag_4', 'Zondag – O mijn Jezus', 'weekday', 6, NULL, NULL, 'O mijn Jezus, vergeef ons onze zonden,\nbehoed ons voor het vuur van de hel,\nbreng alle zielen naar de hemel,\nvooral diegenen die Uw barmhartigheid het meeste nodig hebben.\nAmen.', 40),
(16, 'zondag_5', 'Zondag – Jezusgebed\r\n', 'weekday', 6, NULL, NULL, 'Heer Jezus Christus zoon van God wees mij een zondaar genadig.\r\n', 50),
(17, 'zondag_6', 'Zondag – Heilige Michaël', 'weekday', 6, NULL, NULL, 'Heilige Aartsengel Michaël, verdedig ons in de strijd;\r\nwees onze bescherming tegen de boosheid en de listen van de duivel.\r\nWij smeken ootmoedig dat God hem Zijn macht doe gevoelen.\r\n\r\nEn gij, vorst van de hemelse legerscharen,\r\ndrijf Satan en de andere boze geesten,\r\ndie tot verderf van de zielen over de wereld rondgaan,\r\ndoor de goddelijke kracht in de hel terug.\r\n\r\nAmen.\r\n', 60),
(18, 'zondag_0', 'Zondag – Lofprijzing\r\n', 'weekday', 6, NULL, NULL, 'Eer aan de Vader en de Zoon en de Heilige Geest.\r\nZoals het was in het begin en nu en altijd en in de eeuwen der eeuwen.\r\nAmen.', 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hoogfeest`
--

DROP TABLE IF EXISTS `hoogfeest`;
CREATE TABLE `hoogfeest` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `lauden`
--

DROP TABLE IF EXISTS `lauden`;
CREATE TABLE `lauden` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL COMMENT '0=ma … 6=zo',
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `lauden`
--

INSERT INTO `lauden` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'geloofsbelijdenis', 'Geloofsbelijdenis', 'fixed', NULL, NULL, NULL, 'Ik geloof in God,\r\nde almachtige Vader,\r\nSchepper van hemel en aarde.\r\nEn in Jezus Christus,\r\nZijn enige Zoon, onze Heer;\r\nDie ontvangen is van de Heilige Geest,\r\ngeboren uit de maagd Maria;\r\nDie geleden heeft onder Pontius Pilatus,\r\nis gekruisigd, gestorven en begraven;\r\nDie nedergedaald is ter helle,\r\nde derde dag verrezen uit de doden;\r\nDie opgestegen is ten hemel,\r\nzit aan de rechterhand van God,\r\nde almachtige Vader;\r\nVandaar zal Hij komen oordelen\r\nde levenden en de doden.\r\nIk geloof in de Heilige Geest,\r\nde Heilige Katholieke Kerk,\r\nde gemeenschap van de heiligen;\r\nde vergeving van de zonden;\r\nde verrijzenis van het lichaam;\r\nen het eeuwig leven.\r\nAmen.', 10),
(2, 'acclamatie', 'Acclamatie', 'fixed', NULL, NULL, NULL, 'Heer Jezus, wij verkondigen uw dood en wij belijden tot Gij\r\nwederkeert, dat Gij verrezen zijt.\r\nAmen.', 20),
(3, 'offerande', 'Offerande', 'fixed', NULL, NULL, NULL, 'Moge de Heer het offer uit onze handen aannemen, tot lof en eer van\r\nzijn Naam, tot welzijn van ons en van heel zijn heilige Kerk.\r\nAmen.', 30),
(4, 'schuldbelijdenis', 'Schuldbelijdenis', 'fixed', NULL, NULL, NULL, 'Ik belijd voor de almachtige God,\r\nen voor u allen,\r\ndat ik gezondigd heb\r\nin woord en gedachte,\r\nin doen en laten,\r\ndoor mijn schuld, door mijn schuld,\r\ndoor mijn grote schuld.\r\nDaarom smeek ik de heilige Maria,\r\naltijd maagd,\r\nalle engelen en heiligen,\r\nen u, broeders en zusters,\r\nvoor mij te bidden tot de Heer, onze God.\r\nAmen.', 40);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `litanie`
--

DROP TABLE IF EXISTS `litanie`;
CREATE TABLE `litanie` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_show_date` date DEFAULT NULL COMMENT 'Datum waarop de litanie de volgende keer getoond wordt',
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `litanie`
--

INSERT INTO `litanie` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `next_show_date`, `sort_order`) VALUES
(1, 'litanie_nederigheid', 'Litanie van de Nederigheid', 'date', NULL, 6, 26, 'Jezus, zachtmoedig en nederig van hart, verhoor mij.\r\nVan het verlangen om geliefd te worden, verlos mij, o Jezus.\r\nVan het verlangen om bemind te worden, verlos mij, o Jezus.\r\nVan het verlangen om geprezen te worden, verlos mij, o Jezus.\r\nVan het verlangen om geëerd te worden, verlos mij, o Jezus.\r\nVan het verlangen om voorgetrokken te worden, verlos mij, o Jezus.\r\nVan het verlangen om geraadpleegd te worden, verlos mij, o Jezus.\r\nVan het verlangen om goedgekeurd te worden, verlos mij, o Jezus.\r\nVan de angst te worden vernederd, verlos mij, o Jezus.\r\nVan de angst te worden geminacht, verlos mij, o Jezus.\r\nVan de angst te worden afgewezen, verlos mij, o Jezus.\r\nVan de angst te worden vergeten, verlos mij, o Jezus.\r\nVan de angst te worden bespot, verlos mij, o Jezus.\r\nVan de angst te worden beledigd, verlos mij, o Jezus.\r\nVan de angst te worden verdacht, verlos mij, o Jezus.\r\nDat anderen meer geliefd worden dan ik, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen meer geëerd worden dan ik, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen in de ogen van de wereld mogen toenemen, en ik mag verminderen, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen worden gekozen en ik terzijde word geschoven, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen worden geprezen en ik word verwaarloosd, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen in elk opzicht boven mij worden verkozen, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen mij in alles overtreffen, Jezus, geef mij de genade dat ik dat verlang.\r\nDat ik als minder wordt beschouwd dan anderen, Jezus, geef mij de genade dat ik dat verlang.\r\nDat anderen heiliger mogen worden dan ik, zolang ik ook zelf zo heilig mag worden als ik behoor te zijn, Jezus, geef mij de genade dit te verlangen.\r\nHeer Jezus Christus, maak ons nederig van hart en trouw tot het einde.\r\nAmen.', '2026-06-26', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `metten`
--

DROP TABLE IF EXISTS `metten`;
CREATE TABLE `metten` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `metten`
--

INSERT INTO `metten` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'litanie_maria', 'Litanie van Maria', 'fixed', NULL, NULL, NULL, 'Christus, ontferm U over ons.\r\nChristus, aanhoor ons.\r\nChristus, verhoor ons.\r\nGod, hemelse Vader, ontferm U over ons.\r\nGod Zoon, verlosser van de wereld, ontferm U over ons.\r\nGod Heilige Geest, ontferm U over ons.\r\nHeilige Drievuldigheid, één God, ontferm U over ons.\r\nHeilige Maria, bid voor ons.\r\nHeilige Moeder van God, bid voor ons.\r\nHeilige Maagd der maagden, bid voor ons.\r\nMoeder van Christus, bid voor ons.\r\nMoeder van de Kerk, bid voor ons.\r\nMoeder van de goddelijke genade, bid voor ons.\r\nAllerreinste Moeder, bid voor ons.\r\nZeer kuise Moeder, bid voor ons.\r\nMaagdelijke Moeder, bid voor ons.\r\nOnbevlekte Moeder, bid voor ons.\r\nBeminnelijke Moeder, bid voor ons.\r\nBewonderenswaardige Moeder, bid voor ons.\r\nMoeder van goede raad, bid voor ons.\r\nMoeder van de Schepper, bid voor ons.\r\nMoeder van de Zaligmaker, bid voor ons.\r\nAllervoorzichtigste Maagd, bid voor ons.\r\nEerwaardige Maagd, bid voor ons.\r\nLofwaardige Maagd, bid voor ons.\r\nMachtige Maagd, bid voor ons.\r\nGoedertieren Maagd, bid voor ons.\r\nGetrouwe Maagd, bid voor ons.\r\nSpiegel van gerechtigheid, bid voor ons.\r\nZetel van wijsheid, bid voor ons.\r\nOorzaak van onze blijdschap, bid voor ons.\r\nGeestelijk kanaal, bid voor ons.\r\nEerwaardig kanaal, bid voor ons.\r\nHeerlijk kanaal van godsvrucht, bid voor ons.\r\nMystieke roos, bid voor ons.\r\nToren van David, bid voor ons.\r\nIvoren toren, bid voor ons.\r\nGouden huis, bid voor ons.\r\nArk van het verbond, bid voor ons.\r\nDeur van de hemel, bid voor ons.\r\nMorgenster, bid voor ons.\r\nHeil van de zieken, bid voor ons.\r\nToevlucht van de zondaars, bid voor ons.\r\nTroosteres van de bedroefden, bid voor ons.\r\nHulp van de christenen, bid voor ons.\r\nKoningin van de engelen, bid voor ons.\r\nKoningin van de aartsvaders, bid voor ons.\r\nKoningin van de profeten, bid voor ons.\r\nKoningin van de apostelen, bid voor ons.\r\nKoningin van de martelaren, bid voor ons.\r\nKoningin van de belijders, bid voor ons.\r\nKoningin van de maagden, bid voor ons.\r\nKoningin van alle heiligen, bid voor ons.\r\nKoningin zonder erfsmet ontvangen, bid voor ons.\r\nKoningin in de hemel opgenomen, bid voor ons.\r\nKoningin van de heilige rozenkrans, bid voor ons.\r\nKoningin van de vrede, bid voor ons.\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nspaar ons, Heer.\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nverhoor ons, Heer.\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nontferm U over ons.', 10),
(2, 'aansluitende_gebeden', 'Aansluitende gebeden', 'fixed', NULL, NULL, NULL, 'Van de Advent tot Kerstmis:\r\nDe Engel des Heren heeft aan Maria geboodschapt;\r\nEn zij heeft ontvangen van de Heilige Geest.\r\nHoor ons gebed: God, Gij hebt gewild dat uw Woord bij de boodschap\r\nvan de engel het vlees aannam in de schoot van de heilige maagd Maria.\r\nWij bidden U: laat allen die geloven dat zij werkelijk de Moeder van\r\nGod is steun vinden in haar voorspraak bij U. Door Christus, onze Heer.\r\nAmen.\r\n\r\nVan Kerstmis tot Lichtmis:\r\nNa het baren, o Maagd, zijt Gij ongeschonden gebleven;\r\nMoeder van God, wees onze voorspraak.\r\nHoor ons gebed: God, door het moederschap van de heilige maagd\r\nMaria hebt Gij de rijkdom van de verlossing aan de mensen\r\ngeschonken. Wij bidden U: laat ons de voorspraak ondervinden van\r\nhaar door wie wij de Gever van het leven mochten ontvangen: Jezus\r\nChristus, uw Zoon, en onze Heer. Amen.\r\n\r\nVan Lichtmis tot Pasen:\r\nBid voor ons, heilige Moeder van God;\r\nOpdat wij de beloften van Christus waardig worden.\r\nHoor ons gebed: Heer onze God, neem ons leven in bescherming en\r\nwees te allen tijde ons behoud. Help ons op voorspraak van de heilige\r\nMaria, altijd maagd, in de noden van dit ogenblik en laat ons eens\r\nervaren wat eeuwige vreugde is. Door Christus, onze Heer. Amen.\r\n\r\nVan de Paastijd tot Pinksteren:\r\nVerheug en verblijd U, Maagd Maria, alleluia!\r\nWant de Heer is waarlijk verrezen, alleluia!\r\nHoor ons gebed: God, door de verrijzenis van uw Zoon Jezus Christus,\r\nonze Heer, hebt Gij vreugde geschonken aan de wereld. Wij bidden U:\r\nlaat ons door zijn moeder, de maagd Maria, eenmaal komen tot de\r\nvreugde van het eeuwig leven. Door Christus, onze Heer. Amen.\r\n\r\nVan Pinksteren tot de Advent:\r\nBid voor ons, heilige Moeder van God;\r\nOpdat wij de beloften van Christus waardig worden.\r\nHoor ons gebed: Heer onze God, neem ons leven in bescherming en\r\nwees te allen tijde ons behoud. Help ons op voorspraak van de heilige\r\nMaria, altijd maagd, in de noden van dit ogenblik en laat ons eens\r\nervaren wat eeuwige vreugde is. Door Christus, onze Heer. Amen.', 20);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `none_gebed`
--

DROP TABLE IF EXISTS `none_gebed`;
CREATE TABLE `none_gebed` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `none_gebed`
--

INSERT INTO `none_gebed` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'psalm_38', 'Maandag – Psalm 38', 'weekday', 0, NULL, NULL, 'Wees niet vertoornd, HEER, straf mij niet,\r\nbedwing uw woede, sla mij niet.\r\nDiep zijn uw pijlen in mij gedrongen,\r\nzwaar is uw hand op mij neergedaald.\r\n\r\nDoor uw toorn is niets aan mijn lichaam nog gaaf,\r\ndoor mijn zonden is niets van mijn gebeente nog heel.\r\nMijn schuld steekt hoog boven mij uit,\r\nals een zware last, te zwaar om te dragen.\r\n\r\nMijn wonden zweren en stinken\r\nvanwege mijn lichtzinnig leven.\r\nIk loop gebogen, diep gebukt,\r\nik ga in het zwart gehuld, dag in dag uit.\r\n\r\nIn mijn lendenen woedt de koorts,\r\nniets aan mijn lichaam is nog gaaf,\r\nik ben uitgeput, gebroken,\r\nmet bonzend hart schreeuw ik het uit.\r\n\r\nHeer, al mijn verlangens zijn u bekend,\r\nmijn zuchten is u niet verborgen,\r\nmijn hart gaat tekeer, mijn kracht ebt weg,\r\nmijn ogen verliezen hun glans.\r\n\r\nMijn liefste vrienden ontlopen mijn leed,\r\nwie mij na staan, houden zich ver van mij.\r\nMijn belagers lokken mij in de val, wie mijn ongeluk willen, spreken\r\ndreigende taal, dag in dag uit verspreiden ze leugens.\r\n\r\nMaar ik houd mij doof en wil niet horen,\r\nik doe als een stomme mijn mond niet open,\r\nik ben als iemand die niet kan horen,\r\ngeen verweer komt uit mijn mond.\r\n\r\nWant op u, HEER, hoop ik,\r\nvan u komt antwoord, mijn Heer en mijn God.\r\nIk denk: Laten ze niet om mij lachen,\r\nniet triomferen nu mijn voet wankelt.\r\n\r\nWant ik ben de ondergang nabij\r\nen altijd vergezelt mij de pijn.\r\nIk wil u mijn schuld belijden,\r\ndoor mijn zonden word ik gekweld.\r\n\r\nMaar mijn vijanden leven, zij zijn sterk,\r\nzij zijn met velen en blind is hun haat.\r\nZe vergelden goed met kwaad\r\nen vallen mij aan, al zoek ik het goede.\r\n\r\nVerlaat mij niet, HEER,\r\nmijn God, blijf niet ver van mij.\r\nHaast u mij te helpen,\r\nHeer, u bent mijn redding.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(2, 'psalm_51', 'Dinsdag – Psalm 51', 'weekday', 1, NULL, NULL, 'Wees mij genadig, God, in uw trouw,\r\nu bent vol erbarmen, doe mijn daden teniet,\r\nwas mij schoon van alle schuld,\r\nreinig mij van mijn zonden.\r\n\r\nIk ken mijn wandaden,\r\nik ben mij steeds van mijn zonden bewust,\r\ntegen u, tegen u alleen heb ik gezondigd,\r\nik heb gedaan wat slecht is in uw ogen.\r\n\r\nLaat uw uitspraak rechtvaardig zijn\r\nen uw oordeel zuiver.\r\nIk was al schuldig toen ik werd geboren,\r\nal zondig toen mijn moeder mij ontving,\r\nmaar u wilt dat waarheid mij vervult,\r\nu leert mij wijsheid, diep in mijn hart.\r\n\r\nNeem met majoraan mijn zonden weg en ik word rein,\r\nwas mij en ik word witter dan sneeuw.\r\nLaat mij vreugde en blijdschap horen:\r\nu hebt mij gebroken, laat mij ook juichen.\r\n\r\nSluit uw ogen voor mijn zonden\r\nen doe heel mijn schuld teniet.\r\nSchep, o God, een zuiver hart in mij,\r\nvernieuw mijn geest, maak mij standvastig,\r\nverban mij niet uit uw nabijheid,\r\nneem uw heilige geest niet van mij weg.\r\n\r\nRed mij, geef mij de vreugde van vroeger,\r\nde kracht van een sterke geest.\r\nDan wil ik verdwaalden uw wegen leren,\r\nen zullen zondaars terugkeren tot u.\r\n\r\nU bent de God die mij redt,\r\nbevrijd mij, God, van de dreigende dood,\r\nen ik zal juichen om uw gerechtigheid.\r\nOntsluit mijn lippen, Heer,\r\nen mijn mond zal uw lof verkondigen.\r\n\r\nU wilt van mij geen offerdieren,\r\nin brandoffers schept u geen behagen.\r\nHet offer voor God is een gebroken geest;\r\neen gebroken en verbrijzeld hart\r\nzult u, God, niet verachten.\r\n\r\nWees Sion welgezind en schenk het voorspoed,\r\nbouw de muren van Jeruzalem weer op.\r\nDan zult u de juiste offers aanvaarden,\r\noffers in hun geheel verbrand,\r\ndan legt men stieren op uw altaar.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(3, 'psalm_56', 'Woensdag – Psalm 56', 'weekday', 2, NULL, NULL, 'Wees mij genadig, God, want ze bedreigen mij,\r\nde hele dag bestoken en bestrijden ze mij.\r\nMijn tegenstanders bedreigen mij, heel de dag,\r\nen bestrijden mij vanuit hun hoge vesting.\r\n\r\nIn mijn bangste uur vertrouw ik op u.\r\nOp God, wiens woord ik prijs,\r\nop God vertrouw ik, angst ken ik niet,\r\nwat kan een sterveling mij aandoen?\r\n\r\nHun woorden krenken mij de hele dag,\r\ntegen mij zijn hun boze plannen gericht.\r\nZe wachten hun kans af\r\nen bespieden mijn gangen,\r\nloerend op mijn leven.\r\nGaan zij hun straf ontlopen?\r\nToon uw toorn, God, en sla dat volk neer!\r\n\r\nMijn omzwervingen hebt u opgetekend,\r\nvang mijn tranen op in uw kruik.\r\nStaat het niet alles in uw boek?\r\nIn het uur dat ik u aanroep wijken mijn vijanden,\r\nwant dit weet ik: God staat mij terzijde.\r\n\r\nOp God, wiens woord ik prijs,\r\nop de HEER, wiens woord ik prijs,\r\nop God vertrouw ik, angst ken ik niet,\r\nwat kan een mens mij aandoen?\r\n\r\nAan u, God, heb ik geloften gedaan,\r\nmet dankoffers wil ik u betalen,\r\nu hebt mijn leven aan de dood ontrukt,\r\nmijn voet voor struikelen behoed.\r\nNu kan ik wandelen onder Gods hoede\r\nin het licht van het leven.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(4, 'psalm_63', 'Donderdag – Psalm 63', 'weekday', 3, NULL, NULL, 'God, u bent mijn God, u zoek ik,\r\nnaar u smacht mijn ziel,\r\nnaar u hunkert mijn lichaam\r\nin een dor en dorstig land, zonder water.\r\n\r\nIn het heiligdom heb ik u gezien,\r\nuw macht en majesteit aanschouwd.\r\nUw liefde is meer dan het leven,\r\nmijn lippen zingen uw lof.\r\n\r\nU wil ik prijzen, mijn leven lang,\r\nroepend uw naam, de handen geheven.\r\nDan wordt mijn ziel verzadigd met uw overvloed,\r\njubel ligt op mijn lippen, mijn mond zal u loven.\r\n\r\nLiggend op mijn bed denk ik aan u,\r\nwakend in de nacht prevel ik uw naam.\r\nU bent altijd mijn hulp geweest,\r\nik juichte in de schaduw van uw vleugels.\r\n\r\nIk ben aan u gehecht, met heel mijn ziel,\r\nuw rechterhand houdt mij vast.\r\nLaat verzinken in de diepten der aarde\r\nwie mij naar het leven staan,\r\nlaat ten prooi vallen aan de jakhalzen\r\nwie mij uitleveren aan het zwaard.\r\n\r\nMaar ik zal mij verheugen in God,\r\nwie Hem trouw zweert, prijst zich gelukkig –\r\nleugenaars wordt de mond gesnoerd.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(5, 'psalm_121', 'Vrijdag – Psalm 121', 'weekday', 4, NULL, NULL, 'Ik sla mijn ogen op naar de bergen,\r\nvan waar komt mijn hulp?\r\nMijn hulp komt van de HEER\r\ndie hemel en aarde gemaakt heeft.\r\n\r\nHij zal je voet niet laten wankelen,\r\nhij zal niet sluimeren, je wachter.\r\nNee, hij sluimert niet, hij slaapt niet,\r\nde wachter van Israël.\r\n\r\nDe HEER is je wachter,\r\nde HEER is de schaduw\r\naan je rechterhand:\r\noverdag kan de zon je niet steken,\r\nbij nacht de maan je niet schaden.\r\n\r\nDe HEER behoedt je voor alle kwaad,\r\nhij waakt over je leven,\r\nde HEER houdt de wacht\r\nover je gaan en je komen\r\nvan nu tot in eeuwigheid.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(6, 'psalm_139', 'Zaterdag – Psalm 139', 'weekday', 5, NULL, NULL, 'HEER, u kent mij, u doorgrondt mij,\r\nu weet het als ik zit of sta,\r\nu doorziet van verre mijn gedachten.\r\nGa ik op weg of rust ik uit, u merkt het op,\r\nmet al mijn wegen bent u vertrouwd.\r\n\r\nGeen woord ligt op mijn tong,\r\nof u, HEER, kent het ten volle.\r\nU omsluit mij, van achter en van voren,\r\nu legt uw hand op mij.\r\n\r\nWonderlijk zoals u mij kent,\r\nhet gaat mijn begrip te boven.\r\nHoe zou ik aan uw aandacht ontsnappen,\r\nhoe aan uw blikken ontkomen?\r\n\r\nKlom ik op naar de hemel – u tref ik daar aan,\r\nlag ik neer in het dodenrijk – u bent daar.\r\nAl verhief ik mij op de vleugels van de dageraad,\r\nal ging ik wonen voorbij de verste zee,\r\nook daar zou uw hand mij leiden,\r\nzou uw rechterhand mij vasthouden.\r\n\r\nAl zei ik: \'Laat het duister mij opslokken,\r\nhet licht om mij heen veranderen in nacht,\'\r\nook dan zou het duister voor u niet donker zijn –\r\nde nacht zou oplichten als de dag,\r\nhet duister helder zijn als het licht.\r\n\r\nU was het die mijn nieren vormde,\r\ndie mij weefde in de buik van mijn moeder.\r\nIk loof u voor het ontzaglijke wonder van mijn bestaan,\r\nwonderbaarlijk is wat u gemaakt hebt.\r\nIk weet het, tot in het diepst van mijn ziel.\r\n\r\nToen ik in het verborgene gemaakt werd,\r\nkunstig geweven in de schoot van de aarde,\r\nwas mijn wezen voor u geen geheim.\r\nUw ogen zagen mijn vormeloos begin,\r\nalles werd in uw boekrol opgetekend,\r\naan de dagen van mijn bestaan ontbrak er niet één.\r\n\r\nHoe rijk zijn uw gedachten, God,\r\nhoe eindeloos in aantal,\r\nontelbaar veel, meer dan er zandkorrels zijn.\r\nOntwaak ik, dan nog ben ik bij u.\r\n\r\nGod, breng de zondaars om,\r\n– weg uit mijn ogen, jullie die bloed vergieten –\r\nze spreken kwaadaardig over u,\r\nuw vijanden misbruiken uw naam.\r\nZou ik niet haten wie u haten, HEER,\r\nniet verachten wie tegen u opstaan?\r\nIk haat hen, zo fel als ik haten kan,\r\nze zijn mijn vijand geworden.\r\n\r\nDoorgrond mij, God, en ken mijn hart,\r\npeil mij, weet wat mij kwelt,\r\nzie of ik geen verkeerde weg ga,\r\nen leid mij over de weg die eeuwig is.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10),
(7, 'psalm_142', 'Zondag – Psalm 142', 'weekday', 6, NULL, NULL, 'Luid roep ik tot de HEER,\r\nluid smeek ik de HEER om hulp,\r\nbij hem stort ik mijn hart uit,\r\nbij hem klaag ik mijn nood.\r\n\r\nIk ben ten einde raad, u kent de weg die ik moet volgen,\r\nu weet dat op mijn pad een strik verborgen ligt.\r\n\r\nIk kijk terzijde en zie\r\nniemand die om mij geeft,\r\nnergens een toevlucht voor mij,\r\nniemand die hecht aan mijn leven.\r\n\r\nIk roep tot u, HEER:\r\n\'U bent mijn schuilplaats,\r\nal wat ik heb in het land van de levenden.\'\r\nHoor mijn noodkreet,\r\nik ben uitgeput en moe,\r\nverlos mij van mijn vervolgers,\r\nzij zijn sterker dan ik.\r\n\r\nLeid mij uit de beklemming,\r\ndat ik uw naam mag loven\r\nin de kring van de rechtvaardigen:\r\nu hebt naar mij omgezien.\r\n\r\nWoord van de Heer.\r\nWij danken God.', 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `noveen`
--

DROP TABLE IF EXISTS `noveen`;
CREATE TABLE `noveen` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `noveen`
--

INSERT INTO `noveen` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'noveen_kevin_dag-1_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 16, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(2, 'noveen_kevin_dag-1_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Overweging)', 'date', NULL, 2, 16, 'Nog vóór zijn geboorte werd reeds over Kevin gesproken. Een engel verscheen aan zijn moeder\r\nen droeg haar op hem de naam Kevin te geven—een naam die betekent: “welbevallig vanaf\r\ngeboorte.” Zo werd hij vanaf het eerste begin getekend door een roeping die niet uit mensen\r\nvoortkwam, maar uit God zelf. Nog voordat hij het licht zag, was hij reeds gekend en gewild door\r\nde Heer.\r\n\r\nDezelfde engel kondigde aan dat hij een geestelijke vader zou worden voor velen: een herder van\r\nzielen, een leidsman in stilte en eenvoud. Wat in het verborgene begon, droeg reeds de belofte\r\nvan overvloedige vrucht. Niet door eigen verdienste, noch door wereldse grootheid, maar door\r\nGods vrije verkiezing werd zijn leven gevormd en geleid.\r\n\r\nZo toont zijn begin ons een stille waarheid: dat God werkt waar mensen het nog niet zien, en dat\r\nHij reeds voorbereidt wat Hij later zal openbaren. Wat klein en verborgen lijkt, kan door Zijn\r\ngenade uitgroeien tot een bron van zegen voor velen. Wie zich aan Hem toevertrouwt, wordt door\r\nHem gevormd—vaak in stilte, maar nooit zonder doel.', 20),
(3, 'noveen_kevin_dag-1_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Gebed)', 'date', NULL, 2, 16, 'Heilige Kevin,\r\ndie reeds vóór uw geboorte door God werd geroepen\r\nen door Zijn engel werd toevertrouwd aan een heilige bestemming,\r\nbid voor allen die naar u genoemd zijn,\r\nen voor allen die nog zoeken naar hun roeping.\r\n\r\nVerkrijg voor mij de genade\r\nom te vertrouwen op Gods verborgen leiding,\r\nook wanneer Zijn wil mij nog niet duidelijk is.\r\nLeer mij te aanvaarden dat Hij werkt in stilte,\r\nen dat wat gering lijkt in Zijn hand groot kan worden.\r\n\r\nLaat ook mij delen in de zorg en bescherming van Gods heilige engelen,\r\nopdat ik, geleid en bewaard,\r\ntrouw mag blijven aan de weg die Hij voor mij heeft bereid.\r\n\r\nAmen.', 30),
(4, 'noveen_kevin_dag-1_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 16, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(5, 'noveen_kevin_dag-2_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 17, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(6, 'noveen_kevin_dag-2_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 2 (Overweging)', 'date', NULL, 2, 17, 'Als kind werd Kevin gevoed door wat het verstand te boven gaat. Een witte koe kwam hem trouw\r\nopzoeken en voorzag hem van melk, alsof de schepping zelf gehoor gaf aan Gods wil. Waar\r\nmenselijke zorg ontbrak of tekortschiet, nam de Heer zelf het initiatief om te geven wat nodig\r\nwas.\r\n\r\nZijn jeugd werd zo gedragen door een voorzienigheid die stil, eenvoudig en onwankelbaar\r\naanwezig was. Niet met groot vertoon, maar in een dagelijkse, trouwe gave die leven schonk en\r\nbewaarde. God is niet afwezig wanneer middelen ontbreken, maar juist dan komt Hij nabij.\r\n\r\nWat nodig is, wordt gegeven—niet altijd op de wijze die wij verwachten, en niet altijd zichtbaar\r\nvoor de ogen van de wereld, maar wel werkelijk en voldoende. Wie aan Hem is toevertrouwd,\r\nwordt niet vergeten. Zelfs in kwetsbaarheid waakt Hij, en uit Zijn hand komt alles wat tot leven\r\ndient.', 20),
(7, 'noveen_kevin_dag-2_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 2 (Gebed)', 'date', NULL, 2, 17, 'Heilige Kevin,\r\ndie in uw jeugd werd gevoed door Gods wonderbare voorzienigheid,\r\nen mocht ervaren dat Hij zelf zorgt voor wie aan Hem toebehoren,\r\nbid voor mij en voor allen die afhankelijk zijn van Zijn zorg.\r\n\r\nIk dank God voor alle bescherming en liefde\r\ndie mij in mijn jeugd is geschonken,\r\nvoor alles wat zichtbaar was en voor wat verborgen bleef.\r\n\r\nBid voor alle kinderen,\r\nvoor hen die veilig opgroeien en voor hen die tekortkomen,\r\ndat zij geliefd en gevoed mogen worden,\r\nen dat Gods voorzienigheid hen nooit verlaat.\r\n\r\nVerkrijg voor mij een vertrouwend hart,\r\ndat niet wankelt wanneer middelen ontbreken,\r\nmaar rust vindt in de zekerheid\r\ndat de Heer geeft wat nodig is, op Zijn tijd en op Zijn wijze.\r\n\r\nAmen.', 30),
(8, 'noveen_kevin_dag-2_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 17, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(9, 'noveen_kevin_dag-3_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 18, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(10, 'noveen_kevin_dag-3_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 3 (Overweging)', 'date', NULL, 2, 18, 'Als jongen gaf Kevin vier schapen weg aan de armen. Wat hij bezat, hield hij niet voor zichzelf,\r\nmaar liet hij los uit liefde. In menselijke ogen was het een verlies, een vermindering van wat hij\r\nhad. En toch bleek later dat er niets ontbrak.\r\n\r\nMaar toen de kudde later werd geteld, bleek dat er niet één ontbrak. Wat hij had weggegeven,\r\nwerd hem niet aangerekend als gemis. Omdat God zelf aanvulde wat uit liefde was losgelaten.\r\n\r\nDat wat uit liefde wordt gegeven, gaat niet verloren. Wat wij prijsgeven omwille van Hem en\r\nomwille van de naaste, blijft in Zijn hand bewaard en wordt, vaak op verborgen wijze, hersteld of\r\nvermeerderd.\r\n\r\nZo leert St. Kevin ons dat Gods maat anders is dan die van mensen. Waar wij rekenen en\r\nvasthouden, nodigt Hij uit tot vertrouwen en tot vrijgevigheid. In het rijk van God betekent geven\r\ngeen verarming, maar een weg naar overvloed—niet altijd zichtbaar, maar wel werkelijk en\r\nwaarachtig.\r\n\r\nWie geeft met een oprecht hart, leert leven vanuit deze goddelijke logica: dat liefde niet\r\nvermindert door te delen, maar juist groeit. Wat wordt weggegeven uit liefde, keert terug als\r\ngenade.', 20),
(11, 'noveen_kevin_dag-3_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 3 (Gebed)', 'date', NULL, 2, 18, 'Heilige Kevin,\r\ndie vrij gaf aan wie gebrek hadden,\r\nen mocht ervaren dat God zelf aanvult wat uit liefde wordt weggegeven,\r\nbid voor mij en voor allen die vrezen tekort te komen.\r\n\r\nLeer mij de armen niet voorbij te gaan,\r\nmaar hen te zien met een open en bewogen hart.\r\n\r\nVerkrijg voor mij de genade\r\nom te geven zonder angst en zonder berekening,\r\nin het vertrouwen dat God zorgt voor wat ontbreekt.\r\n\r\nBid voor allen die in nood verkeren,\r\ndat zij hulp en barmhartigheid mogen vinden,\r\nen dat hun gebrek wordt verzacht\r\ndoor de liefde van anderen.\r\n\r\nEn leer mij te leven volgens Gods maat,\r\nopdat ik mag ontdekken\r\ndat wat uit liefde wordt gegeven\r\nniet verloren gaat,\r\nmaar in Gods hand wordt bewaard en gezegend.\r\n\r\nAmen.', 30),
(12, 'noveen_kevin_dag-3_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 18, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(13, 'noveen_kevin_dag-4_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 19, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(14, 'noveen_kevin_dag-4_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 4 (Overweging)', 'date', NULL, 2, 19, 'Tijdens zijn vorming in het klooster kreeg Kevin de opdracht om vuur te halen om de kaarsen voor\r\nde Mis aan te steken. Hij had nagelaten dit op tijd voor te bereiden en moest daarom haastig\r\nnaar het vuur terugkeren. Toen hij vroeg hoe hij het moest dragen, kreeg hij het onverwachte\r\nantwoord: “In uw boezem.”\r\n\r\nZonder tegen te spreken gehoorzaamde hij. Hij nam het vuur in zijn kleding en droeg het bij zich.\r\nHet vuur bleef wat het was—brandend en gevaarlijk—en toch werd noch zijn kleding, noch zijn\r\nlichaam aangeraakt. Wat onmogelijk leek, werd werkelijkheid door zijn gehoorzaamheid.\r\n\r\nGehoorzaamheid neemt het gevaar niet uit het vuur weg, maar zij plaatst de mens onder Gods\r\nbescherming. Kevin handelde niet uit eigen initiatief, maar onder gezag. En juist daarin werd hij\r\nbewaard.\r\n\r\nZo leert zijn leven dat zelfs onze tekortkomingen—zoals zijn vergetelheid—door God kunnen\r\nworden opgenomen in een weg van genade. Waar de mens zich onderwerpt aan Gods wil, zelfs\r\nwanneer die vreemd of zwaar lijkt, daar kan God werken op een wijze die alle verwachting te\r\nboven gaat.\r\n\r\nNiet elke beproeving wordt weggenomen, maar wie gehoorzaamt, wordt niet verlaten. In\r\novergave ligt een kracht die niet verbrandt, maar bewaart.', 20),
(15, 'noveen_kevin_dag-4_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 4 (Gebed)', 'date', NULL, 2, 19, 'Heilige Kevin,\r\ndie in eenvoud gehoorzaamde,\r\nzelfs toen u werd gevraagd het onmogelijke te dragen,\r\nen zo hebt ervaren dat God beschermt wie zich aan Hem toevertrouwt,\r\nbid voor mij en voor allen die worstelen met gehoorzaamheid.\r\n\r\nLeer mij te luisteren en te volgen,\r\nook wanneer Gods wil mij vreemd voorkomt\r\nof mij meer vraagt dan ik begrijp.\r\n\r\nBewaar mij voor achteloosheid en nalatigheid,\r\nmaar neem ook mijn fouten op in Gods genade,\r\nzoals Hij ook u niet verwierp, maar vormde.\r\n\r\nBescherm mij voor onnodig lijden,\r\nen geef dat ik beproevingen niet zelf zoek,\r\nmaar ze draag in vertrouwen wanneer zij mij worden gegeven.\r\n\r\nBescherm mij vooral voor het vuur van de hel,\r\nen voor alles wat mij van God wil scheiden.\r\n\r\nLaat mij, door gehoorzaamheid en genade,\r\nveilig blijven in Zijn nabijheid.\r\n\r\nAmen.', 30),
(16, 'noveen_kevin_dag-4_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 19, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(17, 'noveen_kevin_dag-5_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 20, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(18, 'noveen_kevin_dag-5_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 5 (Overweging)', 'date', NULL, 2, 20, 'Tijdens het gebed hield Kevin zijn arm uitgestrekt, zoals Christus met gespreide armen hing aan\r\nhet kruis. Zijn houding was niet slechts lichamelijk, maar een teken van overgave: een stille\r\ndeelname aan het lijden en de liefde van de Heer.\r\n\r\nTerwijl hij zo stond, kwam een zwarte vogel en nestelde zich in zijn hand. In plaats van zich terug te\r\ntrekken, bleef hij onbeweeglijk. Hij liet het gebeuren en droeg het in stilte, alsof wat hem werd\r\ntoevertrouwd niet verstoord mocht worden.\r\n\r\nDe tijd verstreek, en met de tijd kwam ook het ongemak. Toch week hij niet. Zoals Christus Zich\r\nniet terugtrok van het kruis, zo trok Kevin zijn hand niet terug. Wat klein en kwetsbaar was, vond\r\nrust in zijn volharding.\r\n\r\nKevin was niet alleen gericht tot God, maar gevormd naar het beeld van Christus zelf. In het\r\nuitstrekken van zijn arm, in het verdragen van pijn, en in het sparen van het kleine leven,\r\nweerspiegelt hij iets van diezelfde liefde die zichzelf geeft en niets terugvraagt.\r\n\r\nWaarachtig gebed richt ons niet alleen omhoog, maar ook uitstrekt naar de ander—tot het punt\r\nwaarop wij bereid zijn te dragen wat ons wordt toevertrouwd. In die stille trouw wordt het gebed\r\ngelijkvormig aan het kruis.', 20),
(19, 'noveen_kevin_dag-5_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 5 (Gebed)', 'date', NULL, 2, 20, 'Heilige Kevin,\r\nstandvastig in gebed en zelfverloochening,\r\ndie in stilte volhardde en het kleine leven niet verstoorde,\r\nbid voor mij en voor allen die zoeken naar ware toewijding.\r\n\r\nLeer mij Christus na te volgen,\r\nniet alleen in woorden of verlangen,\r\nmaar in daden van geduld, zachtmoedigheid en trouw.\r\n\r\nGeef dat ik niet meer verlang dan er te zijn voor anderen,\r\nen dat ik bereid ben mijzelf te vergeten\r\nwanneer liefde daarom vraagt.\r\n\r\nVerkrijg voor mij een volhardend hart in het gebed,\r\ndat niet wijkt voor ongemak of verstrooiing,\r\nmaar standhoudt in Gods aanwezigheid.\r\n\r\nEn leer mij zorg te dragen voor wat mij wordt toevertrouwd,\r\nhoe klein of verborgen ook,\r\nopdat mijn leven, zoals het uwe,\r\neen stille dienst mag worden tot eer van God.\r\n\r\nAmen.', 30),
(20, 'noveen_kevin_dag-5_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 20, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(21, 'noveen_kevin_dag-6_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 21, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(22, 'noveen_kevin_dag-6_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 6 (Overweging)', 'date', NULL, 2, 21, 'Kevin zocht geen macht en geen bezit, maar leefde in eenvoud en dienstbaarheid. Toch werd hij\r\nbetrokken bij een verzoek van koning O’Toole van Glendalough, wiens oude gans verzwakt was\r\nen niet meer kon vliegen. De koning verlangde dat het dier weer jong en sterk zou worden, en riep\r\nKevin te hulp, omdat men zijn heiligheid kende.\r\n\r\nKevin stemde toe, maar stelde een voorwaarde die op het eerste gezicht eenvoudig leek: alles\r\nwaarover de gans zou vliegen, zou aan hem worden geschonken. De koning, overtuigd dat het\r\ndier nooit meer zou opstijgen, ging akkoord zonder veel aandacht voor de gevolgen.\r\n\r\nMaar toen Kevin het dier genas, gebeurde het onverwachte. De gans herwon zijn kracht, steeg op\r\nen vloog over de hele vallei van Glendalough. Wat als een klein gebaar leek, werd een wijd\r\ngebied.\r\n\r\nZo werd Kevin, niet door ambitie maar door een wonder dat hij niet zelf zocht, geplaatst in\r\nverantwoordelijkheid over een groot gebied. Wat begon als een eenvoudige handeling van\r\ngenezing, groeide uit tot de stichting van het klooster van Glendalough.\r\n\r\nGod geeft verantwoordelijkheid niet altijd aan wie daar naar zoekt, maar aan wie bereid is te\r\ndienen wanneer hij geroepen wordt.', 20),
(23, 'noveen_kevin_dag-6_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 6 (Gebed)', 'date', NULL, 2, 21, 'Heilige Kevin,\r\ndie niet zocht naar bezit of eer,\r\nmaar door Gods voorzienigheid werd geplaatst in verantwoordelijkheid,\r\nbid voor mij en voor allen die leiding dragen.\r\n\r\nLeer mij niet te leven vanuit eigen ambitie,\r\nmaar beschikbaar te zijn voor wat God mij toevertrouwt.\r\n\r\nZegen het werk dat mij gegeven wordt,\r\nook wanneer het groter blijkt te zijn dan ik zelf had voorzien.\r\n\r\nGeef mij een trouw en nederig hart,\r\ndat niet rekent op eigen voordeel,\r\nmaar vertrouwt op Gods leiding in elke stap.\r\n\r\nEn laat mijn leven, zoals het uwe,\r\nniet draaien om bezit of macht,\r\nmaar om dienstbaarheid waarin God Zijn werk kan doen.\r\n\r\nAmen.', 30),
(24, 'noveen_kevin_dag-6_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 21, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(25, 'noveen_kevin_dag-7_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 22, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(26, 'noveen_kevin_dag-7_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 7 (Overweging)', 'date', NULL, 2, 22, 'In de koude van het water verloor Kevin zijn psalmboek. Wat hem dierbaar was in zijn gebed en\r\nlectio, gleed weg in de stroom en leek voorgoed verdwenen. Toch werd het later door een otter\r\nteruggebracht, onaangetast en behouden.\r\n\r\nZelfs het kleine dat verloren lijkt, blijkt niet buiten Gods zorg te vallen. De schepping handelt niet\r\nuit zichzelf, maar blijft binnen de orde van haar Schepper. Wat aan God is toegewijd, wordt niet\r\nzomaar prijsgegeven aan toeval of vergetelheid.\r\n\r\nIn dit eenvoudige gebeuren wordt zichtbaar dat Gods voorzienigheid verder reikt dan wat wij\r\nkunnen volgen. Niet alleen grote gebeurtenissen, maar ook kleine, verborgen dingen vallen\r\nonder Zijn zorg. Wat voor de mens weg lijkt, kan in Gods hand bewaard blijven.\r\n\r\nNiets wat in geloof wordt gedragen hoeft werkelijk verloren te zijn. Zelfs het kleinste blijft onder\r\nGods bescherming, op manieren die de mens niet voorziet, maar wel mag ontvangen als gave.', 20),
(27, 'noveen_kevin_dag-7_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 7 (Gebed)', 'date', NULL, 2, 22, 'Heilige Kevin,\r\ndie leefde onder Gods zorg tot in het kleinste en meest verborgen,\r\nvoor wie niets buiten Zijn voorzienigheid viel,\r\nbid voor mij.\r\n\r\nVerwerf voor mij een hart dat vertrouwt,\r\nook wanneer ik verlies ervaar of onzeker ben,\r\nen dat niet verhardt door angst of zorg.\r\n\r\nZegen wat mij is toevertrouwd,\r\nen leg Gods bescherming erover,\r\nopdat het niet verloren gaat buiten Zijn wil.\r\n\r\nLeer mij los te laten zonder wanhoop,\r\nen te ontvangen zonder trots,\r\nwetend dat alles uiteindelijk in Gods hand blijft.\r\n\r\nEn bewaar mij in vrede,\r\nook wanneer ik niet begrijp wat ik kwijt ben,\r\nopdat ik niet leef uit bezit,\r\nmaar uit vertrouwen op de Heer die alles draagt.\r\n\r\nAmen.', 30),
(28, 'noveen_kevin_dag-7_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 22, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(29, 'noveen_kevin_dag-8_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 23, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(30, 'noveen_kevin_dag-8_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 8 (Overweging)', 'date', NULL, 2, 23, 'Een jonge man, zwaar getroffen door epilepsie, ontving in een visioen een belofte van genezing:\r\nals hij een appel zou eten, zou hij gezond worden. Maar in zijn omgeving was geen enkele\r\nappelboom te vinden, en zijn nood bleef zonder uitweg.\r\n\r\nToen Kevin hiervan hoorde, vertrouwde hij niet op wat onmogelijk leek, maar op wat in dat\r\nvisioen was gegeven. Hij bad en richtte zijn woord tot een nabijstaande wilg, en beval dat deze\r\nvrucht zou dragen voor de zieke man.\r\n\r\nEn zo gebeurde het: aan de wilgentakken verschenen twintig gele appels, waar voordien geen\r\nvrucht te zien was. De jongen at ervan en genas.\r\n\r\nDeze wilg kreeg vruchten die haar van nature niet toebehoorden. Niet vanuit zichzelf, maar omdat\r\nGod het zo beschikte, kreeg zij vruchten die niet bij haar aard leken te horen.\r\n\r\nZo wordt zichtbaar dat een boom wordt gekend aan zijn vruchten, maar dat de natuur altijd aan\r\nGods wil moet gehoorzamen.', 20),
(31, 'noveen_kevin_dag-8_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 8 (Gebed)', 'date', NULL, 2, 23, 'Heilige Kevin,\r\ndie zag hoe God gaf wat niet van nature aanwezig was,\r\nen hoe zelfs een boom vrucht droeg die zij uit zichzelf niet kon dragen,\r\nbid voor mij.\r\n\r\nLeer mij open te staan voor wat God in mij wil laten groeien,\r\nook wanneer het niet past bij wat ik van mezelf verwacht.\r\n\r\nBid dat mijn leven geen dorre tak blijft,\r\nmaar vrucht mag dragen naar Gods wil,\r\nniet uit eigen kracht, maar uit Zijn genade.\r\n\r\nEn wanneer ik klein of beperkt ben,\r\ngeef dat ik toch beschikbaar blijf voor Zijn werk,\r\nopdat ook in mij zichtbaar wordt\r\ndat Hij geeft wat nodig is om vrucht te dragen.\r\n\r\nAmen.', 30),
(32, 'noveen_kevin_dag-8_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 23, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40),
(33, 'noveen_kevin_dag-9_1', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Openingsgebed)', 'date', NULL, 2, 24, 'Heer onze God,\r\nGij hebt de heilige Kevin geroepen\r\nom U te dienen in stilte, eenvoud en gebed.\r\nIn afzondering werd hij een licht voor velen,\r\nen in gehoorzaamheid leerde hij rusten in Uw voorzienigheid.\r\n\r\nDoor deze noveen vragen wij U:\r\nvorm ook ons hart naar Uw wil.\r\nLeer ons vertrouwen wanneer wij tekortkomen,\r\nvolharden wanneer wij beproefd worden,\r\nen vrucht dragen door Uw genade alleen.\r\n\r\nMoge het voorbeeld van de heilige Kevin\r\nons dichter brengen bij Christus,\r\nopdat ook wij leren leven in vrede, nederigheid en trouw.\r\n\r\nHeilige Kevin van Glendalough, bidt voor ons!\r\nAmen', 10),
(34, 'noveen_kevin_dag-9_2', 'Noveen tot Heilige Kevin van Glendalough – Dag 9 (Overweging)', 'date', NULL, 2, 24, 'In de laatste dagen van zijn leven verbleef Kevin in zijn kluizenarij bij het bovenste meer. Hij vroeg\r\ndat niemand hem voedsel bracht of zijn stilte verbrak. Hij leefde daar in eenvoud, samen met de\r\nwilde dieren, zonder verstoring.\r\n\r\nOp een dag werd een wild zwijn opgejaagd door jagers en honden. In zijn vlucht zocht het dier\r\ntoevlucht in de bij Kevin, diep in het bos. Toen de honden hem bereikten, bleven zij staan en\r\nvervolgden hun prooi niet langer. Ook de jagers hielden halt.\r\n\r\nTerwijl zij aarzelden, streek een zwerm kraaien neer in de boom boven de biddende heilige. In dat\r\nmoment van stilte werd geen hand meer geheven. Wat begonnen was als jacht, eindigde in rust.\r\n\r\nMannen en dieren bleven staan, en gingen ieder hun weg zonder geweld. Kevin bleef in zijn stilte,\r\ntot het einde van zijn dagen in diezelfde eenzaamheid, gedragen door God, tot hij op hoge leeftijd\r\nvan honderdtwintig jaar zijn ziel teruggaf aan de Heer.', 20),
(35, 'noveen_kevin_dag-9_3', 'Noveen tot Heilige Kevin van Glendalough – Dag 9 (Gebed)', 'date', NULL, 2, 24, 'Heilige Kevin,\r\ndie in vrede hebt geleefd en in vrede tot rust bent gekomen,\r\nbid voor ons die nog onderweg zijn.\r\n\r\nBescherm ons leven tegen angst en verwarring,\r\nen leer ons wonen in Gods nabijheid\r\nzodat onrust geen plaats in ons hart vindt.\r\n\r\nEn wees ons nabij in het uur van onze dood,\r\nwanneer alles loslaat wat wij vasthouden,\r\nopdat wij niet verdwalen in vrees,\r\nmaar worden ontvangen in de vrede van God.\r\n\r\nAmen.', 30),
(36, 'noveen_kevin_dag-9_4', 'Noveen tot Heilige Kevin van Glendalough – Dag 1 (Slotgebed)', 'date', NULL, 2, 24, 'Heer onze God,\r\nwij danken U voor het leven van de heilige Kevin,\r\nvoor zijn stilte, zijn gehoorzaamheid\r\nen het vertrouwen waarmee hij zich geheel aan U toevertrouwde.\r\n\r\nBewaar ook ons in Uw genade,\r\nwanneer wij tekortkomen, zoeken of vrezen.\r\nLaat wat wij in deze dagen hebben overwogen\r\nniet verloren gaan,\r\nmaar wortel schieten in ons hart\r\nen vrucht dragen naar Uw wil.\r\n\r\nGeef dat wij, naar het voorbeeld van de heilige Kevin,\r\nleren volharden in gebed,\r\nvrede bewaren in ons hart\r\nen rust vinden in Uw voorzienigheid.\r\n\r\nEn wanneer ons aardse leven ten einde loopt,\r\nlaat ons dan niet van U verwijderd raken,\r\nmaar breng ons veilig thuis in Uw eeuwige vrede.\r\n\r\nHeilige Kevin, bid voor ons.\r\nAmen.', 40);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sext`
--

DROP TABLE IF EXISTS `sext`;
CREATE TABLE `sext` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `sext`
--

INSERT INTO `sext` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'onzevader', 'Onze Vader', 'fixed', NULL, NULL, NULL, 'Onze Vader, die in de hemelen zijt,\r\nUw Naam worde geheiligd,\r\nUw Rijk kome,\r\nUw wil geschiede op aarde zoals in de hemel,\r\nGeef ons heden ons dagelijks brood,\r\nEn vergeef ons onze schulden,\r\nzoals ook wij vergeven onze schuldenaren;\r\nEn leid ons niet in beproeving, maar verlos ons van het kwade.\r\nWant van U is het Koninkrijk, de kracht en de heerlijkheid\r\ntot in der eeuwigheid.\r\nAmen.', 10),
(2, 'doxologie', 'Doxologie', 'fixed', NULL, NULL, NULL, 'Gezegend zijt gij God, in alle eeuwen.', 20);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `terts`
--

DROP TABLE IF EXISTS `terts`;
CREATE TABLE `terts` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `terts`
--

INSERT INTO `terts` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'weesgegroet', 'Wees Gegroet', 'fixed', NULL, NULL, NULL, 'Wees gegroet, Maria, vol van genade, de Heer zij met u.\r\nGij zijt de gezegende onder de vrouwen en gezegend is onze lieve Heer\r\nJezus Christus, de vrucht van uw schoot.\r\nHeilige Maria, Moeder van God, bid voor ons zondaars, nu en in het uur van onze dood.\r\nAmen.', 10),
(2, 'o_maria', 'O Maria', 'fixed', NULL, NULL, NULL, 'O Maria, zonder zonde ontvangen, bid voor ons die onze toevlucht tot u nemen.', 20),
(3, 'fatimagebed', 'Fatimagebed', 'fixed', NULL, NULL, NULL, 'O mijn Jezus, vergeef ons onze zonden,\r\nbehoed ons voor het vuur van de hel,\r\nbreng alle zielen naar de hemel,\r\nvooral diegenen die Uw barmhartigheid het meeste nodig hebben.\r\nAmen.', 30),
(4, 'jezusgebed', 'Jezusgebed', 'fixed', NULL, NULL, NULL, 'Heer Jezus Christus zoon van God wees mij een zondaar genadig.', 40);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `vespers`
--

DROP TABLE IF EXISTS `vespers`;
CREATE TABLE `vespers` (
  `id` int UNSIGNED NOT NULL,
  `slug` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','weekday','date') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `weekday` tinyint UNSIGNED DEFAULT NULL,
  `month` tinyint UNSIGNED DEFAULT NULL,
  `day` tinyint UNSIGNED DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` smallint UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `vespers`
--

INSERT INTO `vespers` (`id`, `slug`, `title`, `type`, `weekday`, `month`, `day`, `content`, `sort_order`) VALUES
(1, 'litanie_jeanne_darc', 'Litanie van de Heilige Jeanne d\'Arc', 'fixed', NULL, NULL, NULL, 'Heilige Jeanne d\'Arc,\r\nbid voor ons.\r\nMaagd Jeanne d\'Arc,\r\nbid voor ons.\r\nMartelaar Jeanne d\'Arc,\r\nbid voor ons.\r\n\r\nDienstmaagd van God,\r\nbid voor ons.\r\nMaagd van Frankrijk,\r\nbid voor ons.\r\nUitverkoren van de Heer,\r\nbid voor ons.\r\nLicht in de duisternis van oorlog,\r\nbid voor ons.\r\nStem van God gehoorzamend,\r\nbid voor ons.\r\nTrouw in beproeving,\r\nbid voor ons.\r\nMoedig in de strijd,\r\nbid voor ons.\r\nRechtvaardig onder onrecht,\r\nbid voor ons.\r\nKrijgster met zuiver hart,\r\nbid voor ons.\r\nBeschermster van zwakken,\r\nbid voor ons.\r\nMartelares uit liefde,\r\nbid voor ons.\r\nBrandend van geloof,\r\nbid voor ons.\r\nGetuige van Christus tot het einde,\r\nbid voor ons.\r\n\r\n\r\nZorgdraagster voor de gevangenen,\r\nbid voor ons.\r\nZorgdraagster voor de soldaten,\r\nbid voor ons.\r\nZorgdraagster voor kinderen,\r\nbid voor ons.\r\nZorgdraagster voor de verworpenen,\r\nbid voor ons.\r\nZorgdraagster voor verwarden en verlorenen,\r\nbid voor ons.\r\nTroost voor wie onschuldig lijden,\r\nbid voor ons.\r\nHoop voor wie gevangen zijn,\r\nbid voor ons.\r\nVriendin van de eenzamen,\r\nbid voor ons.\r\nAanhoorster van de verdrukten,\r\nbid voor ons.\r\nZwijgende in de foltering,\r\nbid voor ons.\r\nVast in geloof en vertrouwen,\r\nbid voor ons.\r\nBegeleidster van wie worstelen,\r\nbid voor ons.\r\nLijdende dienares van God,\r\nbid voor ons.\r\nOpgeofferd voor liefde en geloof,\r\nbid voor ons.\r\n\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nspaar ons, Heer.\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nverhoor ons, Heer.\r\nLam Gods, dat wegneemt de zonden der wereld,\r\nontferm U over ons.\r\n\r\nBid voor ons, heilige Jeanne d\'Arc,\r\nOpdat wij waardig worden de beloften van Christus.\r\n\r\nHeer, onze God,\r\nGij hebt de heilige Jeanne d\'Arc geroepen in een tijd van wanhoop en\r\nhaar gesterkt met trouw in de beproeving en moed in de strijd.\r\nLeer ook ons om trouw te blijven wanneer wij door gevaar bedreigd\r\nworden, moedig te zijn wanneer de weg donker is, en U te volgen met\r\neen hart dat onbevreesd is.\r\nGeef dat wij, gesterkt door haar voorspraak, uw wil volgen, uw wil\r\nomarmen, en uw wil uitdragen —\r\nzoals zij u ook gehoorzaamt heeft,\r\ntot in de eenzaamheid van gevangenschap,\r\ntot in de vlammen van de brandstapel,\r\ntot in Uw Goddelijke heerlijkheid.\r\nDoor Christus onze Heer.\r\nAmen.', 10),
(2, 'gebed_heilige_michaal', 'Gebed tot de Heilige Aartsengel Michaël', 'fixed', NULL, NULL, NULL, 'Heilige Aartsengel Michaël, verdedig ons in de strijd. Wees onze bescherming tegen de boosheid en de listen van de duivel. Wij smeken ootmoedig dat God hem Zijn macht doet gevoelen. En gij, vorst van de hemelse legerscharen, drijf Satan en de andere boze geesten, die tot verderf van de zielen over de wereld rondgaan, door de goddelijke kracht in de hel terug. Amen.', 20);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `completten`
--
ALTER TABLE `completten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `hoogfeest`
--
ALTER TABLE `hoogfeest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `lauden`
--
ALTER TABLE `lauden`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `litanie`
--
ALTER TABLE `litanie`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `metten`
--
ALTER TABLE `metten`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `none_gebed`
--
ALTER TABLE `none_gebed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `noveen`
--
ALTER TABLE `noveen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `sext`
--
ALTER TABLE `sext`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `terts`
--
ALTER TABLE `terts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- Indexen voor tabel `vespers`
--
ALTER TABLE `vespers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_type` (`type`),
  ADD KEY `idx_weekday` (`weekday`),
  ADD KEY `idx_date` (`month`,`day`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `completten`
--
ALTER TABLE `completten`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT voor een tabel `hoogfeest`
--
ALTER TABLE `hoogfeest`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `lauden`
--
ALTER TABLE `lauden`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `litanie`
--
ALTER TABLE `litanie`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `metten`
--
ALTER TABLE `metten`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `none_gebed`
--
ALTER TABLE `none_gebed`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT voor een tabel `noveen`
--
ALTER TABLE `noveen`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT voor een tabel `sext`
--
ALTER TABLE `sext`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT voor een tabel `terts`
--
ALTER TABLE `terts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `vespers`
--
ALTER TABLE `vespers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
