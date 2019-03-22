<%-- 
    Document   : home.jsp
    Created on : 16/03/2019, 16:20:24
    Author     : Estudo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>TAREFA 02</title>
        <style>
    .fixarRodape {
        bottom: 0;
        position: fixed;
        width: 90%;
        text-align: center;
    }
    </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf"%>
        <h1>INFORMAÇÕES SOBRE A EQUIPE</h1>
        <br/>
        <h3>Fernando Pedrozo P. dos Santos</h3>
        <p> - Estudante de Análise e Desenvolvimento de Sistemas.</p>
        <br/>
        <h3>Francini Jade Marques</h3>
        <p> - Estudante de Análise e Desenvolvimento de Sistemas.</p>
        <br/>
        <h3>Thiago Giannaccini Leal</h3>
        <p> - Estudante de Análise e Desenvolvimento de Sistemas.</p>
        <br/>
        <br/>
        <h1>FUNCIONALIDADES</h1>
        <br/>
        <h3>Amortização Americana</h3>
        <p align="justify">O Sistema de Amortização Americano é uma forma de pagamento de empréstimos que se caracteriza pelo pagamento apenas dos juros da dívida,deixando o valor da dívida constante, que pode ser paga em apenas um único pagamento.

Esse sistema de amortização tem a vantagem em relação ao sistema de pagamento único, pois nele não há incidência de juros sobre juros. Os juros sempre incidem sobre o valor original da dívida. Com isso o devedor pode quitar sua dívida quando quiser.

Tem como desvantagem que o pagamento de juros pode, em tese, ser perpétuo mesmo quando já se pagou o equivalente à dívida em si. Para isso, basta que o número de prestações exceda 100% quando da soma dos juros simples.</p>
        <br/>
        <h3>Amortização Constante</h3>
        <p align="justify">Sistema de Amortização Constante (SAC) é uma forma de amortização de um empréstimo por prestações que incluem os juros, amortizando assim partes iguais do valor total do empréstimo.  Neste sistema o saldo devedor é reembolsado em valores de amortização iguais. Desta forma, no sistema SAC o valor das prestações é decrescente, já que os juros diminuem a cada prestação. O valor da amortização é calculado, dividindo-se o valor do principal pelo número de períodos de pagamento, ou seja, de parcelas.[1] Por sua vez, os juros são calculados sobre o saldo devedor, multiplicando-se a taxa pelo saldo. Finalmente, a soma da amortização e dos juros resultam no valor da parcela.

O SAC é um dos tipos de sistema de amortização utilizados em financiamentos imobiliários. A principal característica do SAC é que ele amortiza um percentual fixo do valor principal (emissão), desde o início do financiamento. Esse percentual de amortização é sempre o mesmo, o que faz com que a parcela de amortização da dívida seja maior no início do financiamento, fazendo com que o saldo devedor caia mais rapidamente do que em outros mecanismos de amortização.</p>
        <br/>
        <h3>Tabela Price</h3>
        <p align="justify">Tabela Price, também chamado de sistema francês de amortização, é um método usado em amortização de empréstimo cuja principal característica é apresentar prestações (ou parcelas) iguais. O método foi apresentado em 1771 por Richard Price em sua obra "Observações sobre Pagamentos Remissivos".A tabela Price usa o regime de juros compostos para calcular o valor das parcelas de um empréstimo e, dessa parcela, há uma proporção relativa ao pagamento de juros e amortização do valor emprestado.</p>
    </body>
    <footer>
    <%@include file="WEB-INF/jspf/footer.jspf"%>
    </footer>
</html>
