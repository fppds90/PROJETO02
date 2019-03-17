<%-- 
    Document   : tabela-price
    Created on : 16/03/2019, 18:14:44
    Author     : Estudo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TAREFA 02</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf"%>
        <h1>TABELA PRICE</h1>
        <br/>
        <br/>
        <br/>
        <h3>Onde:</h3>
        <ul>
            <li>PMT: prestação</li>
            <li>PV: valor-presente</li>
            <li>i: taxa</li>
            <li>n: período</li>
        </ul>
        <form>
            PV: <input type="text" name="valorpresente"/>
            i: <input type="text" name="taxa"/>
            n: <input type="text" name="periodo"/>
           <input type="submit" name="enviar"/>
        </form>
                
            <%if (request.getParameter ("enviar") != null){%>
                <%try{%>
                 <% String PV = request.getParameter("valorpresente"); %>
                 <% String i = request.getParameter("taxa"); %>
                 <% String n = request.getParameter("periodo"); %>
                 
            <hr/>
                                           
                
            <h2>O valor da prestação será de R$ <%=PV%></h2>
              <%}%> 
            <% catch(Exception e){%>
            <h2 style="color: red">Números inválidos</h2>
             <%}%> 
            <%}%>
        
    </body>
</html>
