<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="com.niit.domain.EmployerEvents" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% List<EmployerEvents> employerEventsList = (List)request.getAttribute("employerEventsList"); %>
<table>
<c:set var="eventList" value="<%=employerEventsList%>"/>
<c:forEach var="event" items="${eventList}">
			<tr>
				<td><c:out value="${event.job.jobId}"></c:out></td>
				<td><a href="/topjobs/job/ShowThisJobServlet?thisJob=${event.job.jobId}">Show this Job</a>	</td>
			</tr>
</c:forEach>
</table>
</body>
</html>