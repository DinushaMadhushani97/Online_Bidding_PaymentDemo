

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home Page</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>

 <!--Header-->
    <br>
    <div class="topnav sticky">
 
            <center><h2 style="color:#34282C;font-size:30px;font-family:cursive;">Auction Heroine</h2></center>
            <h2><a href="Login.jsp"><b>dinusha@gmail.com</b> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Home <i class="fa fa-institution"></i></a>
            <a href="paymentInsert.jsp">Payment <i class='fa fa-credit-card'></i></a>
            <a href="paymentView.jsp">Payment List <i class='fa fa-sticky-note'></i></a>
            <a href="updatePayment.jsp">Change Payment <i class="fa fa-pencil-square-o"></i></a>
            <a href="deletePayment.jsp"> Delete Payment <i class='fa fa-window-close'></i></a>
            <a href="about.jsp">About <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
             
            </div>
          </div>
           <br>
           
           
           
           <div class="footer">
          <p>All Right Reserved @ Auction Heroine</p>
      </div>
           
</body>
</html>