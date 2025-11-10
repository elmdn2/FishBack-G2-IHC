document.addEventListener("DOMContentLoaded", () => {
  const userMenu = document.getElementById("user-menu");

  function updateHeader() {
    const loggedIn = localStorage.getItem("usuarioLogueado") === "true";

    if (loggedIn) {
      // Reemplaza con icono de usuario
      userMenu.innerHTML = `
        <a href="#" id="logout-btn" title="Cerrar sesión">
          <i class='bx bxs-user-circle' style='font-size:1.8rem; color:white;'></i>
        </a>
      `;

      // Evento para cerrar sesión
      document.getElementById("logout-btn").addEventListener("click", (e) => {
        e.preventDefault();
        localStorage.removeItem("usuarioLogueado");
        localStorage.removeItem("userDNI");
        updateHeader();
      });
    } else {
      // Vuelve al estado original: botón Ingresa
      userMenu.innerHTML = `<a href="inses.html" class="cta-btn" id="btn-inses">Ingresa</a>`;
    }
  }

  updateHeader();
});

