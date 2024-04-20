<%-- 
    Document   : curso
    Created on : 13-abr-2024, 8:27:53
    Author     : UPN
--%>

<%@page import="Entidades.cursos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ruta</h1>
        <% 
            String cod = request.getParameter("txtCodigo");
            String nom = request.getParameter("txtNombre");
            
            cursos obj = new cursos();
            obj.setCodigo(cod);
            obj.setNombre(nom);
            
            cursos obj1 = new cursos(cod,nom);
        %>
        Codigo recibido: <%=cod%> <br>
        Nombre recibido: <%=nom%> <br>
        <hr>
        <%=obj.getCodigo()%> 
        <%=obj.getNombre()%> 
    </body>
</html>
