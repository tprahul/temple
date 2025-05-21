const API_BASE = 'http://localhost:8080/api/temples';

async function loadTemples() {
  const res = await fetch(API_BASE);
  const temples = await res.json();
  const list = document.getElementById('temple-list');
  list.innerHTML = '';

  temples.forEach(t => {
    const li = document.createElement('li');
    li.textContent = t.name;
    li.style.cursor = 'pointer';
    li.onclick = () => loadPoojas(t.id);
    list.appendChild(li);
  });
}

async function loadPoojas(id) {
  const res = await fetch(`${API_BASE}/${id}`);
  const data = await res.json();
  const div = document.getElementById('pooja-list');
  div.innerHTML = `<h2>${data.temple.name}</h2><ul>` +
    data.poojas.map(p => `<li>${p.name} - ₹${p.price}</li>`).join('') +
    `</ul>`;
}

loadTemples();
