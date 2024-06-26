<%
    if (session.getAttribute("logueado") != "OK") {
        response.sendRedirect("login.jsp");
    }
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Punto de Venta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
        <jsp:include page="componentes/menu.jsp">
            <jsp:param name="opcion" value="ventas"/>
        </jsp:include>   
        <div class="container">
            <h1>Formulario de Ventas</h1>

            <form action="VentaControlador" class='mt-3' method="POST">
                <input type="hidden" name="id" value="${venta.id}" />
                <div class="mb-3">
                    <label  class="form-label" name="cliente_id"  >Nombre del Cliente:</label>
                    <select name="cliente_id" class="form-control"> 
                        <option value="">--Seleccione</option>

                        <c:forEach var="item" items="${lista_clientes}">
                            <option value="${item.id}" 
                                    <c:if test="${venta.cliente_id==item.id}"> 
                                        selected
                                    </c:if> 
                                    >  ${item.nombre}
                            </option>
                        </c:forEach>
                    </select>
                    <div  class="form-text">Selecione el nombre del Cliente</div>
                </div>

                <div class="mb-3">
                    <label  class="form-label" name="producto_id"  >Nombre del Cliente:</label>
                    <select name="producto_id" class="form-control">
                        <option value="">--Seleccione</option>
                        <c:forEach var="item" items="${lista_productos}">

                            <option value="${item.id}" 
                                    <c:if test="${venta.producto_id==item.id}"> 
                                        selected
                                    </c:if>
                                    > ${item.nombre}
                            </option>
                        </c:forEach>
                    </select>
                    <div  class="form-text">Seleccione el nombre del Producto</div>
                </div>

                <div class="mb-3">
                    <label class="form-label" name="fecha"  >Fecha</label>
                    <input type="date" class="form-control" name="fecha" value="${venta.fecha}">
                    <div class="form-text">Seleccione la fecha </div>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>