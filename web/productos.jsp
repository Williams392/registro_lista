<%-- 
    Document   : productos
    Created on : 13-abr-2024, 10:23:05
    Author     : UPN
--%>

<%@page import="Clases.BandejaProductos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Entidades.producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String cod = request.getParameter("codigo");
    String nom = request.getParameter("nombre");
    int cant = Integer.parseInt(request.getParameter("cantidad"));
    double pre = Double.parseDouble(request.getParameter("precio"));

    producto oprod = new producto();
    oprod.setCodigo(cod);
    oprod.setNombre(nom);
    oprod.setStock(cant);
    oprod.setPrecio(pre);
    
    BandejaProductos bandeja = (BandejaProductos)session.getAttribute("sbandeja");
    if(bandeja == null){
        bandeja = new BandejaProductos();
    }
    List<producto> lista1;
    //lista1.add(oprod);
    lista1 = bandeja.getLista();
    //lista1.add(oprod);
    bandeja.setItem(oprod);
    session.setAttribute("sbandeja", bandeja);
    
    
%>
<table class="table table-primary table-hover">
    <thead>
        <tr>
            <th>Codigo</th><th>Nombre</th><th>Stock</th><th>Precio</th>
        </tr>
    </thead>
    <tbody>
        <% 
            for(producto item:lista1){
                %>
                <tr>
                    <td><%=item.getCodigo()%></td>
                    <td><%=item.getNombre()%></td>
                    <td><%=item.getStock()%></td>
                    <td><%=item.getPrecio()%></td>
                </tr>
                <%
            }
        %>
    </tbody>
    
</table>