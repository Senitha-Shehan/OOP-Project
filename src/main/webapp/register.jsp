<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Employee Information Management</title>
<style>
    /* Add these styles to your existing CSS */

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        background-color: #f4f4f4;

    }

    form {
        max-width: 750px;
        margin: 20px auto;
        padding: 40px;
        border: 1px solid #ccc;
        border-radius: 10px;
        background-color: #fff;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    form h2 {
        margin-bottom: 20px;
        color: #333;
        text-align: center;
        font-size: 24px;
        text-transform: uppercase;
        letter-spacing: 2px;
        text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"],
    input[type="email"],
    input[type="number"],
    select {
        width: calc(100% - 22px);
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 15px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        width: 25%;
        transition: background-color 0.3s;
        text-align: center;
        /* Center the content */
    }

    input[type="submit"]:hover {
        background-color: #45a049;
        transition: background-color 0.3s ease;
        /* Smooth transition */
        transform: scale(1.1);
        /* Increase size on hover */
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        /* Add a subtle shadow */
    }

    .btn-dark {
        background-color: #333;
        color: #fff;
        padding: 15px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
        width: 100%;
        transition: background-color 0.3s;
    }

    .btn-dark:hover {
        background-color: #555;
    }
</style>
</head>
<body>

<form action="addEmployee" method="post" onsubmit="return validateForm()">

    <h2>Register Employee</h2>

    <br>

    <label for="employeeid">EmployeeID:</label>
    <input type="text" id="employeeid" name="employeeid" required>

    <label for="name">Name:</label>
    <input type="text" id="name" name="name" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" required>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" required>

    <label for="department">Department:</label>
    <input type="text" id="department" name="department" required>

    <label for="salary">Salary:</label>
    <input type="number" id="salary" name="salary" required>

    <input type="submit" value="Submit">

</form>

<form action="adminEmployee" method="post">

    <button type="submit" class="btn btn-dark"> All Employees</button>

</form>

<script>
    function validateForm() {
        var name = document.getElementById("name").value;
        var phone = document.getElementById("phone").value;
        var department = document.getElementById("department").value;
        var salary = document.getElementById("salary").value;

        // Regular expressions for validation
        var nameRegex = /^[A-Za-z ]+$/; // Only letters and spaces
        var phoneRegex = /^\d{10}$/; // 10 digits only
        var departmentRegex = /^[A-Za-z ]+$/; // Only letters and spaces
        var salaryRegex = /^\d+$/; // Only digits

        // Validation for Name field
        if (!name.match(nameRegex)) {
            alert("Name field can only contain letters and spaces.");
            return false;
        }

        // Validation for Phone field
        if (!phone.match(phoneRegex)) {
            alert("Phone field can only contain 10 numbers.");
            return false;
        }

        // Validation for Department field
        if (!department.match(departmentRegex)) {
            alert("Department field can only contain letters and spaces.");
            return false;
        }

        // Validation for Salary field
        if (!salary.match(salaryRegex)) {
            alert("Salary field can only contain numbers.");
            return false;
        }

        return true; // Form is valid
    }
</script>

</body>
</html>
