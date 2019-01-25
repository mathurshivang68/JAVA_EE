<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
    <%@ page import="com.niit.domain.*" %>
    <%@ page import="com.niit.service.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
    
    
    
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>APPLIED JOBS SHOW HERE</title>
</head>
<body>
<header class="headerhome"></header>

<div class=""row p-3 mb-2 bg-secondary text-primary">
<% JobService js=new JobService();
	JobSeeker jobs=new JobSeeker();
	jobs.setUserName(request.getRemoteUser());
	List<JobSeekerEvents> ls=js.showAppliedJobs(jobs);
%>
<h1>you have applied for these jobs</h1>
<p><%=ls.size() %> JOBS</p>
</div>
<div class="form-group">
<table>
<tr>


</table>



</body>
</html>