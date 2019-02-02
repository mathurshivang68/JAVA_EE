<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.niit.domain.Job" %> 
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>    
    
    
<!DOCTYPE html>
<html>
<head>
<script language="javascript">
function perc1() {
	var price=300, finalcost=0;
	
	  discount = <%=getServletContext().getInitParameter("discountValue")%>
	logins = document.discountcalc.logins.value;
	 /* discount = document.discountcalc.discount.value; */
	 discountperc=(100-discount)/100;
	 

	 
	 if(logins>3)
	 {
		finalcost=(logins*price*discountperc);	 
	 }
	 else{
		 finalcost=logins*price;	 
	 }
	 
	 document.discountcalc.finalcost.value = finalcost
	 
	 
	 
	 }
	
	</script>
	
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../CSS/landingpage.css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%@include file="Header.jsp"%>
	</head>
	<body>

<div class="container">	
	<section class="form-gradient mb-5">

  
  <div class="card">

    <!--Header-->
    <div class="header peach-gradient">

      <div class="row d-flex justify-content-center">
        <h3 class="white-text mb-0 py-5 font-weight-bold">Purchase Login</h3>
      </div>
<div class="card-body mx-4">
<div class="md-form"></div>
<h2>One Login is valid for 30 Days </h2>
<h6>Note: Get Discount of 30% on fees if you purchase 6 or more Logins</h6>

<FORM name="discountcalc" method="post" action="/topjobs/emp/PurchaseLoginServlet">
	<TABLE cellSpacing=1 cellPadding=1 border=1>
	  <TBODY align="center">
	  <TR>
	    <TD align=middle colSpan=3><B><FONT size=4>Discount Calculator</FONT></B> 
	      </TD>
	  <tr>
	
	   <label for="logins">No of Logins:</label>
      <select name="logins" width: 150px
        margin: 10px class="form-control" >
        <option selected>Choose...</option>
  
        
  
<option value="1">1 month</option>
<option value="3">3 months</option>
<option value="6">6 months</option>
<option value="12">12 months</option>	  
	  
	  </select>
	  </tr>
	  	
	  	<!-- <td>No of Logins: <input size=5 name=logins ></TD>-->
	    <!-- <td>Discount: <input size=5 name=discount> </td> -->
	    
	    <td>Final Rate: <input maxLength=40 size=5 name=finalcost></td>
	    <td><input onclick=perc1() type=button value=Calculate></td>
	  <TR>
	    <TD align=middle 
	colSpan=3><INPUT type=reset value=Reset></TD></TR></TBODY></TABLE>
	
	
	<button type="submit" class="btn btn-primary" value="PAY">PAY</button> 
	




</form>
    </div>
</div>
<!--   getServletContext().getInitParameter("discount")  -->

	
	
	
<%--    <%=getServletContext().getInitParameter("discountValue") %> --%>

<%-- 	<%= config.getInitParameter("discount1") %>  --%>  
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
			integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
			integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
			integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
			crossorigin="anonymous">
</script>


<script type="text/javascript">
var selectLogins = '<%=request.getAttribute("selectLogins")%>';
if(selectLogins!='null'){
	alert(selectLogins);
}
</script>	
	
	</body>

</html>