<html>
<head>
<style>
body{
	font-size:30px;
	text-align:center;
}
input{
	width:300px;
	height:40px;
	background-color:lightgray;
}
#p1{
	background-color:green;
	width:200px;
	height:50px;
	color:white;

}
h3{
	float:left;
}
</style>
</head>
<body>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String name=request.getParameter("name");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student", "root", "");
Statement st=conn.createStatement();
String sql ="select * from teacher WHERE name='"+name+"'";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
%>
<center>
<form method="post" action="updateteach2.jsp">
  <table>
    <tr>
      <td align="right">Name:</td>
      <td align="left"><input type="text" name="name" value="<%=request.getParameter("name") %>"/></td>
    </tr><tr></tr><tr></tr><tr></tr>
    <tr>
      <td align="right">Course:</td>
      <td align="left"><input type="text" name="course" value="<%=rs.getString("course")%>" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
    <tr>
      <td align="right">Fees:</td>
      <td align="left"><input type="text" name="fees" value="<%=rs.getString("fees")%>"/></td>
    </tr><tr></tr><tr></tr><tr></tr>
	 <tr>
      <td align="right">Email:</td>
      <td align="left"><input type="text" name="email" value="<%=rs.getString("email")%>"/></td>
    </tr><tr></tr><tr></tr><tr></tr>
	 <tr>
      <td align="right">Phone:</td>
      <td align="left"><input type="text" name="phone" value="<%=rs.getString("phone")%>"/></td>
    </tr><tr></tr><tr></tr><tr></tr>
  </table>
  <input type="submit" id="p1"/></table>
</form>
</center>
<%
}
conn.close();
} 
catch (Exception e) {
e.printStackTrace();
}
%>
</body>
</html>