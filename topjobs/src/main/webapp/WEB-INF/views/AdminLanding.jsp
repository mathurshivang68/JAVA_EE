<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
  	<!--NAVBAR USER PART  -->
  	
<ul class="nav navbar-nav navbar-right">
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"> <span class="glyphicon glyphicon-user"></span> 
				<strong><%=request.getRemoteUser()%></strong> <span>
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
	
	
	
<!-- jumbotron start -->
<div class="container">
	<div class="jumbotron jumbotron-fluid">
		  <h1 class="display-4">Hello Admin!</h1>
  
			<p class="lead">Welcome to TopJobs.</p>
 		  <hr class="my-4">
  		  <p class="lead">With Topjobs you can Manage Employer Jobs and Purchases
   	      </p>
	</div>
 </div>

    <div class="container">
    
    	
    		<div class="row mbr-justify-content-center">
    
                <div class="col-lg-6 mbr-col-md-10">
                    <div class="wrap">
                        <div class="ico-wrap">
                            <span class="glyphicon glyphicon-user"></span>
                        </div>
                        <div class="text-wrap vcenter">
                            <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><a href="/topjobs/admin/ManageJobServlet?manage=job">Delete <span>Jobs</span></a></h2>
                            <p class="mbr-fonts-style text1 mbr-text display-6">Delete Expired Jobs posted by the Employers</p>
                        </div>
                    </div>
                </div>
               
                <div class="col-lg-6 mbr-col-md-10">
                    <div class="wrap">
                        <div class="ico-wrap">
                            <span class="glyphicon glyphicon-briefcase"></span>
                        </div>
                        <div class="text-wrap vcenter">
                            <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><a href="/topjobs/admin/ManagePurchasesServlet?">Manage
                                <span>Purchases</span>
                            </a></h2>
                            <p class="mbr-fonts-style text1 mbr-text display-6">Manage purchase requests by the Employers</p>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-6 mbr-col-md-10">
                    <div class="wrap">
                        <div class="ico-wrap">
                            <span class="glyphicon glyphicon-briefcase"></span>
                        </div>
                        <div class="text-wrap vcenter">
                            <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><a href="/topjobs/admin/ManageJobServlet?manage=category">Manage
                                <span>Jobs Category</span></a>
                            </h2>
                            <p class="mbr-fonts-style text1 mbr-text display-6">Alter Jobs Category</p>
                          </div>
                        </div>
                   </div> 
            
    
                
            </div>
    
    </div>
    

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>






</body>
</html>