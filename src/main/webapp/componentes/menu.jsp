
<%
    String opcion = request.getParameter("opcion");
%>

<nav class="navbar navbar-expand-lg bg-body-tertiary py-3 mb-4"  data-bs-theme="dark">
  <div class="container">
    <a class="navbar-brand" href="#">Punto de Ventas</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
        <a class="nav-link <%=(opcion.equals("productos") ? "active" : "")%>" href="ProductoControlador">Productos</a>
        </li>
        <li class="nav-item">
         <a class="nav-link <%=(opcion.equals("clientes") ? "active" : "")%>" href="ClienteControlador">Clientes</a>
        </li>
        <li class="nav-item">
         <a class="nav-link <%=(opcion.equals("ventas") ? "active" : "")%>" href="VentaControlador">Ventas</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <a href="LoginControlador?action=logout" class="btn btn-outline-danger">Cerrar sesion</a>
      </form>
    </div>
  </div>
</nav>