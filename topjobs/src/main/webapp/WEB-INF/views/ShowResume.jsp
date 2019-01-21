<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
 <%@ page import="com.niit.domain.Resume" %> 
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resume Show here</title>
</head>
<body>
<%
Resume resume=(Resume)request.getAttribute("resume");
%>

<h1>Resume</h1>
<table>
<c:set var="resume" value="<%=resume%>" />
<c:forEach var="res" items="${resume }">
	<tr>
	<td>Resume Id: <c:out value="${res.resumeId}"/></td>
	<td>Times Viewed: <c:out value="${res.timesViewed}"/></td>
		<td>Email: <c:out value="${res.email}"/></td>
		<td>Contact Number: <c:out value="${res.contactNum}"/></td>
		<td>Address: <c:out value="${res.addr}"/></td>
		
</c:forEach>



</table>		
		<table>	

		<tr>Job Skills:</tr> 	
	<c:forEach var="rs" items="${resume.rskill}">
	<tr><c:out value="${rs.skill}"></c:out>
	</tr>
	</c:forEach>
		</table>
		
		
		
	
	
	</tr>
	





</body>
</html>