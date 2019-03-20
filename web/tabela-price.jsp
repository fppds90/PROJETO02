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
                    <%double juros;%>
                    <%double subtracao;%>
                    <%double saldo;%>
                    <%double prestacao;%>
                    <%double totalparcela =0;%>
                    <%double totaljuros =0;%>
                    <%double totalamortizacao =0;%>
            <%if (request.getParameter ("enviar") != null){%>
               <%try{%>
                    <% double PV = Double.parseDouble(request.getParameter("valorpresente")); %>
                    <% double taxa = Double.parseDouble(request.getParameter("taxa")); %>
                    <% int periodo = Integer.parseInt(request.getParameter("periodo")); %>
                    
                    <hr/>
                    <%PMT = PV * (Math.pow((1+(taxa/100)), periodo) * (taxa/100)) / (Math.pow((1+(taxa/100)), periodo) - 1);%>
                    <%BigDecimal PMT2 = new BigDecimal(PMT).setScale(2,RoundingMode.HALF_EVEN);%>
                    <%BigDecimal PV3 = new BigDecimal(PV).setScale(2,RoundingMode.HALF_EVEN);%>
                    <h2 align=center>O valor da prestação será de <%=PMT2%> e o saldo devedor <%=PV3%>.</h2>
                    <%double saldo3 = PV;%>
                        <table border="1px" align=center>
                            <tr><th>Mês</th><th>Prestação</th><th>Juros</th><th>Amortização</th><th>Saldo Devedor</th></tr>
                            <% for (int i=1; i<=periodo; i++){%>
                                <tr>
                                    <td align=center width=20%><h3><%=i%></h3></td>
                                    <% prestacao = PMT;%>
                                    <%BigDecimal PV2 = new BigDecimal(prestacao).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=PV2%></h3></td>
                                    <%juros = (saldo3/100)*taxa;%>
                                    <%BigDecimal juros2 = new BigDecimal(juros).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=juros2%></h3></td>
                                    <% subtracao = prestacao - juros; %>
                                    <%BigDecimal subtracao2 = new BigDecimal(subtracao).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=subtracao2%></h3></td>
                                    <% saldo = saldo3-subtracao;%>
                                    <%BigDecimal saldo2 = new BigDecimal(saldo).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=saldo2%></h3></td>
                                    <%saldo3 = saldo;%>
                                    <%totalparcela=prestacao*periodo;%>
                                    <%totaljuros=totaljuros+juros;%>
                                    <%totalamortizacao=totalamortizacao+subtracao;%>
                                </tr>   
                            <%}%>
                                    <td align=center width=20%><h3>Total</h3></td>
                                    <%BigDecimal totalparcela2 = new BigDecimal(totalparcela).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=totalparcela2%></h3></td>
                                    <%BigDecimal totaljuros2 = new BigDecimal(totaljuros).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=totaljuros2%></h3></td>
                                    <%BigDecimal totalamortizacao2 = new BigDecimal(totalamortizacao).setScale(2,RoundingMode.HALF_EVEN);%>
                                    <td align=center width=20%><h3><%=totalamortizacao2%></h3></td>
                                    <td align=center width=20%>-</td>
                        </table>
                <%}catch (Exception e){%>
                            <h2 style="color: red">Números inválidos</h2>
                <%}%>
            <%}%>
          
        
    </body>
</html>
