<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Education System</title>
<!-- Favicon -->
<link rel="icon" href="img/s.jpeg.jpeg">
</head>
<body>
<ul>
<li><a href="homepage">Home</a> </li>
<li><a href="aboutpage">About</a> </li>
<li><a href="coursepage">Course</a></li>
<li><a href="contactpage">Contact</a></li>
<li><a href="logpage">LogOut</a></li>
</ul>

<center>

<h1><font color="red">Contact Page</font></h1>
<form action="contact" method = "post">
name <input type="text" name="name"><br><br>
address <input type="text" name="address"><br><br>
email <input type="text" name="email"><br><br>
mobile <input type="text" name="mobile"><br><br>
<input type = "submit" value = "Submit">&nbsp&nbsp
<input type = "reset" value = "reset">

</center>
</form>
</body>
</html>


<style>
body {
  background-image: url('img/image.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

ul{
display :flex;
justify-content: end;
list-style-type: none;
}
li{

padding: 10px;

}
li a{
  text-decoration:none;
}


/*body {
  background-image: url('img/bgImageContact.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}*/
</style>