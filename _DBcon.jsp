<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%
       
           Connection con=null;
           Statement smt=null;
           
           String driverName="com.mysql.jdbc.Driver";
           String url="jdbc:mysql://localhost:3306/aptimania";
           String us="root";
           String password ="1234";
          
%>

