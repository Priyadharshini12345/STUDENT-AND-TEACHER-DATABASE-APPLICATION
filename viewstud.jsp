
<html>
<head>
<script type='text/javascript'>
function p1(){
	window.location.href="frontpg.jsp";
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
#t7:hover{
	background-color:lightgray;
}
#ed{
	height:30px;
	background-color:green;
	font-size:16px;
	color:white;
	width:100px;
}
#de{
	height:30px;
	background-color:red;
	font-size:16px;
	color:white;
	width:100px;
}
#t1,#t2{
	width:100px;
}
button{
width:100px;
background-color:lightgray;
}
input{
	padding:5px;
	width:200px;
	height:35px;
}
#b1{
	width:100px;
	height:50px;
	color:white;
	background-color:green;
	float:right;
}

</style>
<meta charset="ISO-8859-1">
<title>VIEW STUDENT</title>
</head>
<table>
<tr>
<td class="hd"><b>REGISTRATION NO</td></b>
<td class="hd"><b>NAME</td></b>
<td class="hd"><b>COURSE</td></b>
<td class="hd"><b>ADDRESS</td></b>
<td class="hd"><b>PHONE</td></b>
<td><form method="post" action="search.jsp"><input type="text" name="rno" placeholder="Search registration no"></td><td><button>SEARCH</button></form></td>
</tr>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
String sql ="select * from stud";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<tr id="t7">
<td><%=rs.getString("regno") %></td>
<td><%=rs.getString("name") %></td>
<td><%=rs.getString("course") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("phone")%></td>
<td id="t1"><a href="updatestud.jsp?regno=<%=rs.getString("regno") %>"><button id="ed">Edit</button></a></td>
<td id="t2"><a href="deletestud.jsp?regno=<%=rs.getString("regno") %>"><button id="de">Delete</button></a></td>
</tr>
<%
}
conn.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<button id="b1" onclick="p1()"><b>HOME</b></button>
</body>
</html>