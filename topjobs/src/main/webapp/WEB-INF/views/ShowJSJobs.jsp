<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.niit.domain.Job"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	<h1 style="font-weight: 900;">Welcome <%= request.getRemoteUser() %></h1>
	<h3>Jobs for you: <%= ls.size()%></h3>

<form action="ApplyJobServlet" id="outer">
	
	<table>
		<tr>
			<th>Job Name</th>
			<th>Choose</th>
			<th>Details</th>
		</tr>
		<c:set var="jobList" value="<%=ls%>" />
		<c:forEach var="job" items="<%=ls%>">
			<tr>
				<td><c:out value="${job.jobTitle}"></c:out></td>
				<td><input type="checkbox" name="jobs" value="${job.jobId}"></td>
				<td><a href="/topjobs/job/ShowThisJobServlet?thisJob=${job.jobId}">Show this Job</a>	</td>
			</tr>
		</c:forEach>
	</table>
<input type="submit" class="btn" style="margin: 7px" value="Apply" id="outer">
</form>



<script>
var noSelection = '<%=request.getAttribute("noSelection")%>';
if(noSelection!='null'){
	alert(noSelection);
}

</script>
</body>
</html>