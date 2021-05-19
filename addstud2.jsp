
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
String regno=request.getParameter("regno");
String sname=request.getParameter("sname");
String course=request.getParameter("course");
String addr=request.getParameter("addr");
String phone=request.getParameter("phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("insert into stud values('"+regno+"','"+sname+"','"+course+"','"+addr+"','"+phone+"')");
out.println("Data Inserted Successfully!.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>