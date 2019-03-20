<%-- 
    Document   : amortizacao-americana
    Created on : 16/03/2019, 18:14:25
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
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>AMORTIZAÇÃO AMERICANA</h1>
        <form>
            <input type="number" name="Valor"/>
            <input type="number" name="Tempo"/>
            <input type="number" name="Juros"/>
            <input type="submit" name="Calcular" Value="Calcular"/>
        </form>
        <%if(request.getParameter("Calcular")!=null){%>
        <%try{%>
        <%double Valor = Double.parseDouble(request.getParameter("Valor"));%>
        <%double Juros = Double.parseDouble(request.getParameter("Juros"));%>
        <%double Tempo = Double.parseDouble(request.getParameter("Tempo"));%>
        <%String nula = "-"; %>  
       <table border="1">
           <tr><th>Mes</th><th>Saldo Devedor</th><th>Juros</th><th>Prestacoes</th><th>Armotizaçao</th>
            <% Double jurosMensais = Juros/100 * Valor; %>
            <% for(int i= 1; i < Tempo; i++){ %>
           <tr>
               <td><%=i%></td>
               <td><%=Valor%></td>
               <td><%=jurosMensais%></td>
               <td><%=jurosMensais%></td>  
               <td><%=nula%></td>
           </tr>    
           <% } %>  
           <tr>
               <td><%=Tempo%>
               <td><%=nula%></td>
               <td><%=jurosMensais%></td>
               <td><%=jurosMensais+Valor%></td>
               <td><%=Valor%></td>
           </tr>                                           
                     
       </table>               
       <%}catch (Exception e){ %>  
           <h2 style="color:red"> NUMERO INVALIDO </h2>
           <% } %>
           <% } %>
    <%@include file="WEB-INF/jspf/footer.jspf"%>   
    </body>
</html>
