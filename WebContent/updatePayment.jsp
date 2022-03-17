<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="home.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="css/payment.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
	<title>Payment Update</title>
	<style type="text/css">
		table {
  			border-collapse: collapse;
		}

		table, th, td {
		  border: 2px solid black;
		}
	</style>
</head>
<body>

	<%
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String itemID = request.getParameter("itemID");
		String bidPrice = request.getParameter("bidPrice");
		String address = request.getParameter("address");
		String payType = request.getParameter("payType");
		String cardNo = request.getParameter("cardNo");
		String bidDate = request.getParameter("bidDate");
		String cvCode = request.getParameter("cvCode");
	%>
	
	<h1 style="color:white ; "><center><b><u>Payment Account Update</u></b></center></h1>
	<br><br>
	<form action="Update" method="post">
	<table class="center" style="width:60%">
	
	<tr>
    	<td scope="col">Customer ID</td>
		<td scope="col"><input type="text" name="id" value="<%= id %>" ></td>
	</tr>
	<tr>
		<td scope="col">Name</td>
		<td scope="col"><input type="text" name="name" value="<%= name %>"></td>
	</tr>
	<tr>
		<td scope="col">Phone number</td>
		<td scope="col"><input type="text" name="phone" value="<%= phone %>"></td>
	</tr>
	<tr>
		<td scope="col">ItemID</td>
		<td scope="col"><input type="text" name="itemID" value="<%= itemID %>"></td>
	</tr>
	<tr>
		<td scope="col">Bid Price</td>
		<td><input type="text" name="bidPrice" value="<%= bidPrice %>"></td>
	</tr>	
    <tr>
		<td scope="col">Address</td>
		<td scope="col"><input type="text" name="address" value="<%= address %>"></td>
	</tr>
    <tr>
		<td scope="col">Card Number</td>
		<td scope="col"><input type="text" name="cardNo" value="<%= cardNo %>"></td>
	</tr>
    <tr>
		<td scope="col">Bid Date</td>
		<td scope="col"><input type="text" name="bidDate" value="<%= bidDate %>"></td>
	</tr>
    <tr>
		<td scope="col">CV Code</td>
		<td scope="col"><input type="text" name="cvCode" value="<%= cvCode %>"></td>
	</tr>
	<tr>
		<td scope="col">Update Data</td>
		<td scope="col"><input type="submit" name="submit" value="Update Data"></td>
	</tr>
	
	</table>
	<br>
	
	</form>
	<br><br>

</body>
</html>