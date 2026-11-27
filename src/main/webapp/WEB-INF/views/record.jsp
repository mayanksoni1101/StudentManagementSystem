<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Records : </title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 0;
        padding: 30px 15px;
        background: #000;
        color: white;
        font-family: Arial, sans-serif;
    }

    h2 {
        text-align: center;
        color: #2563eb;
        font-size: 23px;
        margin: 10px 0 25px;
    }

    table {
        width: 95%;
        max-width: 950px;
        margin: 20px auto;
        border-collapse: collapse;
        background: #000;
        border: 1px solid #292929;
        border-radius: 12px;
        overflow: hidden;
    }

    th {
        background: #101827;
        color: #3b82f6;
        padding: 13px 12px;
        font-size: 14px;
        text-align: center;
        border: 1px solid #292929;
    }

    td {
        padding: 12px;
        text-align: center;
        font-size: 13px;
        color: #e5e7eb;
        border: 1px solid #292929;
    }

    tr:nth-child(even) {
        background: #101010;
    }

    tbody tr:hover {
        background: #151f32;
    }

    button {
        display: block;
        width: 180px;
        height: 40px;
        margin: 25px auto;
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

    @media (max-width: 700px) {
        table {
            display: block;
            overflow-x: auto;
            white-space: nowrap;
        }

        th, td {
            padding: 10px;
        }
    }
</style>
</head>
<body>
	<h2>Registered Students</h2>

    <table border="1" cellpadding="10">

        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Phone</th>
            <th>Gender</th>
            <th>Course</th>
        </tr>

        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>${student.phone}</td>
                <td>${student.gender}</td>
                <td>${student.course}</td>
            </tr>
        </c:forEach>

    </table>
	<br>
	<form action="index" method="get">
	<button type="submit">Back To Home.</button>
	</form>
	
</body>
</html>