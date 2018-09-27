<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Http Details</title>
</head>
<body>
<% out.println("<h3>Request Details</h3>"); %>
<% response.setContentType("html/text"); %>
<ul>
<li>Request Method: <%=request.getMethod() %>
<li>Request URL: <%=request.getRequestURI() %>
<li>Request Protocol: <%=request.getProtocol() %>
<li>



</ul>






</body>
</html>