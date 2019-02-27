<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>quiz</title>
</head>
<body>
<% 
String ans=" ";
Connection conn = null;
String driver = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/";
String db = "aptimania";
String user = "root";
String pass = "1234";
Statement st = null;
ResultSet qrst;
ResultSet rs = null;

String qid=request.getParameter("qid");
System.out.println("qid:"+qid);

int i=1;
 

String s,g;

int count=0;

try {

Class.forName(driver);
conn = DriverManager.getConnection(url+db,user,pass);

st = conn.createStatement();
rs = st.executeQuery("select * from questions");

while(rs.next()) 
{
    if(request.getParameter("correct")==null)
{

%>
<br>
<br>
    <form name="form1" method="get">
        <input type="hidden" name="correct" value="<%=rs.getString("correct")%>" />
        Question:<%= rs.getString("question") %><br>
        a: <input type="radio" name="ans" value= "a" /><%= rs.getString("a") %><br>
        b: <input type="radio" name="ans" value="b" /><%= rs.getString("b") %><br>
        c: <input type="radio" name="ans" value="c" /><%= rs.getString("c") %><br>
        d: <input type="radio" name="ans" value="d" /><%= rs.getString("d") %><br>
        <input type="submit" value="Submit" name="submit" class="btn btn-primary" onclick="refresh()">
    </form>
</body>
<% 
ans=request.getParameter("correct").toString();
g=request.getParameter("ans");
%>
<% 
if(g.equals(ans)){
    count++;
    out.println("Correct");
    out.println(count);

}
else
    out.println("Incorrect");
%>

<%
}}

catch (Exception ex) {
    ex.printStackTrace();

%>

<%
} finally {
    if (rs != null) rs.close();
    if (st != null) st.close();
    if (conn != null) conn.close();
}
    out.println("Score="+count);
%>
</html>