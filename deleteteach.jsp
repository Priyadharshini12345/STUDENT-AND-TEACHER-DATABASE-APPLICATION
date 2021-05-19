
<html>
<style>
body{
	font-size:25px;
	font-family:Cambria;
	color:green;
}
</style>
<body>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM teacher WHERE name='"+name+"'");
out.println("Data Deleted Successfully!.");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>