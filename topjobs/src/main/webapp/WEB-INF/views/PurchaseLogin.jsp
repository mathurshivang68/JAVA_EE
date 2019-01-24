<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script language="javascript">
function perc1() {
	var price=300, finalcost=0;
	 logins = document.discountcalc.logins.value;
	 discount = document.discountcalc.discount.value;
	 discountperc=(100-discount)/100;
	 
	 
	 if(logins>2)
	 {
		finalcost=(logins*price*discountperc);	 
	 }
	 else{
		 finalcost=logins*price;	 
	 }
	 
	 document.discountcalc.finalcost.value = finalcost
	 
	 
	 
	 }
	
	</script>
	<body>
	<h1>Purchase additional Logins</h1>
<h2>One Login is valid for 30 Days </h2>

<h6>Note: Get Discount of 30% on fees if you purchase 5 or more Logins</h6>
<!--   getServletContext().getInitParameter("discount")  -->

	<FORM name="discountcalc" method="post">
	<TABLE cellSpacing=1 cellPadding=1 border=1>
	  <TBODY>
	  <TR>
	    <TD align=middle colSpan=3><B><FONT size=4>Percentage Calculator</FONT></B> 
	      </TD>
	  <tr>
	  	<td>No of Logins: <input size=5 name=logins></TD>
	    <td>Discount: <input size=5 name=discount> </td>
	    
	    <td>Final Rate: <input maxLength=40 size=5 name=finalcost></td>
	    <td><input onclick=perc1() type=button value=Calculate></td>
	  <TR>
	    <TD align=middle 
	colSpan=3><INPUT type=reset value=Reset></TD></TR></TBODY></TABLE></FORM>


</body>
</head>
</html>