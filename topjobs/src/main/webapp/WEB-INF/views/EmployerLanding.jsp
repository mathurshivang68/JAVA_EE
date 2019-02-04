<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../CSS/landingpage.css" />

<title>Employers Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../CSS/landingpage.css" />
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@include file="Header.jsp"%>
</head>


<body>

	<ul class="nav navbar-nav navbar-right">
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span> 
				<strong><%=request.getRemoteUser()%></strong> <span
				class="glyphicon glyphicon-chevron-down"></span>
		</a>
			<ul class="dropdown-menu">
				<li>
					<div class="navbar-login">
						<div class="row">
							<div class="col-lg-4">
								<p class="text-center">
									<span class="glyphicon glyphicon-user icon-size"></span>
								</p>
							</div>
							<div class="col-lg-8">
								<p class="text-left">
									<strong>
										<%
											
										%>
									</strong>
								</p>
								<p class="text-left small">Email</p>
								<p class="text-left"></p>
							</div>
						</div>
					</div>
				</li>
				<li class="divider"></li>
				<li>
					<div class="navbar-login navbar-login-session">
						<div class="row">
							<div class="col-lg-12">
								<p>
									<a href="/topjobs/logout" class="btn btn-danger btn-block">Logout</a>
								</p>
							</div>
						</div>
					</div>
				</li>
			</ul>
		<li>
	</ul>

	</div>

	</nav>
	<nav aria-label="breadcrumb">
	<ol class="breadcrumb">
		<li class="breadcrumb-item active" aria-current="page">Home</li>
	</ol>
	</nav>
	</div>

	<!-- Jumbotron -->
	<!-- jumbotron start -->
	<div class="container">
		<div class="jumbotron jumbotron-fluid">
			<h1 class="display-4">Hello Employer!</h1>

			<p class="lead">Welcome to TopJobs.</p>
			<hr class="my-4">
			<p>With Topjobs you can post jobs based on the domain. You can
				create as many jobs once you have purchased the logins.</p>
			<p class="lead"></p>
		</div>
	</div>


	<section>
	<div class="container">


		<div class="row mbr-justify-content-center">

			<div class="col-lg-12 mbr-col-md-10">
				<div class="wrap">
					<div class="ico-wrap">
						<span class="glyphicon glyphicon-briefcase"></span>
					</div>
					<div class="text-wrap vcenter">
						<h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5">
							<a href="/topjobs/emp/newJob">Create <span>Job</span></a>
						</h2>
						<p class="mbr-fonts-style text1 mbr-text display-6">Create a
							Job by filling in all the necessary details for the Job Seeker</p>
					</div>
				</div>
			</div>

			<div class="col-lg-6 mbr-col-md-10">
				<div class="wrap">
					<div class="ico-wrap">
						<span class="glyphicon glyphicon-briefcase"></span>
					</div>
					<div class="text-wrap vcenter">
						<h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5">
							<a href="/topjobs/emp/ShowJobServlet">Show <span>Jobs
									I have Posted</span>
							</a>
						</h2>
						<p class="mbr-fonts-style text1 mbr-text display-6">Show all
							Jobs posted by you</p>
					</div>
				</div>
			</div>

<!-- 			<div class="col-lg-6 mbr-col-md-10"> -->
<!-- 				<div class="wrap"> -->
<!-- 					<div class="ico-wrap"> -->
<!-- 						<span class="glyphicon glyphicon-briefcase"></span> -->
<!-- 					</div> -->
<!-- 					<div class="text-wrap vcenter"> -->
<!-- 						<h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"> -->
<!-- 							<a href="/topjobs/emp/ShowApplicantServlet">Show <span>JobSeekers -->
<!-- 									who have Applied</span></a> -->
<!-- 						</h2> -->
<!-- 						<p class="mbr-fonts-style text1 mbr-text display-6">See people -->
<!-- 							who have applied to job posted by you</p> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->



			<div class="col-lg-6 mbr-col-md-10">
				<div class="wrap">
					<div class="ico-wrap">
						<span class="glyphicon glyphicon-briefcase"></span>
					</div>
					<div class="text-wrap vcenter">
						<h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5">
							<a href="/topjobs/emp/purchaselogin">Purchase <span>Login</span></a>
						</h2>
						<p class="mbr-fonts-style text1 mbr-text display-6">Purchase
							Logins to view resumes submitted against a Job</p>
					</div>
				</div>
			</div>

		</div>

		<script>
		var jobCreated = '<%=request.getAttribute("jobCreated")%>'
		var jobCreated = '<%=request.getAttribute("purchaseMessage")%>'
		if(jobCreated!='null'){
			alert(jobCreated);
		}
		if(purchaseMessage!='null'){
			alert(jobCreated);
		}
		</script>
		
</body>
</html>
