<%@ page 
language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@ page import="com.niit.domain.Job" %>
    <%@ page import="com.niit.service.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Jobs</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>
<%@include file="Header.jsp" %>
<div class=""row p-3 mb-2 bg-secondary text-primary">

<% 
   JobService js=new JobService();
   List<Job> ls =js.getAllJobs();
    
%>

<h1>Apply from these jobs</h1>
<h2><%=ls.size()%> Jobs</h2>

<form action="/topjobs/job/ApplyJobServlet" id="jobApply">


<div class="form-group">


<c:set var="jobList" value="<%=ls%>" /> 
<c:forEach var="job" items="${jobList}">
				
				<div class="card" style="width: 12rem;">
  <img class="glyphicon glyphicon-user" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><c:out value="${job.jobTitle }"></c:out></h5>
    <p class="card-text">Company Name:<c:out value="${job.jobName }"></c:out></p>
    <a href="/topjobs/emp/ShowThisJobServlet?thisJob=${job.jobId}" class="btn btn-primary"></a>
  </div>
</div>
				
				
				
				<%-- 
				<tr>
					
					<td>Job Title: <c:out value="${job.jobTitle}"></c:out></td>
					<td>  Company Name: <c:out value="${job.jobName}"></c:out></td>
					<td>${job.jobId}<input type="checkbox" name="jobs" value="${job.jobId}"></td>
					<td><a href="/topjobs/emp/ShowThisJobServlet?thisJob=${job.jobId}">Show Job</a></td>
							
					<input type="submit" value="SHOW">
					
					 --%> 
					</c:forEach>
					</div>
					 </form>
					
					
					<%-- <td>${job.jobId}<input type=button onClick=window.open("/topjobs/src/main/webapp/index.jsp","Ratting","width=550,
height=170,left=150,top=200,toolbar=0,status=0,"); value="Open Window"></td> --%>
			


<button type="submit" class="btn btn-primary" value="SUBMIT">APPLY JOBS</button>


</form>
</div>


<p><a href="logout">Logout</a></p>



</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>



</body>
</html>