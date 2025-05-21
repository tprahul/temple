const API_BASE = 'http://localhost:8080/api/temples';

async function loadTemples() {
  try {
    const res = await fetch(API_BASE);
    const temples = await res.json();

    const list = document.getElementById('temple-list');
    const loader = document.getElementById('loading-temples');

    loader.classList.add('hidden');
    list.classList.remove('hidden');
    list.innerHTML = '';

    temples.forEach(t => {
      const li = document.createElement('li');
      li.className = 'list-group-item temple-item d-flex align-items-center';
      li.innerHTML = `<i class="bi bi-house-door-fill temple-icon"></i> ${t.name} <small class="ms-auto text-muted">${t.location}, ${t.district}</small>`;
      li.onclick = () => loadPoojas(t.id);
      list.appendChild(li);
    });
  } catch (err) {
    console.error('Error fetching temples:', err);
  }
}

async function loadPoojas(id) {
  try {
    const res = await fetch(`${API_BASE}/${id}`);
    const data = await res.json();

    document.getElementById('temple-name').innerHTML = `<i class="bi bi-stars"></i> ${data.temple.name}`;
    const list = document.getElementById('pooja-list');
    list.innerHTML = '';

    data.poojas.forEach(p => {
      const li = document.createElement('li');
      li.className = 'list-group-item d-flex justify-content-between';
      li.innerHTML = `<span>${p.name}</span><span class="text-success fw-bold">₹${p.price}</span>`;
      list.appendChild(li);
    });

    document.getElementById('pooja-card').style.display = 'block';
  } catch (err) {
    console.error('Error loading poojas:', err);
  }
}

loadTemples();
