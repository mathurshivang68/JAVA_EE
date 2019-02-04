<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*"%>
<%@ page import="com.niit.domain.PurchaseEvents" %>
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

<% List<PurchaseEvents> pList = (List<PurchaseEvents>) request.getAttribute("purchaseList"); %>

<c:set var="purchases" value="<%=pList %>"/>
<form action="/topjobs/admin/FinalizePurchaseServlet" method="post">
<table>
<tr>
<th>Employer</th>
<th>Number of Logins</th>
<th>Choose an Employer</th>
</tr>

<c:forEach var="purchase" items="${purchases}">
<tr>
<td>Employer: <c:out value="${purchase.employer.user_name}"></c:out></td>
<td>Logins: <c:out value="${purchase.logins}"></c:out></td>

<td><input type="radio" name="eventId" value="${purchase.eventId}"></td>
</tr>

</c:forEach>

</table>

<input type="submit" class="btn" style="margin: 7px" name="finalize" value="Delete">
<input type="submit" class="btn" style="margin: 7px" name="finalize" value="Approve">
</form>

</body>
</html>