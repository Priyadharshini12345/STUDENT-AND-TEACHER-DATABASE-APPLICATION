<html>
<head>
<style>
body{
	
	font-size:35px;
	font-family:cambria;
	padding:5px;
	text-align:center;
}
</style>
</head>
<body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String site=new String("http://localhost:9999/pp/frontpg.jsp");
String userid=request.getParameter("userid");
session.putValue("userid",userid);
String password=request.getParameter("password");
Class.forName("com.mysql.jdbc.Driver");
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"' and password='"+password+"'");
try{
rs.next();
if(rs.getString("password").equals(password)&&rs.getString("userid").equals(userid))
{
out.println("Welcome " +userid);
response.sendRedirect(site);
}
else{
out.println("Invalid password or username.");
}
}
catch (Exception e) {
e.printStackTrace();
}
%>