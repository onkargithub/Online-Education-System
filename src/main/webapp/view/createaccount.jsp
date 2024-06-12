<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Education System</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
	
<!-- Favicon -->
<link rel="icon" href="img/s.jpeg.jpeg">
</head>
<body>
	<ul>
		<li><a href="homepage">Home</a></li>
		<li><a href="aboutpage">About</a></li>
		<li><a href="coursepage">Course</a></li>
		<li><a href="contactpage">Contact</a></li>
		<li><a href="logpage">LogOut</a></li>
	</ul>



	<center>
		<h2>
			<font color="red">Create Account Page</font>
		</h2>

		<form action="createaccount" method="post">
			username &nbsp<input type="text" name="username"><br> <br>
			password &nbsp<input type="password" name="password"><br>
			<br> <input type="submit" value="Create Account">&nbsp&nbsp
			<input type="reset" value="reset"><br> <br>&nbsp <a
				href="logpage"><button type="button" class="btn btn-primary">Back-TO-Login</button></a>
	</center>
	</form>
	</center>
</body>
</html>



<style>
body {
	background-image: url('img/image.jpeg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

h1 {
	text-align: center;
}

ul {
	display: flex;
	justify-content: end;
	list-style-type: none;
}

li {
	padding: 10px;
}

li a {
	text-decoration: none;
}
</style>