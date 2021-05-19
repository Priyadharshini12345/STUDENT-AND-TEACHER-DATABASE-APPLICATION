<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>new registration</title>

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

</style>

</head>
<body><h3>REGISTER</h3><br><br><br><hr>
<form action="regprocess.jsp" method="post">
First name: <input type="text" name="fname" /><br><br>
Last name: <input type="text" name="lname" /><br><br>
Email ID: <input type="text" name="email" /><br><br>
User name: <input type="text" name="userid" /><br><br>
Password: <input type="password" name="password" /><br><br><br>
<input type="submit" id="p1"/>
</form>
</body>
</html>