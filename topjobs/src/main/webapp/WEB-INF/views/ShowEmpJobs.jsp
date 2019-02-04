<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.niit.domain.Job" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ page isELIgnored="false"%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<link href="/topjobs/CSS/style.css" rel="stylesheet">
</head>

<body>
<%@include file="Header.jsp" %>
<% List<Job> ls =(List)request.getAttribute("JobList"); %>
<h1 style="font-weight: 900;">Welcome <%= request.getRemoteUser() %> </h1>

<h3>Jobs you have posted:  <%= ls.size()%></h3>
<div>
<table>
		<tr>
			<th>Job Name</th>
			<th>Details</th>
			<th>Applicants</th>
		</tr>
		<c:forEach var="job" items="<%=ls%>">
			<tr>
				<td><c:out value="${job.jobTitle}"></c:out></td>
				<td><a href="/topjobs/emp/ShowThisJobServlet?thisJob=${job.jobId}">Show this Job</a></td>
				<td><a href="/topjobs/emp/ShowApplicantServlet?thisJob=${job.jobId}">Show Applicants who have applied</a></td>
				</tr>
		</c:forEach>
	</table>
</div>	


<script type="text/javascript">
var noApplicant = '<%=request.getAttribute("noApplicant")%>';
if(noApplicant!='null'){
	alert(noApplicant);
}
</script>
</body>
</html>