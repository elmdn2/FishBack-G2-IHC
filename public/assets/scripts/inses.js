const About_us = document.querySelector("#nosotros")

About_us.addEventListener("click", (s) =>{
        s.preventDefault();
        const SectionS = document.querySelector(".nosotrs");
        SectionS.scrollIntoView({behavior:"smooth"});
    }

)

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
      userMenu.innerHTML = `<a href="public/inses.html" class="cta-btn" id="btn-inses">Ingresa</a>`;
    }
  }

  updateHeader();
});


document.addEventListener("DOMContentLoaded", () => {
  const userMenu = document.getElementById("user-menu");
  const bottomBar = document.getElementById("bottom-bar");
  const guestBtn = document.getElementById("guest-btn");

  function updateHeader() {
    const loggedIn = localStorage.getItem("usuarioLogueado") === "true";

    if (loggedIn) {
      // Ocultar barra inferior
      bottomBar.style.display = "none";

      // Reemplaza con icono de usuario
      userMenu.innerHTML = `
        <a href="#" id="logout-btn" title="Cerrar sesión">
          <i class='bx bxs-user-circle' style='font-size:1.8rem; color:white;'></i>
        </a>
      `;

      document.getElementById("logout-btn").addEventListener("click", (e) => {
        e.preventDefault();
        localStorage.removeItem("usuarioLogueado");
        localStorage.removeItem("userDNI");
        updateHeader();
      });

    } else {
      // Mostrar barra inferior
      bottomBar.style.display = "flex";

      // Vuelve al estado original: botón Ingresa
      userMenu.innerHTML = `<a href="public/inses.html" class="cta-btn" id="btn-inses">Ingresa</a>`;
    }
  }

  // Continuar como invitado
  guestBtn.addEventListener("click", () => {
    bottomBar.style.display = "none";
  });

  updateHeader();
});

