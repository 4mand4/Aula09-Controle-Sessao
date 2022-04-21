<%-- 
    Document   : index
    Created on : 19 de abr de 2022, 22:09:09
    Author     : amanda
--%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas para loteria</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <%if (session.getAttribute("username") != null) { %>
        <br>
        <p class="fs-3">Dicas para loteria</p>
        <table class="table-sm table-bordered" border="1">      
            <%
                ArrayList listaRecebida = (ArrayList) request.getSession().getAttribute("lista");
                for (int i = 0; i < 6; i++) {  
            %>
            <td><%=listaRecebida.get(i)%></td>
             <%}%>
        </table>  
        <%} else {%>
        <p class= "text-center fs-5" style="color: red">Você não tem permissão para ver esta página</p>
        <%}%> 
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
