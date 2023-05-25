<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders</title>
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
td,th{
	padding:10px;
}
button{
	padding:5px 15px;
	font-size:16px;

	border-radius:10px;
}
button:hover{
background-color:black;
color:white;
}

</style>
</head>
<body>
<Center>
<h2>Here is All orders </h2>
<a href="yearly"><button>Yearly</button></a>
<table border="1">
		<tr>
			<th>Order Name</th>
			<th>Order Amount</th>
			<th>OrderId</th>
			<th>Date</th>
			<th>Reports</th>
			
		
			
		</tr>

		<c:forEach var="Order" items="${Orders}">
			<tr>
			    <td>${Order.expenseName}</td>
				<td>${Order.expenseAmount}</td>
				<td>${Order.val}</td>
				<td>${Order.date}</td>
				<td><a href="generateReport?sellingId=${Order.sellingId }"><button>ViewReport</button></a></td>
				
			
			 
				
			</tr>

		</c:forEach>
	</table>

 
</Center>
</body>
</html>