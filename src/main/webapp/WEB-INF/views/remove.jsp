<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Remove Student : </title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        padding: 40px 15px;
        background: #000;
        color: white;
        font-family: Arial, sans-serif;
    }

    form {
        width: 90%;
        max-width: 420px;
        margin: 60px auto;
        padding: 28px;
        background: #000;
        border: 1px solid #292929;
        border-radius: 15px;
    }

    h1 {
        color: #2563eb;
        text-align: center;
        font-size: 22px;
        margin: 5px 0 25px;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-size: 15px;
        font-weight: 600;
    }

    input {
        width: 100%;
        height: 42px;
        padding: 10px;
        background: #111;
        color: white;
        border: 1px solid #333;
        border-radius: 7px;
        font-size: 14px;
        outline: none;
    }

    input:focus {
        border-color: #2563eb;
    }

    input::placeholder {
        color: #777;
    }

    button {
        width: 100%;
        height: 42px;
        margin-top: 22px;
        background: #dc2626;
        color: white;
        border: none;
        border-radius: 7px;
        font-size: 15px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
    }

    button:hover {
        background: #b91c1c;
    }

    @media (max-width: 600px) {
        form {
            padding: 20px;
        }
    }
</style>
</head>
<body>
	<form action="remove" method="post">
	<label for="id" id="id">Student ID you want to remove : </label>
	<input name="id" type="text" placeholder="e.g. 101" required="required">
	<br>
	<br>
	<button type="submit">Remove</button>
	</form>
	
	<form action="index" method="get">
	<button id="btn">Back To Home</button>
	</form>
</body>
</html>