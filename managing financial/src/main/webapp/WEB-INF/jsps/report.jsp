<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Report</title>
<style>
center{
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);
border:2px solid  black;
margin:50px;
font-size:20px;
padding:10px;
color:white;
border-radius:10px;
}
button{
	padding:5px 15px;
	font-size:20px;
	border-radius:10px;
		margin-top:10px;
}
button:hover{
background-color:black;
color:white;
}
</style>
</head>
<body>
<center>
<h2>Report</h2>

Product Name:${reports.selling.getExpenseName()}<br>
Product Name:${reports.selling.getVal()}<br>
SellingPrice:${reports.selling.getExpenseAmount()}<br>
TotalCost:${reports.expense.getExpenseAmount()}<br>
Profit&Loss(Rs):${reports.profit}<br>
  <button onclick=window.print()>Print</button>
</center>
</body>
</html>