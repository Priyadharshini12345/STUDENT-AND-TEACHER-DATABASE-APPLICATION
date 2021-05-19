<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD TEACHER</title>
<script type='text/javascript'>
function p1(){
	window.location.href="frontpg.jsp";
}
</script>
<style>

body{
	font-size:25px;
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
button{
	width:100px;
	height:50px;
	color:white;
	background-color:green;
	float:right;
}

</style>

</head>
<body><h3>REGISTER</h3><br><br><br><hr><center>
<form method="post" action="addteach2.jsp">
  <table>
    <tr>
      <td align="right">Name:</td>
      <td align="left"><input type="text" name="name" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
    <tr>
      <td align="right">Course:</td>
      <td align="left"><input type="text" name="course" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
    <tr>
      <td align="right">Fees:</td>
      <td align="left"><input type="text" name="fee" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
	 <tr>
      <td align="right">Email:</td>
      <td align="left"><input type="text" name="email" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
	 <tr>
      <td align="right">Phone:</td>
      <td align="left"><input type="text" name="phone" /></td>
    </tr><tr></tr><tr></tr><tr></tr>
  </table>
  <input type="submit" id="p1"/>
</form>
</center><button id="b1" onclick="p1()"><b>HOME</b></button>
</body>
</html>