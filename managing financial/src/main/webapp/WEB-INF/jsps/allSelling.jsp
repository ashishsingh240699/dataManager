<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>all selling</title>
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

</style>
</head>
<body>
<center>
<h1>All Selling</h1>

<table border="1">
		<tr>
			<th>ID#</th>
			<th>Order Name</th>
			<th>OrderId</th>
			<th>Date</th>
			<th>Price</th>
	
		</tr>

		<c:forEach var="selling" items="${selling}">
			<tr>
			    <td>${selling.sellingId}</td>
				<td>${selling.expenseName}</td>
				<td>${selling.val}</td>
				<td>${selling.date}</td>
				<td>${selling.expenseAmount}</td>
	
			</tr>

		</c:forEach>
	</table>
</center>

</body>
</html>