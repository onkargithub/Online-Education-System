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

	<center>
		<marquee>
			<font color=green size=100> Develope BY Shirale Onkareshwar</font>
		</marquee>


		<h1>
			<font color="red" size=30>Login Page</font>
		</h1>

		<font color="red"> <%
 if (request.getAttribute("msg") != null) {
 	out.print(request.getAttribute("msg"));
 }
 %></font>

		<form action="login" method="post">
			username &nbsp<input type="text" name="username"><br> <br>
			password &nbsp<input type="password" name="password"><br>
			<br>
			<button type="submit" value="login" class="btn btn-success">login</button>
	
	<button type="reset" value="reset" class="btn btn-success">reset</button> <br><br>
			
		<a href="createaccountpage"><button type="button" class="btn btn-primary">Create Account</button></a> 
				&nbsp&nbsp &nbsp&nbsp
			
			 
			<a href="deleteaccount"><button  type="button" class="btn btn-danger">Delete Account</button></a>
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
</style>



<style>
body {
	background-image: url('img/bgImageLogin.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}


</style>