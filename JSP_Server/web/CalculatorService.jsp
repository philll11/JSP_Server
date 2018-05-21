<%-- 
    Document   : CalculatorService
    Created on : 21/05/2018, 5:41:15 PM
    Author     : User
--%>

<%@page 
    import="org.json.JSONObject"
    import="org.mvel2.MVEL"    
    contentType="application/json" pageEncoding="UTF-8"
    %>

<%
    String expression = request.getParameter("expression");
    int result = Integer.parseInt(MVEL.eval(expression).toString());
    JSONObject json = new JSONObject();
    json.put("expression", expression);
    json.put("result", result);
    out.println(json);
%>