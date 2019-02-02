<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="/topjobs/CSS/header.css" />
<link href="CSS/form.css" type=text/css rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>   
<body>

<div class="container-fluid bg">
<%@include file="Header.jsp" %>
  				<!-- <div class="row-md-4"> -->
  
  
  
  <!-- --Form Stary-- -->
  <div class="container">
   <form class="form-container" action="RegisterServlet">
				
	<h1>Register</h1>
		<div class="form-group">		
				
	<p>Fill out this form to Register</p>
	</div>
	
	<div class="form-group">			
	<p><b>Register as</b> 
	<input type="radio" name="role" value="JobSeeker" checked="checked" />JobSeeker
   <input type="radio" name="role" value="Employer" />Employer</p>
			</div>
	<div class="form-group">			
				<p><label for="fname"><b>First Name</b></label>
					<input type="text" placeholder="Enter First Name" name="fname" required/></p>
	</div>
	<div class="form-group">
				<p><label for="lname"><b>Last Name</b></label>
					<input type="text" placeholder="Enter Last Name" name="lname" required/></p>
	</div>				
	<div class="form-group">				
				<p><label for="email"><b>Email    </b></label>
					<input type="text" placeholder="Enter Email " name="email" required/></p>
	</div>
	<div class="form-group">				
				<p><label for="userid"><b>User ID  </b></label>	
				<input type="text" placeholder="Enter Username" name="username" required/></p>
	</div>
	<div class="form-group">
   				<p align="left"><label for="psw"><b>Password  </b></label>
   				<input type="password" placeholder="Enter Password " name="pswd" required/></p>
</div>

<!--     			<p><label for="psw-repeat"><b>Repeat Password</b></label> -->
<!--     			<input type="password" placeholder="Repeat Password " name="psw-repeat" required/></p> -->
  			    
				
			<input type="submit" class="btn" value="Register"/>
 		<!-- 		<button type="submit" class=btn btn-success btn-block">Submit</button> -->
 				<!--  --><p>Already have an Account?<a href="LoginServlet"/>Sign In</a></p>
				
				</fieldset>
			</form>
	
			</div>

		
		
        
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<script>
var reg='<%=request.getAttribute("registrationFail")%>';
if(reg!='null'){
	alert(reg);
}
</script>

</body>
</html>


