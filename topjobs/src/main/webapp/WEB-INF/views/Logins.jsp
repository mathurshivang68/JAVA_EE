<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/topjobs/CSS/header.css" />
<link href="CSS/form.css" type=text/css rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<div class="container-fluid bg">
<%@include file="Header.jsp" %>
  <div class="row"> 
  <div class="col-md-4 col-sm-4 col-xs-10"></div>
  
  <div class="col-md-4 col-sm-4 col-xs-10">
  <!-- --Form Stary-- -->
  <div class="container">
  <form class="form-container" action="j_security_check">
  
  <h1>Login Form</h1>
  <div class="form-group">
  
 <p> <label for="userid"><b>User ID</b></label>
  <input type="text" placeholder="Enter User ID " name="j_username" class="form-control" required/></p>
  </div>
  
  <div class="form-group">
 <p> <label for="pass"><b>Password</b></label>
  <input type="password" name="j_password" style="border:none" placeholder="Enter Password" class="form-control" required /></p>
   </div>
  	
  		<input type="submit" class="btn" value="LOGIN"/>
		<button type="submit" class=btn btn-success btn-block">Submit</button>
		<p>New User?<a href="/topjobs/register">Register</a></p>	
</div>
	</form>	
    
  </div>
  <div class="col-md-4 col-sm-4 col-xs-10"></div>
  
 
 </div>  <!-- for class row -->
</div>


</body>
</html>