<html>
<head>
<style>
body{
	color:green;
	font-size:25px;
	font-family:Cambria;
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
String name=request.getParameter("name");
String course=request.getParameter("course");
String fee=request.getParameter("fee");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into teacher values('"+name+"','"+course+"','"+fee+"','"+email+"','"+phone+"')");
out.println("Data Inserted Successfully!.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>