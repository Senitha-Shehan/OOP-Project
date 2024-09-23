<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	

    <h2>Employee Profile Lists</h2>
    
    <c:set var = "emp" value =""/>
    
    <label for="name">Name:</label>
    <input type="text" id="name" name="name" value="${emp.name}" required>

    <label for="email">Email:</label>
    <input type="email" id="email" name="email" value="${emp.email}" required>

    <label for="phone">Phone:</label>
    <input type="text" id="phone" name="phone" value="${emp.phone}">

    <label for="department" >Department:</label>
    <select id="department" name="department">
        <option value="Fuel Department" value="${emp.Department}">Fuel Department</option>
        <option value="Service Department" value="${emp.Department}">Service Department</option>
    </select>

    <label for="salary">Salary:</label>
    <input type="number" id="salary" name="salary" value="${emp.salary}">



</body>
</html>