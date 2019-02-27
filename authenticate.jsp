<%-- 
    Document   : authenticate
    Created on : Feb 16, 2019, 11:20:54 PM
    Author     : nidhi
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
    </head>
    <body>
<%!
    String usernamedb;
    String passworddb;
%>
<%
    Connection con= null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/aptimania";
    String user = "root";
    String dbpsw = "1234";

    String sql = "select username, password from users where username=? and password=?";

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if((!(username.equals(null) || username.equals("")) && !(password.equals(null) || password.equals(""))))
    {
        try{
        Class.forName(driverName);
        con = DriverManager.getConnection(url, user, dbpsw);
        ps = con.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        rs = ps.executeQuery();
        if(rs.next())
        { 
            usernamedb = rs.getString("username");
            passworddb = rs.getString("password");
            if(username.equals(usernamedb) && password.equals(passworddb))
            {
                session.setAttribute("username",usernamedb); 
                response.sendRedirect("index.jsp"); 
            } 
        }
        else
            response.sendRedirect("error.jsp");
            rs.close();
            ps.close(); 
        }catch(SQLException sqe)
         {
            out.println(sqe);
         } 
   }
    else
    {
%>
<center><p style="color:red">Error In Login</p></center>
<% 
        getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
    }
%>
    </body>
</html>
