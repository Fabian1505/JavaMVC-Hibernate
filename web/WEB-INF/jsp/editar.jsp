<%-- 
    Document   : agregar
    Created on : 08-jun-2015, 14:23:21
    Author     : ZedGe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <ol class="breadcrumb">
            <li><a href="<%=request.getContextPath()%>/listar">Inicio</a></li>
            <li class="active">Editar</li>
        </ol>
         
        <div class="container">
            <h1>Editar a <c:out value="${persona.getName()}" />!</h1>
            
            <form role="form" name="form" method="post" action="<%=request.getContextPath()%>/editar?id=<c:out value="${persona.getId()}" />">
                <div class="form-group">
                    <label for="nombre">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre"
                           placeholder="Introduce el Nombre" value="<c:out value="${persona.getName()}" />">
                </div>
                <div class="form-group">
                    <label for="telefono">Teléfono</label>
                    <input type="text" class="form-control" id="telefono" name="telefono"
                           placeholder="Introduce el Teléfono" value="<c:out value="${persona.getPhone()}" />">
                </div>
                <div class="form-group">
                    <label for="direccion">Dirección</label>
                    <input type="text" class="form-control" id="direccion" name="direccion"
                           placeholder="Introduce la Dirección" value="<c:out value="${persona.getAddress()}" />">
                </div>
                <div class="form-group">
                    <label for="edad">Edad</label>
                    <input type="text" class="form-control" id="edad" name="edad"
                           placeholder="Introduce la Edad" value="<c:out value="${persona.getAge()}" />">
                </div>
                <button type="submit" class="btn btn-default">Enviar</button>
            </form>
            
        </div>        
    </body>
</html>
