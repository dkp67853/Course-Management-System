<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
<div class="signup">
<form action="" method="post">
<input type="text" name="name" placeholder="Enter name" required>
<input type="email" name="email" placeholder="Enter email" required>
<input type="number" name="phoneNumber" placeholder="Enter Mobile Number" required>
<select name="securityQuestion">
<option value="Who was your first crush?"></option>
<option value="What elementary school did you attend?"></option>
<option value="Who was your first bff?"></option>
<option value="What is your hometown?"></option>
</select>
<input type="text" name="answer" placeholder="Enter answer" required>
<input type="password" name="password" placeholder="Enter password" required>
<input type="submit" value="signup">
</form>
<h2 href="">Login</h2>
</div></div>

</body>
</html>