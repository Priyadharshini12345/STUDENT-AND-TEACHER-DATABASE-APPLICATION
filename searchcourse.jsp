<html>
<head>
<script>
function p1(){
	window.location.href="viewteach.jsp";
}
</script>
<style>
.hd{
	width:200px;
	height:50px;
	text-align:center;
	font-size:20px;
	background-color:purple;
	color:white;
}
td{
	width:200px;
	height:50px;
	font-size:20px;
	font-family:Cambria;
}
button{
	width:100px;
	height:30px;
	background-color:green;
	color:white;
	float:right;
}
</style>
<meta charset="ISO-8859-1">
<title>SEARCH COURSE</title>
</head>
<body>
<table>
<tr>
<td class="hd"><b>NAME</td></b>
<td class="hd"><b>COURSE</td></b>
<td class="hd"><b>FEES</td></b>
<td class="hd"><b>EMAIL</td></b>
<td class="hd"><b>PHONE</td></b>
</tr>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String course=request.getParameter("course");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
String sql ="select * from teacher where course='"+course+"' ";
ResultSet rs= st.executeQuery(sql);
while(rs.next()){
%>
<tr>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("course") %></td>
<td><%=rs.getString("fees") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("phone") %></td>
</tr>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<button onclick="p1()">BACK</button>
</body>
</html>