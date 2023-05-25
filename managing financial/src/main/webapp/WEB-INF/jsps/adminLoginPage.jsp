<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin Login</title>
<style>
form{
border:2px solid black;
padding:50px;	
margin:100px;
font-size:20px;
}

input[type="text"]{
	padding:10px;
	font-size:20px;
	margin:20px;
	border-radius:10px;
}
input[type="submit"]{
	padding:10px 20px;
	font-size:26px;
	border-radius:20px;
}
input[type="submit"]:hover{
background-color:black;
color:white;
}
</style>
</head>
<body>
<center>
<form action="adminControlls" method="post">
<h1>Admin Login!!</h1>
Username<input type="text" name="username">
Password<input type="text" name="password">
<input type="submit" value="Login">
</form>
${msg }

</center>
</body>
</html>