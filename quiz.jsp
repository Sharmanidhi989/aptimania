<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>quiz</title>
    </head>
    <body>
        <%@ include file="_header.jsp" %>
<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "aptimania";
String userId = "root";
String password = "1234";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM questions";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<br>
<div class="container">
    <div class="card justify-content-center" >
      <div class="card-header">
          <%=resultSet.getString("qid") %>. <%=resultSet.getString("question") %>
      </div>
      <ul class="list-group list-group-flush">
       <div class="container">
        <li class="list-group">&nbsp&nbsp<%=resultSet.getString("a") %></li>
        <li class="list-group">&nbsp&nbsp<%=resultSet.getString("b") %></li>
        <li class="list-group">&nbsp&nbsp<%=resultSet.getString("c") %></li>
        <li class="list-group">&nbsp&nbsp<%=resultSet.getString("d") %></li>
       </div>
        <li class="list-group-item">Correct: <%=resultSet.getString("correct") %></li>
      </ul>
    </div>
</div>

<br>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
    <%@ include file="_footer.jsp" %>
    </body>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</html>