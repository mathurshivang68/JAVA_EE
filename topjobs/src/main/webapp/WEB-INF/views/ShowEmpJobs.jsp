

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
   <%@ page import="java.util.*"%>
    <%@ page import="com.niit.domain.*" %>
    <%@ page import="com.niit.service.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
  <%@ page import="java.util.*"%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Jobs by You</title>
<link rel="stylesheet" type="text/css" href="C:\Users\Shivang\eclipse-workspace\topjobs\topjobs\src\main\webapp\WEB-INF\CSS\TopjobsStyle.css" />
 
</head>
<body style="background-color: lightsalmon">
<header class="headerhome"></header>

<div>
<%
JobService js=new JobService();
Employer emp=new Employer();

emp.setUserName(request.getRemoteUser());

List<Job> ls=js.showEmployerJobs(emp);


%>
<h1>Jobs List</h1>
<p><%=ls.size()%> Jobs</p>
<div>
<table>

<c:set var="jobList" value="<%=ls%>" />
<c:forEach var="job" items="${jobList}">
				
				<tr>
					<td><c:out value="${job.jobDescription}"></c:out></td>
					<td><c:out value="${job.jobTitle}"></c:out></td>
					<td><input type="checkbox" value=""></td>
				</tr>
</c:forEach>

</table>

</div>
</div>

</body>
</html>