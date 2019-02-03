<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/solid.css">
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	
	<link href="/topjobs/CSS/style.css" rel="stylesheet">

<!-- 	<link rel="stylesheet" type="text/css" href="/topjobs/CSS/homepage.css" /> -->
</head>

<body> 
<%@include file="Header.jsp" %>

<div id="slides" class="carousel slide" data-ride="carousel">
 <!-- Indicators -->
<ul class="carousel-indicators">
	<li data-target="#slides" data-slide-to="0" class="active"></li>
	<li data-target="#slides" data-slide-to="1"></li>
</ul>
<!-- The slideshow -->
<div class="carousel-inner">
	<div class="carousel-item active">
		<img src="/topjobs/images/home1.jpg">
		<div class="carousel-caption">
			<h1 class="display-2">Job Seekers</h1>
			<hr class="light">
			<h3>Find your Dream Job on TopJobs. To get started, Register as a Job Seeker or Login if already registered.</h3>
			<button type="button" class="btn btn-outline-light btn-lg" onclick=" window.open('/topjobs/register','_self')" style="font-size: 40px;">Register</button>
			<button type="button" class="btn btn-primary btn-lg" onclick=" window.open('/topjobs/LoginServlet','_self')" style="font-size: 40px;">Login</button>
		</div>
	</div>
	<div class="carousel-item">
		<img src="/topjobs/images/home2.jpg">
		<div class="carousel-caption">
			<h1 class="display-2">Employers</h1>
			<hr class="light">
			<h3>Find Competent Job seekers on TopJobs. To get started, Register as an Employer or Login if already registered.</h3>
			<button type="button" class="btn btn-outline-light btn-lg" onclick=" window.open('/topjobs/register','_self')" style="font-size: 40px;">Register</button>
			<button type="button" class="btn btn-primary btn-lg" onclick=" window.open('/topjobs/LoginServlet','_self')" style="font-size: 40px;">Login</button>
		</div>
	</div>
	
	<!-- Left and right controls -->
  	<a class="carousel-control-prev" href="#slides" data-slide="prev">
    <span class="carousel-control-prev-icon"></span></a>
 	<a class="carousel-control-next" href="#slides" data-slide="next">
    <span class="carousel-control-next-icon"></span></a>
</div>
</div> 
  
<!-- <section class="about-sec parallax-section" id="about"> -->
<!--   <div class="container"> -->
<!--     <div class="row"> -->
<!--       <div class="col-md-3"> -->
<!--         <h2><small>Who We Are</small>About<br> -->
<!--           Our Blog</h2> -->
<!--       </div> -->
<!--       <div class="col-md-4"> -->
<!--         <p>TopJobs is a growing  online Staffing solutions provider and Modern Technology Job Portal company constituted with very much experienced people in core team in 2018.</p> -->
<!--         <p>We headquartered in Industrial hub Noida. We are in the business of providing organizations with full service of recruitment solutions to efficiently screen and select the most qualified candidates for their current job openings.</p> -->
<!--       </div> -->
<!--       <div class="col-md-4"> -->
<!--         <p>We foster a collaborative workplace that strives to create the best experience for job seekers as well as for the Employers.</p> -->
<!--         <p>Topjobs works closely to bridge the gap between talent & opportunities and offers end-to-end recruitment solutions. Topjobs brings candidates and top employers under one roof.</p> -->
<!--         <p><a href="#" class="btn btn-transparent-white btn-capsul">Explore More</a></p> -->
<!--       </div> -->
<!--     </div> -->
<!--   </div> -->
<!-- </section> -->
      

<%@include file="Footer.jsp" %>
</body>
</html>