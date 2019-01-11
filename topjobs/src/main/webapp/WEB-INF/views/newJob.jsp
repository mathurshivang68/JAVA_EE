<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="C:\Users\Shivang\eclipse-workspace\topjobs\topjobs\src\main\webapp\WEB-INF\CSS\TopjobsStyle.css" />
</head>
<body style="background-color: lightsalmon">
<header class="headerhome"></header>

<div class="row p-3 mb-2 bg-secondary text-primary">
<h1>Lets Create a New Job</h1> 
</div>

<form id="newjob" action="JobServlet"> 																								 <!job servlet>
  <div class=""row p-3 mb-2 bg-secondary text-primary">
    <div class="form-group col-md-6">
      <p><label for="jobTitle">Job Title:</label>
      <input type="text" class="form-control" name="jobTitle" placeholder="jobTitle"></p>
    </div>
    
  </div>
  <div class="form-group">
    <label for="companyName">Company Name:</label>
    <input type="text" class="form-control" name="companyName" form="newjob">
     
  </div>

<div class="form-group col-md-6">
      <label for="jobDesc">Job Description</label>
      <textarea  rows="4" cols="50" name="jobDesc" id="jobDesc" form="newjob">
    </textarea>
    </div>
   
     <div class="form-group col-md-4">
      <label for="jobState1">Working City 1</label>
      <select id="jobState1" class="form-control">
        <option selected>Choose...</option>
  
        
<option>Kolkata</option>
<option>Chennai</option>
<option>Bangalore</option>
<option>Gurgaon</option>
<option>Delhi</option>
<option>Noida</option>
<option>Kochi</option>
<option>Chandigarh</option>
<option>Jaipur</option>
</select>
              
 </div>

<div class="form-group col-md-4">
      <label for="jobState2">Working State 2</label>
      <select id="jobState2" class="form-control">
        <option selected>Choose...</option>
  
<option>Kolkata</option>
<option>Chennai</option>
<option>Bangalore</option>
<option>Gurgaon</option>
<option>Delhi</option>
<option>Noida</option>
<option>Kochi</option>
<option>Chandigarh</option>
<option>Jaipur</option>
</select>
              
 </div>

<div class="form-group col-md-4">
      <label for="jobState3">Working State 3</label>
      <select id="jobState3" class="form-control">
        <option selected>Choose...</option>
  
        
  
<option>Kolkata</option>
<option>Chennai</option>
<option>Bangalore</option>
<option>Gurgaon</option>
<option>Delhi</option>
<option>Noida</option>
<option>Kochi</option>
<option>Chandigarh</option>
<option>Jaipur</option>
</select>
              
 </div>


    
<div>
<div class="form-group col-md-2">
 <label for="salary">CTC Offered: </label>
 <input type= "text" class="form-control" id="salary">
 </div>
</div> 

<div>
<div class="form-group col-md-2">
 <label for="exp">Experience Required: </label>
 <input type= "text" class="form-control" id="exp">
 </div>
</div> 


<div>
<div class="form-group col-md-2">
<p><label for="jobskills">Please select the skills required for this job: </label></p>

Java <input type="checkbox" name="jobskills" value="java"  /><br />

C++ <input type="checkbox" name="jobskills" value="c++"  /><br /> 

Database <input type="checkbox" name="jobskills" value="database"  /><br /> 

Networking <input type="checkbox" name="jobskills" value="networking"  />

Digital Marketing <input type="checkbox" name="jobskills" value="digitalm"  /><br /> 

Electronics <input type="checkbox" name="jobskills" value="electronics"  /><br /> 

Mechanical <input type="checkbox" name="jobskills" value="mechanical"  /><br /> 

AutoCAD <input type="checkbox" name="jobskills" value="autocad"  /><br /> 

Big Data <input type="checkbox" name="jobskills" value="bigdata"  /><br /> 

HTML/CSS <input type="checkbox" name="jobskills" value="html"  /><br /> 
</div>

  
 
  <button type="submit" class="btn btn-primary" value="SUBMIT">SUBMIT</button>  														<!job servlet>

</div>

</form>

<p><a href="/topjobs/ShowJobServlet">Show Jobs</p></a>




<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


</body>
</html>