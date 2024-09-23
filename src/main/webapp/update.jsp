<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
<style>
    /* Add your CSS styles here */
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        margin: 0;
        padding: 0;
        background-image: url('img/blurred-car-repair-shop.jpg'); /* Replace 'background-image.jpg' with the path to your image */
  		background-size: cover; /* Cover the entire body */
	  	background-position: center; /* Center the background image */
	 	background-repeat: no-repeat;
    }

    form {
        max-width: 500px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        margin-top: 0;
    }

    label {
        display: block;
        margin-bottom: 5px;
    }

    input[type="text"],
    input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>

<form action="adminEmployee" method="post">

    <h2>Update Employee</h2>
    
    <label for="employeeid">Employee ID:</label>
    <input type="text" name="employeeid" required value="${param.employeeid}">

    <label for="email">Email:</label>
    <input type="email" name="email" required value="${param.email}">
   
    <label for="name">Name:</label>
    <input type="text" name="name" required value="${param.name}">

    <label for="phone">Phone:</label>
    <input type="text"  name="phone" value="${param.phone}">
    
    <label for="department">Department:</label>
    <input type="text" name="department" value="${param.department}">

    <label for="salary">Salary:</label>
    <input type="text" name="salary" value="${param.salary}">

    <input type="submit" value="Submit" class="btn btn-dark">
     
</form>

</body>
</html>
