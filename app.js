/* ── Kevin's Missaal – date navigation & custom datepicker ───── */

const display    = document.getElementById('date-display');
const btnPrev    = document.getElementById('prev');
const btnNext    = document.getElementById('next');
const datepicker = document.getElementById('datepicker');
const dpGrid     = document.getElementById('dp-grid');
const dpMonth    = document.getElementById('dp-month');
const dpYear     = document.getElementById('dp-year');
const dpPrevM    = document.getElementById('dp-prev-month');
const dpNextM    = document.getElementById('dp-next-month');

const MONTHS_NL = [
  'januari','februari','maart','april','mei','juni',
  'juli','augustus','september','oktober','november','december'
];

// ── State ──────────────────────────────────────────────────────
let current  = today();          // selected date
let dpView   = today();          // month/year currently shown in picker
let pickerOpen = false;

function today() {
  const d = new Date();
  d.setHours(0, 0, 0, 0);
  return d;
}

function sameDay(a, b) {
  return a.getFullYear() === b.getFullYear() &&
         a.getMonth()    === b.getMonth()    &&
         a.getDate()     === b.getDate();
}

// ── Dutch date label ───────────────────────────────────────────
function formatDutch(date) {
  return date.toLocaleDateString('nl-NL', {
    weekday: 'long',
    day:     'numeric',
    month:   'long',
    year:    'numeric'
  });
}

function render() {
  display.textContent = formatDutch(current);
}

// ── Day navigation ─────────────────────────────────────────────
function shiftDay(delta) {
  current = new Date(current);
  current.setDate(current.getDate() + delta);
  render();
  if (pickerOpen) {
    dpView = new Date(current);
    buildPicker();
  }
}

btnPrev.addEventListener('click', () => { shiftDay(-1); loadPrayers(); });
btnNext.addEventListener('click', () => { shiftDay(+1); loadPrayers(); });

// ── Populate month/year selects ────────────────────────────────
function populateSelects() {
  // Months
  dpMonth.innerHTML = '';
  MONTHS_NL.forEach((name, i) => {
    const opt = document.createElement('option');
    opt.value = i;
    opt.textContent = name.charAt(0).toUpperCase() + name.slice(1);
    if (i === dpView.getMonth()) opt.selected = true;
    dpMonth.appendChild(opt);
  });

  // Years: range of 10 years back and 5 forward
  dpYear.innerHTML = '';
  const curY = dpView.getFullYear();
  for (let y = curY - 10; y <= curY + 5; y++) {
    const opt = document.createElement('option');
    opt.value = y;
    opt.textContent = y;
    if (y === curY) opt.selected = true;
    dpYear.appendChild(opt);
  }
}

// ── Build calendar grid ────────────────────────────────────────
function buildGrid() {
  dpGrid.innerHTML = '';
  const year  = dpView.getFullYear();
  const month = dpView.getMonth();

  // First day of month (adjust: Mon=0 … Sun=6)
  const firstDay = new Date(year, month, 1).getDay(); // 0=Sun
  const startOffset = (firstDay === 0) ? 6 : firstDay - 1;

  // Days in month and previous month
  const daysInMonth = new Date(year, month + 1, 0).getDate();
  const daysInPrev  = new Date(year, month, 0).getDate();

  const todayDate = today();
  const totalCells = Math.ceil((startOffset + daysInMonth) / 7) * 7;

  for (let i = 0; i < totalCells; i++) {
    const btn = document.createElement('button');
    btn.className = 'dp-day';

    let cellDate;
    if (i < startOffset) {
      // Previous month days
      const d = daysInPrev - startOffset + i + 1;
      cellDate = new Date(year, month - 1, d);
      btn.classList.add('other-month');
    } else if (i >= startOffset + daysInMonth) {
      // Next month days
      const d = i - startOffset - daysInMonth + 1;
      cellDate = new Date(year, month + 1, d);
      btn.classList.add('other-month');
    } else {
      cellDate = new Date(year, month, i - startOffset + 1);
    }

    btn.textContent = cellDate.getDate();

    if (sameDay(cellDate, todayDate))  btn.classList.add('today');
    if (sameDay(cellDate, current))    btn.classList.add('selected');

    btn.addEventListener('click', () => {
      current = new Date(cellDate);
      render();
      loadPrayers();
      closePicker();
    });

    dpGrid.appendChild(btn);
  }
}

function buildPicker() {
  populateSelects();
  buildGrid();
}

// ── Open / close ───────────────────────────────────────────────
function openPicker() {
  dpView = new Date(current);
  buildPicker();
  datepicker.hidden = false;
  pickerOpen = true;
}

function closePicker() {
  datepicker.hidden = true;
  pickerOpen = false;
}

display.addEventListener('click', (e) => {
  e.stopPropagation();
  pickerOpen ? closePicker() : openPicker();
});

