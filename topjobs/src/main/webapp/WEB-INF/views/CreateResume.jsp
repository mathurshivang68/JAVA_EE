<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Create Resume</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<script>
      function validate() {
      var phone = "^([0|\+[0-9]{1,5})?([7-9][0-9]{9})$";
      var x = document.getElementsByName("skills");
      var i,j=0;
      for (i = 0; i < x.length; i++) {
        if (x[i].checked) {
        	j++;
        }
      }
      
         if( document.getElementById("fname").value == "" ) {
            alert( "Please provide your name!" );
            document.getElementById("fname").focus() ;
            return false;
         }
         if( document.getElementById("email").value == "" ) {
             alert( "Please provide your Email!" );
             document.getElementById("email").focus() ;
             return false;
          }
         if( !document.getElementById("contactNo").value.match(phone) ) {
             alert( "Please provide valid mobile number" );
             document.getElementById("contactNo").focus() ;
             return false;
          }
         if( document.getElementById("address").value == "" ) {
             alert( "Please provide your address!" );
             document.getElementById("address").focus() ;
             return false;
          }
         if( document.getElementById("inputCity").value == "" ) {
             alert( "Please provide your City!" );
             document.getElementById("inputCity").focus() ;
             return false;
          }
         if( document.getElementById("inputState").value == "Choose" ) {
             alert( "Please provide your State!" );
             document.getElementById("inputState").focus() ;
             return false;
          }
         if( document.getElementById("inputZip").value == "" || document.getElementById("inputZip").value.length != 6 ) {
            alert( "Please provide a proper zip code." );
            document.getElementById("inputZip").focus() ;
            return false;
         }
         if( document.getElementById("marks10").value == "" || 
        		 (!(document.getElementById("marks10").value>=0 && document.getElementById("marks10").value<=100)) ) {
            alert( "Please provide your 10th marks !" );
            document.getElementById("marks10").focus() ;
            return false;
         }
         if( document.getElementById("marks12").value == "" || 
        		 (!(document.getElementById("marks12").value>=0 && document.getElementById("marks12").value<=100)) ) {
             alert( "Please provide your 12th marks !" );
             document.getElementById("marks12").focus() ;
             return false;
          }
         if( document.getElementById("marksgrad").value == "" || 
        		 (!(document.getElementById("marksgrad").value>=0 && document.getElementById("marksgrad").value<=100)) ) {
             alert( "Please provide your Graduation marks !" );
             document.getElementById("marksgrad").focus() ;
             return false;
          }
         if( j==0 ) {
             alert( "Please provide your Skills !" );
             document.getElementById("marksgrad").focus() ;
             return false;
          }
         
         return( true );
      }
</script>

</head>
<body>
<%@include file="Header.jsp" %>

<h2> Lets Make Your Resume Now</h2>


<p>Hello <%=request.getRemoteUser() %>

<% if(request.getAttribute("message")!=null){
	out.println(request.getAttribute("message"));
	}
%>

<form action="/topjobs/job/ResumeServlet" id="myForm" onsubmit="return validate()" method="post" class="well form-horizontal">
    <fieldset>
    <div class="form-group">
    <label class="col-md-4 control-label">Name:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input type="text" name="name" id="fname" placeholder="Full Name"></div>
      </div>
     </div>
      
      
      <div class="form-group">
    <label class="col-md-4 control-label">Email:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
      <input type="text" name="email" id="email" placeholder="Email"></div>
      </div>
     </div>
      
      
      <div class="form-group">
    <label class="col-md-4 control-label">Contact No:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
      <input type="text" name="contactNo" id="contactNo" placeholder="Contact Number"></div>
     </div>
     </div>
      
   
   <div class="form-group">
    <label class="col-md-4 control-label">Address</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
      <textarea rows="4" cols="50" name="address" id="address"></textarea></div>
</div>
     </div>
    
    
    <div class="form-group">  
   <label class="col-md-4 control-label">City</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
   		 <input type="text" name="inputCity" id="inputCity"></div></div>
   		 </div>
   
   
   
   
   
   <div class="form-group">
   <label class="col-md-4 control-label">State</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
   	  <select name="inputState" id="inputState" >
        <option selected>Choose</option>
		<option>Andaman and Nicobar Islands</option>
		<option>Andhra Pradesh</option>
		<option>Arunachal Pradesh</option>
		<option>Assam</option>
		<option>Bihar</option>
		<option>Chandigarh</option>
		<option>Chhattisgarh</option>
		<option>Dadra and Nagar Haveli</option>
		<option>Daman and Diu</option>
		<option>Delhi</option>
		<option>Goa</option>
		<option>Gujarat</option>
		<option>Haryana</option>
		<option>Himachal Pradesh</option>
		<option>Jammu and Kashmir</option>
		<option>Jharkhand</option>
		<option>Karnataka</option>
		<option>Kerala</option>
		<option>Lakshadweep</option>
		<option>Madhya Pradesh</option>
		<option>Maharashtra</option>
		<option>Manipur</option>
		<option>Meghalaya</option>
		<option>Mizoram</option>
		<option>Nagaland</option>
		<option>Orissa</option>
		<option>Pondicherry</option>
		<option>Punjab</option>
		<option>Rajasthan</option>
		<option>Sikkim</option>
		<option>Tamil Nadu</option>
		<option>Tripura</option>
		<option>Uttaranchal</option>
		<option>Uttar Pradesh</option>
		<option>West Bengal</option>
		</select>	
   
   </div>
   </div>
   </div>
   
   
   <div class="form-group">  
   <label class="col-md-4 control-label">Zip</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
   		 <input type="text" name="inputzip" id="inputZip"></div></div>
   		 </div>
   
   <div class="form-group">  
   <label class="col-md-4 control-label">Marks in 10th:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
   		 <input type="number" name="marks10" id="marks10"></div></div>
   		 </div>
   
   
     <div class="form-group">  
   <label class="col-md-4 control-label">Marks in 12th:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
   		 <input type="number" name="marks12" id="marks12"></div></div>
   		 </div>
   
   
     <div class="form-group">  
   <label class="col-md-4 control-label">Marks in Graduation:</label>
    	<div class="col-md-8 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
   		 <input type="number" name="marksgrad" id="marksgrad"></div></div>
   		 </div>
   
   
<div class="form-group">  
   <label class="col-md-4 control-label">Please select the skills you are proficient in: </label>
    	<div class="col-md-12 inputGroupContainer">
       <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
       
          
		
		Java <input type="checkbox" name="skills" id="skills" value="java"/><br />
		C++ <input type="checkbox" name="skills" id="skills" value="c++"  /><br /> 
		Database <input type="checkbox" name="skills" id="skills" value="database"  /><br /> 
		Networking <input type="checkbox" name="skills" id="skills" value="networking"  />
		Digital Marketing <input type="checkbox" name="skills" id="skills" value="digitalm"  /><br /> 
		Electronics <input type="checkbox" name="skills" id="skills" value="electronics"  /><br /> 
		Mechanical <input type="checkbox" name="skills" id="skills" value="mechanical"  /><br /> 
		AutoCAD <input type="checkbox" name="skills" id="skills" value="autocad"  /><br /> 
		Big Data <input type="checkbox" name="skills" id="skills" value="bigdata"  /><br /> 
		HTML/CSS <input type="checkbox" name="skills" id="skills" value="html"  /><br /> 
		</div>
		</div>
		</div>
		
		  
 
  <button type="submit" id="myForm">SUBMIT</button>
</div>
</fieldset>  
</form>







<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>





</body>
</html>