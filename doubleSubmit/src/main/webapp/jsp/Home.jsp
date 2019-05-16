<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MONERO HOME</title>
<link rel="stylesheet" href="../css/bootstrap.css"/>
<script type="text/javascript" src="../js/bootstrap.js"></script>
</head>
<body>
	<div class="row">
		<img src="../images/logo.png" alt="Logo" style="width:100px;height:100px;margin-top: 2%;margin-left: 45%">
	</div>
	<div class="row-md-12" style="margin-top: 0.5%;margin-left: 30%">
		<h1 style="color: black;font-family:serif;">MONERO-MONEY TRANSFER</h1>
	</div>
	<div class="row" style="margin-top: 3%">
		<div class="jumbotron col-md-5" style="margin-left: 6%;background-color: black;opacity: 0.8">
  			<h1 class="display-4"><a href="../jsp/MoneyTransfer.jsp" target="_blank" style="color: white;">Legal Transfer</a></h1>
  			<hr class="my-4" style="background-color: white;">
  			<p style="color: white;"> Protected against CSRF attacks. A token will be sent along with the form parameters. Money transferring will be successful!</p>
  		</div>
		<div class="jumbotron col-md-5" style="margin-left: 4%;background-color: black;opacity: 0.8">
  			<h1 class="display-4"><a href="MaliciousTransfer.jsp"target="_blank" style="color: white;" >Malicious Transfer</a></h1>
  			<hr class="my-4" style="background-color: white;">
  			<p style="color: white;">Only the form parameters will be sent to the server.Transferring will not be successful!</p>
  		</div>
	</div>
	<footer class="page-footer" style="background-color:#000000">
	<div class="footer-copyright text-center py-3" style="color: white;">Copyright © 2019 MONREO</div>
  	</footer>
</body>
</html>