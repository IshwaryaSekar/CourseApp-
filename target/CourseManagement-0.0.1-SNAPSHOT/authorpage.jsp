
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Management System</title>
<style>
body{
	font-family: Arial, Helvetica, sans-serif;
background-image: url("elearning.jpg");
background-repeat: no-repeat;
background-attachment: fixed;
background-size: 1400px 800px;
background-opacity: 0.2;
}

h1 {
	text-align: center;
}

.navbar {
	overflow: hidden;
	background-color: #333;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: blue;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.topright {
	position: absolute;
	top: 8px;
	right: 16px;
	font-size: 18px;
}

</style>
</head>
<body>
	<h1>Course Management System</h1>
	<div class="navbar">
		<div class="topright">
			<a href="authorlogin.jsp">LogOut</a>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Department <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="adddepartment.jsp">Add Department</a> <a
					href="ViewDepartmentsServlet">View Department </a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Courses <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="addcourses.jsp">Add Courses</a> <a
					href="ViewCoursesServlet">View Courses </a>
			</div>
		</div>
		<div class="dropdown">
			<button class="dropbtn">
				Materials <i class="fa fa-caret-down"></i>
			</button>
			<div class="dropdown-content">
				<a href="addmaterials.jsp">Add Videos</a>
				<a href="ViewVideosServlet">View Videos</a>
			</div>
		</div>
	</div>
</body>
</html>