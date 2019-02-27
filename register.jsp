<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%      Connection con = null;
        Statement smt = null;
           
        String driverName="com.mysql.jdbc.Driver";
        String url="jdbc:mysql://localhost:3306/aptimania";
        String us="root";
        String password ="1234"; %>
<%! String first_name;
    String last_name;
    String username;
    String email;
    String gender;
    String pass;
%>
<%
String first_name= request.getParameter("first_name");
String last_name= request.getParameter("last_name");
String username= request.getParameter("username");
String email= request.getParameter("email");
String gender= request.getParameter("gender");
String pass = request.getParameter("password");
           try{
               Class.forName(driverName);
               con = DriverManager.getConnection(url,us,password);
               smt = con.createStatement();
               
               smt.executeUpdate("insert into users values('"+first_name+"','"+last_name+"','"+email+"','"+gender+"','"+username+"','"+pass+"');");
               
               RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
               rd.forward(request, response);
               
               
           }
           catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>