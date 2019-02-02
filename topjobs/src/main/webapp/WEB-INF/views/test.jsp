<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Create Resume</title>

</head>

<body>


<form action="/topjobs/test1" id="myForm" onsubmit="return validate()" method="post">

Name:<input type="text" name="fname" id="fname"> 
Contacte:<input type="text" name="contact" id="contact"> 
<input type="submit" >
</form>

<script>
function validate(){
    var phone = "^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$";
	if(  document.getElementById("fname").value == "" ) {
        alert( "Please provide your name!" );
        return false;
     }
	if( !document.getElementById("contact").value.match(phone) ) {
        alert( "Please provide valid mobile number" );
        document.getElementById("contact").focus() ;
        return false;
     }
	return true;
}
</script>

</body>
</html>





