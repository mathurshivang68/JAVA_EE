<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="java.util.*" %>   
<%@ page import ="jdbc1.*" %>
<%@ page import ="java.lang.*" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=ISO-8859-1">
<style>
h1{color:blue}
h2{color:red}
</style>
<title>My 12First JSP</title>

<body>
<h1>My First JSP</h1>
<h2><%=new String("My First JSP") %></h2> 
<h2><%= new Date() %></h2>
<h2><%=new EmployeeDAO().getEmployee().getFirst_name() %></h2>

<%
EmployeeDAO eDAO=new EmployeeDAO();
List<Employee> ls= eDAO.getEmployeesHQLWithConditions();
Iterator<Employee> it=ls.iterator();
%>
<table border="1"><thead><th>FName</th></thead>
<%
while(it.hasNext())  {
	Employee emp=it.next();
	%>
	<tr><td><%=emp.getFirst_name()%></td> <td><%=emp.getLast_name()%></td></tr>;
	<% } %>
	<br>
	
	
	
	</table>
	<h3>
	<jsp:useBean id="empl" class="jdbc1.Employee"/>
	<jsp:setProperty property="first_name" name="empl" value="Mahesh"/>
	<jsp:getProperty property="first_name" name="empl"/>
	</h3>
	
<h3>JSTL Functions</h3>
<c:set var="string1" value="This is first string"/>
<c:set var="string2" value="${fn:split(string1, ' ') }" />










</body>
</html>