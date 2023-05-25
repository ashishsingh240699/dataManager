<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Page</title>
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
form{	
margin:30px;
font-size:20px;
}

input[type="text"],select,option,input[type="date"]{
	padding:10px;
	font-size:20px;
	margin:10px;
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

<h1>Save Expense here</h1>
<form action="saveExpense" method="post">
<pre>
 Expense Name <select name="expenseName" value="expenseName">
      <option value="">--Select Day--</option>
      <option value="NodeJs">NodeJs</option>
      <option value="Python">Python</option>
      <option value="java">java</option>
      <option value="Flutter">Flutter</option>  
    </select><br/>
    Order Id<input type="text"  name="val"> 
ExpenseAmount(Rs)<input type="text" name="expenseAmount"/>
Date<input type="date" name="date"/>
<input type="submit" value="Save"/>
</pre>
</form>
${msg}
</center>

</body>
</html>