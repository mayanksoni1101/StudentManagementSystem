	<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
	<title>Student Management System : 
	</title>
<style>
    * {
        box-sizing: border-box;
    }

    body {
        margin: 15px auto;
        padding: 20px;
        width: 90%;
        max-width: 750px;
        min-height: auto;
        background: #000;
        color: #fff;
        font-family: Arial, sans-serif;
        border: 1px solid #292929;
        border-radius: 15px;
    }

    h1 {
    
        color: #2563eb;
        font-size: 23px;
        margin: 5px 0 20px;
    }

    h2 {
        font-size: 17px;
        margin: 18px 0 8px;
    }

    a {
        display: flex;
        align-items: center;
        justify-content: space-between;
        width: 100%;
        padding: 12px 14px;
        margin: 10px 0;
        background: #000;
        border: 1px solid #292929;
        border-radius: 12px;
        color: white;
        font-size: 16px;
        font-weight: 600;
        text-decoration: none;
        transition: 0.3s;
    }

    a::after {
        content: "Open";
        background: #001b35;
        color: #1685ff;
        padding: 4px 9px;
        border-radius: 20px;
        font-size: 12px;
    }

    a:hover {
        background: #101010;
        border-color: #2563eb;
        transform: translateY(-2px);
    }

    a:hover::after {
        background: #2563eb;
        color: white;
    }

    br {
        display: none;
    }

    @media (max-width: 600px) {
        body {
            width: 96%;
            padding: 14px;
        }

        h1 {
            font-size: 20px;
        }

        a {
            font-size: 14px;
            padding: 11px;
        }
    }
</style>
</head>
<body>
	<h1>Student Management System : </h1>
	<h1>Add Student : </h1>
	<a href="register">Click Here</a>
	<br>
	<h1>Remove Student : </h1>
	<a href="remove">Click Here</a>
	<br>
	<h1>Update Student : </h1>
	<a href="update">Click Here</a>
	<br>
	<h1>Get All Student Record : </h1>
	<a href="record">Click Here</a>

<c:if test="${not empty msg}">
    <script>
        alert("${msg}");
    </script>
</c:if>
</body>
</html>
