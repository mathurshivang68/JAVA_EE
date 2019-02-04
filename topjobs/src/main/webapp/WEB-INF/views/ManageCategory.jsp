<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.niit.domain.*"%>
<%@ page import="com.niit.service.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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

<% List<Job> jobList = (List<Job>) request.getAttribute("listJobs"); %>
<h1>Select a job to change it's category.</h1>
<c:set var="jobs" value="<%=jobList %>"/>

<form action="/topjobs/admin/ManageCategoryServlet">
<table style="border:1px solid;">
<tr>
<th>Job Id</th>
<th>Job Title</th>
<th>Company</th>
<th>Job category</th>
<th>Choose</th>
</tr>


<c:forEach var="job" items="${jobs}">
<tr>
<td><c:out value="${job.jobId}"></c:out></td>
<td><c:out value="${job.jobTitle}"></c:out></td>
<td><c:out value="${job.jobName}"></c:out></td>
<td><c:out value="${job.jobCategory}"></c:out></td>
<td><input type="radio" name="jobId" value="${job.jobId}"></td>
</tr>
</c:forEach>
<tr></tr>
<tr></tr>

<tr>
<td>Change Category to: </td>
<td></td>
<td></td>
<td><select name=category><option>Administrative</option><option>IT</option><option>Finance</option></select></td>
<td></td>
</tr>

</table>
<input type="submit" class="btn" value="Change Category">
</form>

</body>
</html>