<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student : </title>
</head>
<body>
	<form action="update" method="post">
	<label for="id" id="id">Student's ID : </label>
	<input name="id" type="text" placeholder="e.g. 101" value="${student.id}">
	<br>
	<label for="name" id="name">Enter Student's FullName : </label>
	<input name="name" type="text" placeholder="e.g Mayank Soni" required="required" value="${student.name}">
	<br>
	<label for="email" id="email">Enter Student's Email : </label>
	<input name="email" type="email" placeholder="e.g. student@gmail.com" required="required" value="${student.email}">
	<br>
	<label for="phone" id="phone">Enter Student's Phone : </label>
	<input type="tel" name="phone" placeholder="e.g. 9485688546" required="required" value="${student.phone}">
	<br>
	<label for="course" id="course">Enter Student'd Course : </label>
	<input type="text" name="course" placeholder="e.g. Java Full Stack" required="required" value="${student.course}">
	<br>
	<label for="gender" id="gender">Student's Gender : </label>
	<input name="gender" type="text" placeholder="e.g. Male,Female,Other" required="required" value="${student.gender}">
	<br>
	<br>
	<button type="submit" id="submitBtn">Update Student</button>
	</form>
</body>
</html>