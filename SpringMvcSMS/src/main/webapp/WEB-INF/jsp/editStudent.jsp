<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE title>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.5/validator.min.js">
</script>
<title>Edit Student</title>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	 <a class="navbar-brand" href="dashBoard"><b>Student Management System</b></a>
	<ul class="navbar-nav">
		<li class="nav-item">
		<a class="nav-link" href="#">Add Student</a></li>
		<li class="nav-item"><a class="nav-link" href="viewStudents">View Student</a></li>
	</ul>
	</nav>
	<br>
	<br>
<div class="container">
		<h3>
			<b>Edit Student</b>
		</h3>
		<form:form class="form-horizontal" data-toggle="validator" role="form" modelAttribute="student" 
		action="${pageContext.request.contextPath}/student/edit/${student.rollNo}.html" method="post">
			<div class="form-group">
				<label class="control-label col-sm-2">Student Name:</label>
				<div class="col-sm-4">
					<form:input path="name" pattern="^[a-zA-Z]+(\s[a-zA-Z]+)?$" maxlength="25" data-error="Please provide your name."
						class="form-control" placeholder="Student Name" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="education">Education:</label>
				<div class="col-sm-4">
					<form:select path="education" class="form-control" data-error="Make a selection." required="required">
						<form:option value="">--Select--</form:option>
						<form:option value="HighSchool">HighSchool</form:option>
						<form:option value="Graduation">Graduation</form:option>
						<form:option value="Post Graduation">Post Graduation</form:option>
						<form:option value="Masters">Masters</form:option>
						<form:option value="phd">Ph.D</form:option>
					</form:select>
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Email:</label>
				<div class="col-sm-4">
					<form:input class="form-control" path="email" 
						data-error="Invalid Email or Field is Empty" placeholder="Email" required="required" />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2">Phone:</label>
				<div class="col-sm-4">
					<form:input placeholder="Phone" required="required" maxlength="10" class="form-control"
						pattern="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$" path="phone" data-error="Not a valid Number." />
					<div style="color: red" class="help-block with-errors"></div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-4 col-sm-12">
					<button align="center" type="submit" class="btn btn-outline-primary" style="width: 150px">Edit</button>
				</div>
			</div>
	
	</form:form>
	</div>
</body>
</html>