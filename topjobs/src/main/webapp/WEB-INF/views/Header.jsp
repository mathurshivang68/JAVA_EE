
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="src\main\webapp\WEB-INF\CSS\TopjobsStyle.css"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<body>

<!-- -- NAVBAR-- -->
<div class="container text-primary">
	<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="LoginServlet">Topjobs</a>
    </div>
    <ul class="nav navbar-nav">
      
      <li class="active"><a href="LoginServlet">Home</a></li>
      <li><a href="/aboutus">About Us</a></li>
	  
	   <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          SERVICES
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="jobsservice">JobSeeker</a><br>
          <a class="dropdown-item" href="empservice">Employer</a>
         </div>
      </li>
	  
	  </ul>
	  </div>
	  </nav>
	  </div>
</body>
</html>	  	  