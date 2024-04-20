<%-- 
    Document   : newjsp
    Created on : 13-abr-2024, 7:53:23
    Author     : UPN
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int j = 10;
            String dato = "ejemplo";
            List<String> lista = new ArrayList();

            lista.add("Elemento 1");
            lista.add("Elemento 2");
            lista.add("Elemento 3");
        %>
        <%=j%>
        <br>
        <%=dato%>
        <hr>
        <%
            for (String elem : lista) {
                %>
                <%=elem%><br>
                <%
                }
        %>
    </body>
</html>
