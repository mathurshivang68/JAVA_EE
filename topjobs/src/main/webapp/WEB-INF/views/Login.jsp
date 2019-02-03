<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	  	<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" type="text/css" href="/topjobs/CSS/header.css" />
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>TopJobs</title>
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
		<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/solid.css">
		<link href="/topjobs/CSS/style.css" rel="stylesheet">
	</head>
	
	<body class="body-bg-login">
	<%@include file="Header.jsp" %>
	
		<div class="modal-dialog text-center">
			<div class="col-sm-12 main-section">
				<div class="modal-content">
				
					<div class="col-12 user-img">
						<img src="/topjobs/images/face.png">
					</div>
				
					<form class="col-12" action="j_security_check">
						<div class="form-group">
							<input type="text" name="j_username" class="form-control" placeholder="Enter username" required>
						</div>
						<div class="form-group">
							<input type="password" name="j_password" class="form-control" placeholder="Enter password" required>
						</div>
							<button type="submit" class="btn bt-login"><i class="fas fa-sign-in-alt"></i>Login</button>
					</form>
					<div class="col-12 forgot">
						<a href="/topjobs/register">New User? Register.</a>
					</div> 
				</div>			<!-- End of Modal Content -->
			</div>
		</div>
	</body>
</html>