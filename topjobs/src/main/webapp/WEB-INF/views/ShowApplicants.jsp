<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.niit.domain.JobSeekerEvents" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page import="java.util.List" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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

<% List<JobSeekerEvents> ls =(List<JobSeekerEvents>)request.getAttribute("jobSeekerEventsList");%>
<h1>Welcome <%= request.getRemoteUser() %></h1>

<h1>No of applicants: <%= ls.size()%> </h1>

<form action="/topjobs/emp/SelectApplicantServlet">
<table>
<c:set var="jobSeekerEventsList" value="<%=ls%>" />

				<tr>
				<th>JobSeeker</th>
				<th>Resume Details</th>
				<th>Choose</th>
				</tr>
				

<c:forEach var="jobSeekerEvent" items="${jobSeekerEventsList}">
				
				<tr>
					<td><c:out value="${jobSeekerEvent.jobSeeker.user_name}"></c:out></td>
					<td><a href="/topjobs/emp/ShowResumeEmployerServlet?thisJobSeeker=${jobSeekerEvent.jobSeeker.user_name}">Show Resume</a></td>
					<td><input type="checkbox" name="jobSeekerEventId" value="${jobSeekerEvent.eventId}"></td>
				</tr>
					<input type="hidden" name="thisJob" value="<%=request.getParameter("thisJob")%>">
</c:forEach>
</table>
<input type="submit" class="btn" value="Select Applicants">
</form>

</body>

</body>
</html>