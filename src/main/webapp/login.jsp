<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>

body {
  background-image: url('img/blurred-car-repair-shop.jpg');
  background-size: cover;
  background-position: center; 
  background-repeat: no-repeat; 
}

.login-container {
  margin: 200px auto;
  padding: 30px;
  width: 400px;
  background-color: #f4f4f4;
  border-radius: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

.login-container h1 {
  text-align: center;
  color: #333;
}

.login-container table {
  width: 100%;
}

.login-container td {
  padding: 15px;
}

.login-container input[type="text"],
.login-container input[type="password"],
.login-container select {
  width: calc(100% - 12px);
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  box-sizing: border-box;
}

.login-container input[type="submit"] {
  display: block;
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  background-color: #007bff;
  color: #fff;
  font-size: 16px;
  cursor: pointer;
}

.login-container input[type="submit"]:hover {
  background-color: #0056b3;
}


</style>


</head>
<body>

<div class="login-container">
  <h1>Login</h1>
  <form action="<%=request.getContextPath()%>/home.jsp" method="post">
    <table>
      <tr>
        <td>UserName</td>
        <td><input type="text" name="userName" /></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><input type="password" name="password" /></td>
      </tr>
      <tr>
        <td>Account Type</td>
        <td>
          <select name="type" id="type">
            <option value="Select">Select Account Type</option>
            <option value="Employee">Employee</option>
            <option value="Admin">Admin</option>
          </select>
        </td>
      </tr>
    </table>
    <input type="submit" value="Submit" />
  </form>
</div>

 
</body>
</html>