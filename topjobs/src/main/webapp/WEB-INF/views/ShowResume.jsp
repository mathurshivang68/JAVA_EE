<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.niit.ro.ResumeRequest" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="/topjobs/CSS/header.css" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>TopJobs</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/solid.css">
	<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
	
	<link href="/topjobs/CSS/style.css" rel="stylesheet">

</head>
<body>
<%@include file="Header.jsp" %>
<%ResumeRequest resume=(ResumeRequest)request.getAttribute("resume");%>
<c:set var="res" value="<%=resume%>" />
	

<div class="container-fluid padding">
<div class="row padding">
	<div class="col-lg-6">
		<h1 style="font-weight: 900">Resume</h1>
		<h4 style="padding-left: 4px; background-color: #dddddd;">Name:</h4>
		<p><c:out value="${res.name}"/></p>
		<h4 style="padding-left: 4px; background-color: #dddddd;">Email:</h4>
		<p><c:out value="${res.email}"/></p>
		<h4 style="padding-left: 4px; background-color: #dddddd;">Contact:</h4>
		<p><c:out value="${res.contactNum}"/></p>
		<h4 style="padding-left: 4px; background-color: #dddddd;">Address:</h4>
		<p><c:out value="${res.address}"/></p>
		<h4 style="padding-left: 4px; background-color: #dddddd;">Marks:</h4>
		<p><c:out value="${res.jsMarks}"/></p>				
		<h4 style="padding-left: 4px; background-color: #dddddd;">Skills:</h4>
		<p><c:forEach var="rs" items="${res.skills}"><c:out value="${rs}    "></c:out></c:forEach></p>
	</div>
	<div class="col-lg-6">
		<img src="/topjobs/images/resume1.png" class="img-fluid">
	</div>
</div>
<hr class="my-4">
</div>



</body>
</html>