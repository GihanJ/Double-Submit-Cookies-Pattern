<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Legal Transfer</title>
<link rel="stylesheet" href="../css/bootstrap.css"/>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<div class="row-md-12" style="margin-top: 5%;margin-left: 30%">
		<h1 style="color: black;font-family:serif;">*** START TRANSFERING ***</h1>
	</div>
	<div class="container h-100">
		<div class="row h-100 justify-content-center align-items-center">
	  		<div class="col-md-6" >
				<form id="Form" name="Form" action="../HomeController" method="post" class="form-horizontal">
  					<div class="form-group row" style="margin-top: 15%">
	    				<label for="accountInput">Account Number</label>
	    				<input type="number" class="form-control" id="accountNo" name="accountNo" placeholder="Enter Account Number" min="0" required>
	  				</div>
	  				<div class="form-group row" style="margin-top: 5%">
	    				<label for="amountInput">Amount</label>
	    				<input type="number" class="form-control" id="amount" name="amount" placeholder="Enter Amount" min="10" required>
	  				</div>
	 				<button type="submit" class="btn btn-primary" style="width: 200px;margin-left: 30%;margin-top: 3%">Transfer</button>
	 			</form>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
	function getCookie(cname) {
	    var name = cname + "=";
	    var ca = document.cookie.split(';');
	    for(var i = 0; i < ca.length; i++) {
	        var c = ca[i];
	        while (c.charAt(0) == ' ') {
	            c = c.substring(1);
	        }
	        if (c.indexOf(name) == 0) {
	            return c.substring(name.length, c.length);
	        }
	    }
	    return "";
	}


	function appendCookieValue() {
	    var valll = getCookie("CSRF_TOKEN");
	    if (valll != "") {

	    	var input = document.createElement("input");

	    	input.setAttribute("type", "hidden");

	    	input.setAttribute("name", "token");

	    	input.setAttribute("value", valll);

	    	//append to form element that you want .
	    	document.getElementById("Form").appendChild(input);
	    }
	}
	appendCookieValue();
	</script>
	
	<footer class="page-footer" style="background-color:#000000;margin-top: 127px">
		<div class="footer-copyright text-center py-3" style="color: white;">Copyright © 2019 MONREO</div>
  	</footer>	
</body>
</html>