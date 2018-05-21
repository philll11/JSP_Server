<%-- 
    Document   : Calculator
    Created on : 21/05/2018, 5:41:28 PM
    Author     : User
--%>

<%@page import="org.mvel2.MVEL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <form action="/Calculator" method="get">
            <h1>Enter an expression (example 1 + (2 * 5)), and press the enter button to evaluate</h1>
            <input type="text" name="expression">
            <input type="submit" value="Submit">
        </form>
        <%
            String expression = request.getParameter("expression");
            out.println(expression + " = " + MVEL.eval(expression));
        %>
    </body>
</html>
