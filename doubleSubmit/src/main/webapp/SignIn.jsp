<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SignIn</title>
<link rel="stylesheet" href="css/bootstrap.css"/>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body style="background-image: url('images/back.jpg');">
	<div class="container">
		<div class="row justify-content-center align-items-center">
			<img src="images/logo.png" alt="Logo" style="width:400px;height:400px;margin-top: 7%;opacity: 0.8;background-color: white; border-radius: 195px ">
	  		<div class="col-md-6" style="margin-left: 5%">
	  			<h1 style="color: white;font-family:serif;margin-left: -3%">MONERO-MONEY TRANSFER</h1>
				<form action="SignInController" method="post" class="form-horizontal">
  					<div class="form-group row" style="margin-top: 15%">
	    				<label for="emailInput">Email Address</label>
	    				<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Enter email" required>
	  				</div>
	  				<div class="form-group row" style="margin-top: 5%">
	    				<label for="passwordInput">Password</label>
	    				<input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required>
	  				</div>
	 				<button type="submit" class="btn btn-primary" style="width: 50%; margin-top: 4%">Login</button>
	 			</form>
			</div>
		</div>
	</div>
	<footer class="page-footer" style="background-color:#000000;margin-top: 6.5%">
		<div class="footer-copyright text-center py-3" style="color: white;">Copyright © 2019 MONREO</div>
  	</footer>
</body>
</html>