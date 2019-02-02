<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Post Job</title>
<link rel="stylesheet" type="text/css" href="C:\Users\Shivang\eclipse-workspace\topjobs\topjobs\src\main\webapp\WEB-INF\CSS\landingpage.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  
 <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


</head>
<body>
<%@include file="Header.jsp" %>

<div class="row p-3 mb-2 bg-secondary text-primary">
<h1>Lets Create a New Job</h1> 
</div>
 
<form id="newjob" action="/topjobs/emp/JobServlet" class="well form-horizontal"> 																								 
		<fieldset>



			<div class="form-group">
				<label class="col-md-4 control-label">Job Title:</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-user"></i></span> <input type="text"
							class="form-control" name="jobTitle" placeholder="Job Title">
					</div>
				</div>
			</div>

			<div class="form-group">
				<label class="col-md-4 control-label">Company Name:</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-briefcase"></i></span> <input type="text"
							class="form-control" name="companyName" placeholder="Job Title"
							form="newjob">
					</div>
				</div>
			</div>



			<div class="form-group">
				<label class="col-md-4 control-label">Job Description:</label>
				<div class="col-md-8 inputGroupContainer">
					<div class="input-group">
						<span class="input-group-addon"><i
							class="glyphicon glyphicon-list-alt"></i></span>
						<textarea rows="4" cols="50" name="jobDesc" form="newjob"></textarea>
					</div>
				</div>
			</div>

			<br>

			<div class="form-group">
				<label class="col-md-4 control-label">Job Category:</label>
				<div class="col-md-8 inputGroupContainer">
				<div class="input-group">
					<span class="input-group-addon"><i
						class="glyphicon glyphicon-briefcase"></i></span> 
						<select class="form-control" name="jobCategory" >
						<option selected>Administrative</option>
						<option>Finance</option>
						<option>IT</option>
					</select>
				</div>
			</div>
			</div>
			
		</fieldset>
		<a></a>

		<button type="submit" class="btn btn-primary" value="SUBMIT">SUBMIT</button>  														<!job servlet>


</form>

<div class="col-lg-6 mbr-col-md-10">
                    <div class="wrap">
                        <div class="ico-wrap">
                            <span class="glyphicon glyphicon-briefcase"></span>
                        </div>
                        <div class="text-wrap vcenter">
                            <h2 class="mbr-fonts-style mbr-bold mbr-section-title3 display-5"><a href="/topjobs/emp/ShowJobServlet">Show
                                <span>Jobs I have Posted</span>
                            </a></h2>
                            <p class="mbr-fonts-style text1 mbr-text display-6">Show all Jobs posted by you</p>
                        </div>
                    </div>
                </div>
                


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<script>
var allFields = '<%=request.getAttribute("allFields")%>';
if(allFields!='null'){
	alert(allFields);
}
</script>

</body>
</html>