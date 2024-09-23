<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="CSS/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>ADMIN TABLE</title>
<style>
    .register-button {
        margin-top: 20px; /* Added margin-top */
        text-align: center; /* Center align the button */,
    }
    .register-button button {
        background-color: black; /* Changed background color to black */
        color: white; /* Changed text color to white */
    }
    .register-button button:hover {
        background-color: #333; /* Darken color on hover */
    }
</style>
</head>
<body>
<div class="container">
<table class="table table-striped">
  <thead class="thead-dark">
  	
  	<tr>
    <th colspan="10" style="text-align: center; font-size: 24px; background-color: #333; color: white; padding: 10px;">Employee Information</th>
</tr>

  	
    <tr>
      <th scope="col">Employee ID</th>
      <th scope="col">Email</th>
      <th scope="col">Name</th>
      <th scope="col">Phone Number</th>
      <th scope="col">Department</th>
      <th scope="col">Salary</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  	<c:forEach var="emp" items="${employee}">
  	
  		<tr>
  			<td> ${emp.employeeid}</td>
  			<td> ${emp.email}</td> 	
  			<td> ${emp.name}</td>
  			<td> ${emp.phone}</td>
  			<td> ${emp.department}</td>
  			<td> ${emp.salary}</td>
  			<td> 
  				<form action="update.jsp" method="post">
  				<input type="hidden" name="employeeid" value="${emp.employeeid}">
  				<input type="hidden" name="email" value="${emp.email}">
  				<input type="hidden" name="name" value="${emp.name}">
  				<input type="hidden" name="phone" value="${emp.phone}">
  				<input type="hidden" name="department" value="${emp.department}">
  				<input type="hidden" name="salary" value="${emp.salary}">
  				<button class="btn btn-primary">UPDATE</button>
  				</form>
  			</td>
  			<td>
  				<form action="deleteEmp" method="post">
  					<input type="hidden" name="employeeid" value="${emp.employeeid}">
  					<button class="btn btn-danger">DELETE</button>
  				</form>
  			</td>
  		</tr>
  	
  	</c:forEach>
   
  </tbody>
</table>


<div class="register-button">
    <form action="register.jsp" method="post">
        <button class="btn btn-danger">Register Again</button>
    </form>
</div>

</div>

</body>
</html>
