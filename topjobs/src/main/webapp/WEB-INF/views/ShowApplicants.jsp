<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.niit.domain.JobSeeker" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page import="java.util.List" %>   
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% List<JobSeeker> ls =(List)request.getAttribute("jobSeekerList"); %>
<h1>Welcome <%= request.getRemoteUser() %></h1>

<h1>No of applicants: <%= ls.size()%> </h1>
<table>

<c:set var="jobSeekerList" value="<%=ls%>" />
<c:forEach var="jobSeeker" items="${jobSeekerList}">
				
				<tr>
<%-- 				<td><c:out value="${jobSeeker.user_name}"></c:out></td> --%>
				<td><a href="/topjobs/emp/ShowResumeEmployerServlet?thisJobSeeker=${jobSeeker.user_name}"><c:out value="${jobSeeker.user_name}"></c:out></a></td>
				</tr>
</c:forEach>

</table>

<a href="/topjobs/LoginServlet">Home</a>

</body>

</body>
</html>