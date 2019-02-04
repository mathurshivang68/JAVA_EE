<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.niit.domain.JobSeekerEvents" %>   
<%@ page import="java.util.List" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html>
<html>
<head>
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


</head>
<body>

<%@include file="Header.jsp" %>

<% List<JobSeekerEvents> eventList = (List<JobSeekerEvents>) request.getAttribute("eventList");
	String message = (String)request.getAttribute("message");
%>
<h2>Jobs you have applied for:  <%=eventList.size() %></h2>
<c:set var="message" value="<%=message %>"/>
<c:if test="${not empty message}">    
	<c:out value="${message}"/>
	<a href="/topjobs/job/ShowJobServlet">Apply for Jobs</a>
</c:if>
<table>
<c:set var="eventList" value="<%=eventList%>"/>
			<tr>
				<th>Job Id</th>
				<th>Details</th>
			</tr>
<c:forEach var="event" items="${eventList}">
			
			
			<tr>
				<td><c:out value="${event.job.jobId}"></c:out></td>
				<td><a href="/topjobs/job/ShowThisJobServlet?thisJob=${event.job.jobId}">Show this Job</a>	</td>
			</tr>
</c:forEach>
</table>
</body>
</html>