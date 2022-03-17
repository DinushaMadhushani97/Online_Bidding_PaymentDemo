<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="home.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/payment.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Payment Form</title>
</head>
<body>
<!--  <div id='container'>-->
  <div class='payment' >
 <form action="PaymentInsert" method="post" >
					Name  :<br> <input type = "text" name = "name" placeholder ="Enter name" required><br><br>
					Phone-Number :<br> <input type = "text" name = "phone" placeholder ="Enter phoneNumber" required><br><br>
					ItemID : <br><input type = "text" name = "itemID" placeholder ="Enter itemID" required><br><br>
					BidPrice : <br><input type = "text" name = "bidPrice" placeholder ="Enter bidPrice" required><br><br>
					Address :<br> <input type = "text" name = "address" placeholder ="Enter address" required><br><br>
					
                    payType :<br> <input type = "text" name = "payType" placeholder ="Enter payType" required><br><br>
                    Card-Number :<br><input type="text" name="cardNo" placeholder="card number">
                    <br><br>
                    
					Bid-Date :<br> <input type = "text" name = "bidDate" placeholder ="Enter bidDate" required><br><br>
					
					
                  
                    CV-Code :<br> <input type="text" placeholder="123" name="cvCode" >
                   
                    <br><br>
                    <input type="submit" name="submit" value="Submit">
                    
                   
                </form>
                <br> <br>
  </div>
<!--  </div>-->
<Br><br><br>

</body>
</html>