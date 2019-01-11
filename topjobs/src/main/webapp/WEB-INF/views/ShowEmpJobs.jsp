<%@ page 
language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@ page import="com.niit.domain.Job" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>



    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jobs by You</title>
<link rel="stylesheet" type="text/css" href="C:\Users\Shivang\eclipse-workspace\topjobs\topjobs\src\main\webapp\WEB-INF\CSS\TopjobsStyle.css" />

</head>
<body style="background-color: lightsalmon">
<header class="headerhome"></header>

<div>
<% List<Job> ls =(List)request.getAttribute("JobList"); %>

<h1>Jobs for you</h1>
<h2><%=ls.size()%> Jobs</h2>
<table>

<c:set var="jobList" value="<%=ls%>" />
<c:forEach var="job" items="${jobList}">
				
				<tr>
					<td><c:out value="${job.jobDescription}"></c:out></td>
					<td><c:out value="${job.jobTitle}"></c:out></td>
					
				</tr>
</c:forEach>

</table>

</div>







</body>
</html>