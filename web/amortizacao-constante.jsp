<%-- 
    Document   : amortizacao-constante
    Created on : 16/03/2019, 18:10:03
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
        <h1>AMORTIZAÇÃO CONSTANTE</h1>
        <br>
        <br>
        <form>
            Saldo inicial: <input type="text" name="pv"/>
            Período(meses): <input type ="text" name ="n">
            Taxa de Juros(%): <input type ="text" name="taxa"> 
            <input type="submit" name="enviar">
        </form>
        <%double amortizacao;%>
        <%double parcela =0;%>
        <%double juros;%>
        <%double somaJuros=0;%>
        <%double prestacao=0;%>
        <%if (request.getParameter("enviar")!=null){%>
            <%try{%>
            <% double PV = Double.parseDouble(request.getParameter("pv")); %>
            <% double Taxa = Double.parseDouble(request.getParameter("taxa")); %>
            <% int periodo = Integer.parseInt(request.getParameter("n")); %>
            <hr/>
            <%amortizacao = PV/periodo;%>
            <ul align = "left">
                <li><h4>Período: <%=periodo%> meses</h4></li>
                <li><h4>Saldo Inicial: R$<%=PV%></h4></li>
                <li><h4>Taxa de Juros: <%=Taxa%>%</h4></li>
                <li><h4>Amortização: R$<%=amortizacao%></h4></li>                
            </ul>
                <table border = "2" align = "center">
                    <thead align = "center" >
                        <tr>
                            <th>
                                <h4>Meses</h4>
                            </th>
                            <th>
                                <h4>Saldo Devedor</h4>
                            </th>
                            <th>
                                <h4>Amortização<h4>
                            </th>
                            <th>
                                <h4>Juros</h4>                                    
                            </th>
                            <th>
                                <h4>Prestação</h4>
                            </th>
                                
                        </tr>
                    </thead>
                    <tbody align = "center">
                        <%for ( int i = 0; i <= periodo; i++){%>
                            
                            <%juros = PV*(Taxa/100);%>
                            
                            <%somaJuros = somaJuros + juros;%>
                            <%prestacao = prestacao + parcela;%>
                            <tr>
                                <td width="20%">
                                    <h3><%=i%></h3>                                   
                                </td>
                                <td width="20%">
                                    <h3>R$<%=PV%></h3>
                                </td>
                                <td width="20%">
                                    <h3>R$<%=amortizacao%></h3>
                                </td>
                                <td width="20%">
                                    <h3>R$<%=juros%></h3>
                                </td>
                                <td width="20%">
                                    <h3>R$<%=parcela%></h3>
                                </td>
                            </tr>
                            <%PV = PV - amortizacao;%>
                            <%parcela = amortizacao + juros;%>
                        <%}%>
                        </tbody>
                        <tfooter>
                            <tr>
                                <td align = "center" width="20%">
                                    <h3>Total</h3>
                                </td>
                                <td align = "center" width="20%">
                                    <h3>
                                        - x -
                                    </h3>
                                </td>
                                <td align = "center" width="20%">
                                    <h3>R$<%=amortizacao*periodo%></h3>
                                </td>
                                <td align = "center" width="20%">
                                    <h3>R$<%=somaJuros%></h3>
                                </td>
                                <td align = "center" width="20%">
                                    <h3>R$<%=prestacao%></h3>
                                </td>
                            </tr>
                        </tfooter>
                </table>
                        
            <%}catch (Exception e){%>
                <h2 style="color: red">Número inválido</h2>
            <%}%>
        <%}%>
        <%@include file="WEB-INF/jspf/footer.jspf"%>
        
    </body>
</html>
