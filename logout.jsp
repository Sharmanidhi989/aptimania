<%-- 
    Document   : logout
    Created on : Feb 23, 2019, 5:43:05 PM
    Author     : nidhi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<% session.invalidate(); %>
<p>You have been successfully logout</p>
<a href="index.jsp">home</a>
</body>
</html>