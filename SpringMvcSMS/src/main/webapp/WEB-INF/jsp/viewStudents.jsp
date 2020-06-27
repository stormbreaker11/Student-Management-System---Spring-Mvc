<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<title>View Students</title>

</head>
<style>
.navbar{
color: red;
}
</style>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a class="navbar-brand" href="dashBoard"><b>Student Management System</b></a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="studentForm">Add Student</a></li>
		</li>
		<li class="nav-item">
		<li class="active"><a class="nav-link" href="viewStudents">View Student</a></li>
	</ul>
	</nav>

	<div class="container">
		<br> <br>
		<h2>Students List</h2>
		<table class="table">
			<thead class="thead-dark">
				<tr>
					<th>Name</th>
					<th>Roll No.</th>
					<th>Education</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Country</th>
					<th>City</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:forEach var="student" items="${list}">
				<tbody>
					<tr>
						<td>${student.name}</td>
						<td>${student.rollNo}</td>
						<td>${student.education}</td>
						<td>${student.email}</td>
						<td>${student.phone}</td>
						<td>${student.country}</td>
						<td>${student.city}</td>
						<td><a href="editStudent/${student.rollNo}">Edit</a></td>
						<td><a href="delete/${student.rollNo}"
							onclick="if (
        		 !(confirm('Are you sure you want to delete this Student?')
        				 )
        				 ) return false">Delete</a></td>
					</tr>
				</tbody>
			</c:forEach>
		</table>  
    </div>
	</div>
</body>
</html>