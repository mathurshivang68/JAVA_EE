<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.niit.domain.Job" %> 
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="/topjobs/CSS/showelements.css" />
   <link href="https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>This Job</title>
</head>
<body>
<%
Job jobDesc=(Job)request.getAttribute("thisJob"); 

%>
<c:set var="job" value="<%=jobDesc%>" />


<div class="columns-block">
<div class="left-col-block blocks">
    <header class="header">
        <div class="content text-center">
            <h1><c:out value="${job.jobName}"></c:out></h1>

            <p class="lead">JOIN US AT <c:out value="${job.jobName}"></c:out></p>
            <ul class="social-icon">
                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-slack" aria-hidden="true"></i></a></li>
                <li><a href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <div class="profile-img"></div>
    </header>
    <!-- .header-->
</div>












<table>

<tr><td>Job Id: <c:out value="${job.jobId}"></c:out></td></tr>

<tr><td>Company Name: <c:out value="${job.jobName}"></c:out></td></tr>
<tr><td>Job Title: <c:out value="${job.jobTitle}"></c:out></td></tr>
<tr><td>Job Description: <c:out value="${job.jobDescription}"></c:out></td></tr>

</table>
<!-- jquery -->
<script src="js/jquery-2.1.4.min.js"></script>

<!-- Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<script src="js/scripts.js"></script>
</body>
</body>
</html>