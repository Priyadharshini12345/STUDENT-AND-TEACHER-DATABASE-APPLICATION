
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
String sql="UPDATE stud SET regno=?,name=?,course=?,address=?,phone=? WHERE regno="+regno;
PreparedStatement ps=conn.prepareStatement(sql);
ps.setString(1,regno);
ps.setString(2,sname);
ps.setString(3,course);
ps.setString(4,addr);
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