// Close when clicking outside
document.addEventListener('click', (e) => {
  if (pickerOpen && !datepicker.contains(e.target)) {
    closePicker();
  }
});

// ── Month nav buttons inside picker ───────────────────────────
dpPrevM.addEventListener('click', () => {
  dpView = new Date(dpView.getFullYear(), dpView.getMonth() - 1, 1);
  buildPicker();
});

dpNextM.addEventListener('click', () => {
  dpView = new Date(dpView.getFullYear(), dpView.getMonth() + 1, 1);
  buildPicker();
});

// ── Today button ──────────────────────────────────────────────
const btnToday = document.getElementById('today');
btnToday.addEventListener('click', () => {
  current = new Date(today());
  dpView = new Date(today());
  render();
  loadPrayers();
  if (pickerOpen) {
    buildPicker();
  }
});
// ── Month / year selects ───────────────────────────────────────
dpMonth.addEventListener('change', () => {
  dpView = new Date(dpView.getFullYear(), parseInt(dpMonth.value), 1);
  buildGrid();
});

dpYear.addEventListener('change', () => {
  dpView = new Date(parseInt(dpYear.value), dpView.getMonth(), 1);
  populateSelects(); // refresh year list centered on new year
  buildGrid();
});

// ── Init ───────────────────────────────────────────────────────
render();
loadPrayers();

// ── Prayer fetch ───────────────────────────────────────────────

// "YYYY-MM-DD" string van een Date object
function toYMD(date) {
  const y = date.getFullYear();
  const m = String(date.getMonth() + 1).padStart(2, '0');
  const d = String(date.getDate()).padStart(2, '0');
  return `${y}-${m}-${d}`;
}

async function loadPrayers() {
  const date = toYMD(current);

  // Leeg alle dropdowns
  document.querySelectorAll('.prayer-content').forEach(el => {
    el.innerHTML = '';
    el.classList.add('loading');
  });

  try {
    const res = await fetch(`prayers.php?date=${date}`);
    if (!res.ok) throw new Error(`HTTP ${res.status}`);
    const data = await res.json();

    document.querySelectorAll('.prayer-content').forEach(el => {
      el.classList.remove('loading');
    });

    // data.gebeden is een object: { lauden: { label, tonen, onderdelen: [...] }, ... }
    if (data.gebeden) {
          Object.entries(data.gebeden).forEach(([tableSlug, gebed]) => {
            const uiSlug = tableSlug === 'none_gebed' ? 'none' : tableSlug;
            const block = document.querySelector(`.prayer-block[data-slug="${uiSlug}"]`);

            if (!block) return;

            // ── NORMAL RULES ─────────────────────────────────────
            const isEmpty = !gebed.onderdelen || gebed.onderdelen.length === 0;

            block.hidden = gebed.tonen === false || isEmpty;

            if (!block.hidden) {
              fillPrayer(tableSlug, gebed.onderdelen);
            }
          });
        }

  } catch (err) {
    console.error('Fout bij ophalen gebeden:', err);
    document.querySelectorAll('.prayer-content').forEach(el => {
      el.classList.remove('loading');
    });
  }
}

function fillPrayer(tableSlug, onderdelen, meta) {
  // data-slug in de HTML gebruikt de UI-slug (none_gebed → none)
  const uiSlug = tableSlug === 'none_gebed' ? 'none' : tableSlug;
  const block = document.querySelector(`.prayer-block[data-slug="${uiSlug}"]`);
  if (!block) return;

  const contentEl = block.querySelector('.prayer-content');
  if (!contentEl) return;

  if (!onderdelen || onderdelen.length === 0) {
    contentEl.innerHTML = '<em class="empty">Geen tekst beschikbaar.</em>';
    return;
  }

  // Elk onderdeel krijgt een eigen sectie met titel en tekst
  let html = onderdelen.map(deel => {
    const tekst = (deel.content || '').trim();
    const content = tekst
      ? tekst.split(/\n\n+/).map(p => `<p>${p.replace(/\n/g, '<br>')}</p>`).join('')
      : '<p><em>Geen tekst.</em></p>';

    return `
      <div class="prayer-part">
        <h3 class="prayer-part-title">${deel.title}</h3>
        ${content}
      </div>`;
  }).join('');

  contentEl.innerHTML = html;
}

// Herlaad gebeden wanneer datum verandert
function onDateChange() {
  render();
  loadPrayers();
}

// ── Only one prayer block open at a time ───────────────────────
const prayerBlocks = document.querySelectorAll('.prayer-block');

// start with all closed (safe even if HTML already has open ones)
prayerBlocks.forEach(b => b.removeAttribute('open'));

prayerBlocks.forEach(block => {
  block.addEventListener('toggle', () => {
    if (!block.open) return; // only act when opening

    prayerBlocks.forEach(other => {
      if (other !== block) {
        other.removeAttribute('open');
      }
    });
  });
});
