<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
center{
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
border:2px solid  black;
margin:100px;
font-size:20px;
padding:50px;
color:white;
border-radius:10px;
}

button{
	padding:10px 20px;
	font-size:26px;
	margin:20px;
	border-radius:20px;
}
button:hover{
background-color:black;
color:white;
}

</style>
</head>
<body>
<center>
<h1>Index page</h1>
<a href="expense"><button>Expense</button></a>
<a href="invoice"><button>Invoices</button></a>
<a href="reportPage"><button>Report</button></a>
<a href="sell"><button>Sell</button></a>

</center>

</body>
</html>