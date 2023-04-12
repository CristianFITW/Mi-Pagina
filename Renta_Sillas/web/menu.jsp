<link rel="stylesheet" href="menu.css" />

<nav>
  <ul>
    <li><a href="<%=request.getContextPath()%>/menu.jsp"><img src="https://cdn-icons-png.flaticon.com/512/90/90000.png" alt="Icono de menu">Renta de sillas</a></li>
    <li><a href="<%=request.getContextPath()%>/inicio.jsp"><img src="https://cdn-icons-png.flaticon.com/512/102/102061.png" alt="Icono de inicio">Inicio</a></li>
    <li><a href="<%=request.getContextPath()%>/carritoCompra.jsp"><img src="https://cdn-icons-png.flaticon.com/512/107/107831.png" alt="Icono de carrito">Carrito de compra</a></li>
    <li><a href="<%=request.getContextPath()%>/iniciosesion.jsp"><img src="https://cdn.icon-icons.com/icons2/1369/PNG/512/-person_90382.png" alt="Icono de sesion">Iniciar sesión</a></li>
    <li id="config-li"><a href="#"><img src="https://w7.pngwing.com/pngs/257/93/png-transparent-settings-gear-icon-gear-configuration-set-up-thumbnail.png" alt="Icono de confg">Configuración</a></li>
  </ul>
</nav>
    
<script>
  // Obtener el elemento <nav> existente y el <li> correspondiente
  const nav = document.querySelector('nav');
  const configLi = document.querySelector('#config-li');

  // Crear un nuevo elemento <nav>
  const newNav = document.createElement('nav');
  const ul = document.createElement('ul');
  newNav.appendChild(ul);

  // Copiar los elementos <li> existentes al nuevo <nav>
  const existingLis = nav.querySelectorAll('li');
  existingLis.forEach((li) => {
    ul.appendChild(li.cloneNode(true));
  });

  // Agregar el nuevo <nav> al documento, ocultarlo y agregar un controlador de eventos para el <li> correspondiente
  nav.parentNode.insertBefore(newNav, nav);
  newNav.style.display = 'none';
  configLi.addEventListener('click', () => {
    if (nav.style.display === 'none') {
      nav.style.display = 'block';
      newNav.style.display = 'none';
    } else {
      nav.style.display = 'none';
      newNav.style.display = 'block';
    }
  });
</script>