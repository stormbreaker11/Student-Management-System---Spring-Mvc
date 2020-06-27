<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ page isELIgnored="false"%>
<!DOCTYPE title>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
	
</script>


<title>Add students</title>
</head>
<style>
h3 {
	postion: absolute;
	left: 10px;
}
</style>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	 <a class="navbar-brand" href="dashBoard"><b>Student Management System</b></a>
	<ul class="navbar-nav">
		<li class="nav-item">
		<li class="active"><a class="nav-link" href="#">Add Student</a></li>
		<li class="nav-item"><a class="nav-link" href="viewStudents">View Student</a></li>
	</ul>
	</nav>
	<br>
	<div class="container">
		<h3>
			<b>Add Students</b>
		</h3>
		<form:form class="form-horizontal" data-toggle="validator" role="form"
		 action="save" method="post" modelAttribute="student">
			<div class="form-group">
				<label class="control-label col-sm-2">Student Name:</label>
				<div class="col-sm-4">
					<form:input path="name" type="text" 
					pattern="^[a-zA-Z\s]+$" maxlength="15" data-error="Please provide your name."
						class="form-control" placeholder="Student Name" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<%-- <div class="form-group">
				<label class="control-label col-sm-2">RollNo.</label>
				<div class="col-sm-4">
					<form:input path="rollNo" type="text" maxlength="3" class="form-control" data-error="Please provide your No:" 
					placeholder="Roll No:" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div> --%>
			<div class="form-group">
				<label class="control-label col-sm-2" for="education">Education:</label>
				<div class="col-sm-4">
					<form:select path="education" class="form-control" required="required">
						<form:option value="">--Select--</form:option>
						<form:option value="HighSchool">HighSchool</form:option>
						<form:option value="Graduation">Graduation</form:option>
						<form:option value="Post Graduation">Post Graduation</form:option>
						<form:option value="Masters">Masters</form:option>
						<form:option value="phd">Ph.D</form:option>
					</form:select>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Email:</label>
				<div class="col-sm-4">
					<form:input type="email" class="form-control" path="email" 
						data-error="Invalid Email or Field is Empty" placeholder=" Someone@example.com" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Phone:</label>
				<div class="col-sm-4">
					<form:input type="text" placeholder="Phone" value="" required="required" maxlength="10" class="form-control"
						pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" path="phone" data-error="Not a valid Number." />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Country:</label>
				<div class="col-sm-4">
				<form:select id="country" path="country" class="form-control" >
				<form:option value="select">select</form:option>
				<form:option value="india">India</form:option>
				<form:option value="other"></form:option>
				</form:select>
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">City:</label>
				<div class="col-sm-4">
				<form:select path="city" id="city" class="form-control">
				<form:option value="select">select</form:option>
				</form:select>
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-12">
					<button align="center" type="submit" class="btn btn-outline-primary" style="width: 150px">Submit</button>
				</div>
			</div>
	</form:form>
	</div>
</body>
</html>