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
           <jsp:param name="opcion" value="clientes"/>
        </jsp:include>  
        <div class="container">
            <h1>Formulario de Clientes</h1>
            <form action="ClienteControlador" class="mt-3" method="post">
                <input type="hidden" name="id" value="${cliente.id}" />
                <div class="mb-3">
                    <label for="nombre" class="form-label" name="nombre"  >Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${cliente.nombre}">
                    <div id="nombre" class="form-text">Escriba su Nombre</div>
                </div>
                <div class="mb-3">
                    <label  class="form-label" name="correo"  >Correo:</label>
                    <input type="email" class="form-control" id="correo" name="correo" value="${cliente.correo}">
                    <div id="correo" class="form-text">Escriba su Correo</div>
                </div>
                <div class="mb-3">
                    <label for="celular" class="form-label" name="celular"  >Celular</label>
                    <input type="text" class="form-control" id="nombre" name="celular" value="${cliente.celular}">
                    <div id="celular" class="form-text">Escriba su celular</div>
                </div>
                <button type="submit" class="btn btn-primary">Enviar</button>
            </form>


        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>