<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>




<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/topjobs/CSS/homepage.css" />
<title>HOME</title>
<%@include file="Header.jsp" %>
</head>

<body> 

  
  

<div id="slide" class="carousel slide" data-ride="carousel">

  <!-- Indicators -->
  <ul class="carousel-indicators">
    <li data-target="#slide" data-slide-to="0" class="active"></li>
    <li data-target="#slide" data-slide-to="1"></li>
  </ul>
  
  <!-- The slideshow -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="/topjobs/images/laptop.jpg" alt="Jobseeker" width="800" height="200">
    <div class="carousel-caption">
          <h3>For JobSeekers</h3>
          <p>Connect To Opportunity. Look for Jobs matching your Skills!</p>
        </div>	
	</div>
	
	
    <div class="carousel-item">
      <img src="/topjobs/images/workspace.jpg" alt="Employer" width="800" height="200">
    <div class="carousel-caption">
        <h3>For Employers</h3>
        <p>Get your jobs listed in no time, upload a job today</p>
    </div>    
       </div>

    
  <!-- Left and right controls -->
  <a class="carousel-control-prev" href="#slider" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#slider" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

  
  
  <section class="service-sec" id="login">
  <div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="heading">
      <h2><a href="LoginServlet"><small> Already have a Account? Login </small></a>Dont have one. <a href="register">Register in seconds.</a></h2>
    </div>
    </div> 
   </div>
       
       
       
       
        <div class="row">
            <div class="col-md-6 text-sm-center service-block"> <i class="fa fa-plus" aria-hidden="true"></i>
          <h3>Get Discovered by Employers</h3>
          <p></p>
        </div>
        <div class="col-md-6 text-sm-center service-block"> <i class="fa fa-leaf" aria-hidden="true"></i>
          <h3>Access Quick Apply Options</h3>
          <p>With our interface Job Seekers can apply to jobs instantly.All services are totally free for Jobseekers</p>
        </div>
        </div>
        
        
        <div class="row"> 
        <div class="col-md-6 text-sm-center service-block"> <i class="fa fa-leaf" aria-hidden="true"></i>
          <h3>Recruiters Zone</h3>
          <p>Buy the premiuim membership and easily access the Resume of JobSeekers.</p>
      
        </div>
        
        <div class="col-md-6 text-sm-center service-block"> <i class="fa fa-bell" aria-hidden="true"></i>
          <h3>Boosts Energy</h3>
          <p>Never in all their history have men been able truly to conceive of the world as one: a single sphere, a globe, having the qualities of a globe.</p>
        </div>
        </div>
          <!-- /.row --> 
</div>  

</div>
</section>





<section class="about-sec parallax-section" id="about">
  <div class="container">
    <div class="row">
      <div class="col-md-3">
        <h2><small>Who We Are</small>About<br>
          Our Blog</h2>
      </div>
      <div class="col-md-4">
        <p>TopJobs is a growing  online Staffing solutions provider and Modern Technology Job Portal company constituted with very much experienced people in core team in 2018.</p>
        <p>We headquartered in Industrial hub Noida. We are in the business of providing organizations with full service of recruitment solutions to efficiently screen and select the most qualified candidates for their current job openings.</p>
      </div>
      <div class="col-md-4">
        <p>We foster a collaborative workplace that strives to create the best experience for job seekers as well as for the Employers.</p>
        <p>Topjobs works closely to bridge the gap between talent & opportunities and offers end-to-end recruitment solutions. Topjobs brings candidates and top employers under one roof.</p>
        <p><a href="#" class="btn btn-transparent-white btn-capsul">Explore More</a></p>
      </div>
    </div>
  </div>
  
        
</section>

      
      











		


</body>
</html>