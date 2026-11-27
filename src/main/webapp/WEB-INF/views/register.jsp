<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register New Student : </title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        padding: 35px 15px;
        background: #000;
        color: white;
        font-family: Arial, sans-serif;
    }

    form {
        width: 90%;
        max-width: 480px;
        margin: 30px auto;
        padding: 25px;
        background: #000;
        border: 1px solid #292929;
        border-radius: 15px;
    }

    h1 {
        color: #2563eb;
        text-align: center;
        font-size: 23px;
        margin: 5px 0 25px;
    }

    label {
        display: block;
        margin: 13px 0 6px;
        font-size: 14px;
        font-weight: 600;
        color: #e5e7eb;
    }

    input {
        width: 100%;
        height: 40px;
        padding: 9px 11px;
        background: #111;
        color: white;
        border: 1px solid #333;
        border-radius: 7px;
        font-size: 14px;
        outline: none;
    }

    input:focus {
        border-color: #2563eb;
        box-shadow: 0 0 5px #1d4ed8;
    }

    input::placeholder {
        color: #777;
    }

    button {
        width: 100%;
        height: 42px;
        margin-top: 22px;
        background: #2563eb;
        color: white;
        border: none;
        border-radius: 7px;
        font-size: 15px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #1d4ed8;
    }

    @media (max-width: 600px) {
        form {
            padding: 18px;
        }
    }
</style>
</head>
<body>
	<form action="register" method="post">
	<label for="name" id="name">Enter Student's FullName : </label>
	<input name="name" type="text" placeholder="e.g Mayank Soni" required="required">
	<br>
	<label for="email" id="email">Enter Student's Email : </label>
	<input name="email" type="email" placeholder="e.g. student@gmail.com" required="required">
	<br>
	<label for="phone" id="phone">Enter Student's Phone : </label>
	<input type="tel" name="phone" placeholder="e.g. 9485688546" required="required">
	<br>
	<label for="course" id="course">Enter Student'd Course : </label>
	<input type="text" name="course" placeholder="e.g. Java Full Stack" required="required">
	<br>
	<label for="gender" id="gender">Student's Gender : </label>
	<input name="gender" type="text" placeholder="e.g. Male,Female,Other" required="required">
	<br>
	<br>
	<button type="submit" id="submitBtn">Register Student</button>
	</form>
	<c:if test="${not empty msg}">
    <script>
        alert("${msg}");
    </script>
</c:if>

<br>
<form action="index" method="get">
	<button type="submit">Back To Home.</button>
</form>
</body>
</html>