<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel = "stylesheet" href = "CSS/bootstrap.min.css">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<style>
    body {
    display: flex;
    flex-direction: column;
    min-height: 100vh; /* Ensure the body fills the viewport height */
}

    .header {
        background-color: #273444;
        color: white;
        padding: 20px;
        display: flex;
        height: 80px;
    }
    .logo {
        flex: 1;
    }
    .title {
        flex: 3;
        text-align: center;
    }
    .move-text {
        margin-top: 5px;
        margin-right: 520px;
    }
    .moved-text {
        margin-top: 10px;
        margin-right: 250px;
    }
    .navbar {
        overflow: hidden;
        background-color: #333;
        display: flex;
        justify-content: center;
        padding: 10px 0;
    }
    .navbar a {
        color: white;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
    }
    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }
    .search-container {
        flex: 1;
        display: flex;
        justify-content: flex-end;
        align-items: center;
    }
    .search-container input[type=text] {
        padding: 6px;
        margin-top: 8px;
        margin-bottom: 8px;
        margin-right: 16px;
        border: none;
    }
    .search-container button {
        padding: 6px 10px;
        margin-top: 8px;
        margin-bottom: 8px;
        margin-right: 16px;
        background: #ddd;
        font-size: 14px;
        border: none;
        cursor: pointer;
    }
    @media screen and (max-width: 600px) {
        .navbar a,
        .search-container {
            float: none;
            display: block;
            text-align: left;
        }
        .search-container {
            margin-top: 8px;
        }
    }
    .footer {
    position: relative;
    margin-top: auto; /* Push the footer to the bottom */
    background-color: #1a1a2e;
    color: #fff;
    padding: 20px 0;
}
    .footer h5 {
        color: #fff;
        font-size: 18px;
        font-weight: 600;
        margin-bottom: 10px;
    }
    .footer ul {
        list-style: none;
        padding-left: 0;
    }
    .footer ul li {
        margin-bottom: 5px;
    }
    .footer a {
        color: #fff;
        text-decoration: none;
    }
    .footer a:hover {
        color: #ccc;
    }
    .footer p {
        margin-bottom: 0;
    }
    .footer .py-3 {
        padding-top: 0.5rem;
        padding-bottom: 0.5rem;
    }
    .footer .text-center {
        text-align: center;
    }
    .footer .copy {
        text-align: center;
        margin-top: 20px;
    }
    .footer .contact {
        margin-left: 200px;
    }
    .footer .about {
        margin-left: 1000px;
        margin-top: -130px;
    }
    .admin-dashboard {
    margin: 20px auto;
    max-width: 800px;
    background-color: #f9f9f9;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

/* Add these styles to your existing CSS */

.admin-dashboard {
    margin: 20px auto;
    max-width: 800px;
    background-color: #f9f9f9;
    border-radius: 10px;
    padding: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

.admin-dashboard h2 {
    margin-bottom: 20px;
    color: #333;
}

.admin-dashboard .btn-add-employee {
    background-color: #007bff;
    color: white;
    padding: 15px 30px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 16px;
    text-decoration: none; /* Remove underline from link */
    display: inline-block;
    transition: background-color 0.3s;
}

.admin-dashboard .btn-add-employee:hover {
    background-color: #0056b3;
}

</style>
</head>
<body>

<div class="header">
  <div class="logo">
   </div>
  <div class="title">
    <h1 class="move-text">ServicePulse</h1>
    <h2 class="moved-text">Welcome To ServicePulse! Online Vehicle and Fuel Management System</h2>
  </div>
</div>

<div class="navbar">
  <a href="#home">Home</a>
  <a href="#about">About Us</a>
  <a href="#branches">Branches</a>
  <a href="#packages">Packages</a>
  <div class="search-container">
    <form action="/search" method="get">
      <input type="text" placeholder="Search..." name="search">
      <button type="submit">Search</button>
    </form>
  </div>
</div>
<div class="admin-dashboard">
    <h2>Admin Dashboard</h2>
    <!-- <button class="btn-add-employee">Add Employee</button> -->
    <a href="register.jsp" class="btn-add-employee">Register Employee</a>
   
</div>

<footer class="footer">
    <div class="container">
        <div class="contact"> 
            <h5>Contact Us</h5>
            <ul class="list-unstyled">
                <li><a href="#">Email: info@servicepulse.com</a></li>
                <li><a href="#">Phone: 011-2222211</a></li>
                <li><a href="#">Address: No.34, Flower Road, Colombo 5</a></li>
            </ul>
        </div>
        <div class="about"> 
            <h5>About Us</h5>
            <ul class="list-unstyled">
                <li><a href="#">Company Overview</a></li>
                <li><a href="#">Our Team</a></li>
                <li><a href="#">Privacy Policy</a></li>
            </ul>
        </div>
    </div>
    <div class="copy">
        <p>&copy; 2023 ServicePulse. All rights reserved.</p>
    </div>
</footer>

</body>
</html>
