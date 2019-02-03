<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%@include file="Header.jsp" %>
<% session.invalidate(); %>

<div class="container-fluid">
<div class="row jumbotron" style="background-color: #FFF">
	<div class="col-xs-12 col-sm-12 col-md-6">
		<p class="lead" style="font-weight: 900; padding-left:500px; padding-top: 11px;">You have been logged out successfully! </p>
	</div>
	<div class="col-xs-12 col-sm-12 col-md-6" style="padding-left:100px;">
		<a href="/topjobs/LoginServlet"><button type="button" class="btn btn-outline-secondary btn-lg">Login Again</button></a>
	</div>
</div>
</div>



</body>
</html>