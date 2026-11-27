<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update : </title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        padding: 25px 15px;
        background: #000;
        color: white;
        font-family: Arial, sans-serif;
    }

    h1 {
        color: #2563eb;
        text-align: center;
        font-size: 21px;
        margin: 10px 0 20px;
    }

    form {
        width: 90%;
        max-width: 480px;
        margin: 20px auto;
        padding: 22px;
        background: #000;
        border: 1px solid #292929;
        border-radius: 15px;
    }

    label {
        display: block;
        margin: 12px 0 6px;
        font-size: 14px;
        font-weight: 600;
        color: #e5e7eb;
    }

    input {
        width: 100%;
        height: 39px;
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

    input[readonly] {
        background: #222;
        color: #aaa;
    }

    input::placeholder {
        color: #777;
    }

    button {
        width: 100%;
        height: 41px;
        margin-top: 18px;
        background: #2563eb;
        color: white;
        border: none;
        border-radius: 7px;
        font-size: 14px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #1d4ed8;
    }

    hr {
        max-width: 480px;
        border: none;
        border-top: 1px solid #292929;
        margin: 25px auto;
    }

    @media (max-width: 600px) {
        form {
            padding: 17px;
        }
    }
</style>
</head>
<body>
	<form action="update" method="post">
	<h1>Enter the Id of the Student you want to update : </h1>
	<input name="id" type="text" placeholder="e.g. 101" required="required">
	<button type="submit">Submit</button>
	</form>
	<br>
	<hr>
	
	<c:if test="${not empty msg}">
    <script>
        alert("${msg}");
    </script>
</c:if>
	
	<h1>Student Details : </h1>
	<form action="update"
      method="post">
	
	<input type="hidden" name="_method" value="PUT">
	
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
	
	<form action="index" method="get">
	<button>Back To Home</button>
	</form>
</body>
</html>