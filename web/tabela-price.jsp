<%-- 
    Document   : tabela-price
    Created on : 16/03/2019, 18:14:44
    Author     : Estudo
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
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
            Valor presente: <input type="text" name="valorpresente"/>
            Taxa em %: <input type="text" name="taxa"/>
            Período: <input type="text" name="periodo"/>
           <input type="submit" name="enviar"/>
        </form>
                    <%double PMT;%>
            <%if (request.getParameter ("enviar") != null){%>
               <%try{%>
                    <% double PV = Double.parseDouble(request.getParameter("valorpresente")); %>
                    <% double taxa = Double.parseDouble(request.getParameter("taxa")); %>
                    <% int periodo = Integer.parseInt(request.getParameter("periodo")); %>
                    
                    <hr/>
                    <%PMT = PV * (Math.pow((1+(taxa/100)), periodo) * (taxa/100)) / (Math.pow((1+(taxa/100)), periodo) - 1);%>
                    <%BigDecimal PMT2 = new BigDecimal(PMT).setScale(2,RoundingMode.HALF_EVEN);%>
                    
                    <h2>O valor da prestação será de R$ <%=PMT2%></h2>
                
                <%}catch (Exception e){%>
                            <h2 style="color: red">Números inválidos</h2>
                <%}%>
            <%}%>
          
        
    </body>
</html>
