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
String course=request.getParameter("course");
String fees=request.getParameter("fees");
String email=request.getParameter("email");
String phone=request.getParameter("phone");
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
String sql="UPDATE teacher SET name=?,course=?,fees=?,email=?,phone=? WHERE name='"+name+"'";
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1,name);
ps.setString(2,course);
ps.setString(3,fees);
ps.setString(4,email);
ps.setString(5,phone);
int i=ps.executeUpdate();
if(i<0)
out.println("Error");
else
out.println("Updated Successfully!");
conn.close();
}
catch(Exception e){
out.println(e);
}
%>