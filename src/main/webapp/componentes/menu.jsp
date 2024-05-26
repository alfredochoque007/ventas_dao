
<%
    String opcion = request.getParameter("opcion");
%>

<ul class="nav nav-tabs">
    <li class="nav-item">
        <a class="nav-link <%=(opcion.equals("productos") ? "active" : "")%>" href="#">Productos</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%=(opcion.equals("clientes") ? "active" : "")%>" href="#">Clientes</a>
    </li>
    <li class="nav-item">
        <a class="nav-link <%=(opcion.equals("ventas") ? "active" : "")%>" href="#">Ventas</a>
    </li>
</ul>