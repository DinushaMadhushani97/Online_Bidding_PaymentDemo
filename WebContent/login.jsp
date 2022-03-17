<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	</style>
	
</head>
<body>

 <form action = "login" method = "post">
   
   userName <input type = "text" name="userName" placeholder = "Enter your userName"><br>
   password <input type="password" name="password" placeholder="Enter your password"><br>
		<input type="submit" name="submit" value="Login">
	</form>

</body>
</html>