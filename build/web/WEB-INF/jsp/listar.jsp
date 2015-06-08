<%-- 
    Document   : listar
    Created on : 04-jun-2015, 0:22:00
    Author     : ZedGe
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="x" uri="http://java.sun.com/jstl/xml" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <title>JSP Page</title>
        <script type="text/javascript"> 
            function eliminar(url){
                if(confirm("Desea Eliminar A Esta Persona?")){
                    window.location=url;
                }
            }
        </script>  
    </head>
    <body>
        <div class="container">
            <h1>Lista de Personas! <span class="badge"><c:out value="${personas.size()}"/></span></h1>
            <br>
            <a href="<%=request.getContextPath()%>/agregar" class="btn btn-success" role="button">Agregar</a>
            <br>
            <br>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th class="success" data-field="nombre">Nombre</th>
                            <th class="success" data-field="telefono">Telefono</th>
                            <th class="success" data-field="direccion">Dirección</th>
                            <th class="success" data-field="edad">Edad</th>
                            <th class="success" data-field="acciones">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${personas}" var="dato">
                        <tr>
                            <td><c:out value="${dato.getName()}" /></td>
                            <td><c:out value="${dato.getPhone()}" /></td>
                            <td><c:out value="${dato.getAddress()}" /></td>
                            <td><c:out value="${dato.getAge()}" /></td>
                            <td>
                                <a href="<%=request.getContextPath()%>/editar?id=<c:out value='${dato.getId()}' />"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span> </a>
                                <a href="javascript:void(0);" onclick="eliminar('<%=request.getContextPath()%>/eliminar?id=<c:out value='${dato.getId()}' />')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span> </a>
                            </td>
                        </tr>    
                        </c:forEach>
                    </tbody>
                </table>
            </div> 
    </body>
</html>
