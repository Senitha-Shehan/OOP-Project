<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Vehicle Service & Fuel Station Management</title>

<style>

/*header*/
.header {
  background-color: #273444;
  color: white;
  padding: 20px;
  display: flex;
  height:80px;
}

.logo {
  flex: 1;
  margin-top: 5px;
}

.logo img {
  width: 100px; /* Set the width of the logo */
  height: 80px; /* Maintain aspect ratio */
  margin-left:30px;
}

.title {
  flex: 3;
  text-align: center;
}

.move-text{
    margin-top: 5px; 
    margin-right: 520px;
}

.moved-text{
  margin-top: 10px; 
  margin-right: 250px;
}

.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  display: block;
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
  float: right;
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
  margin-top: -10px;
  margin-bottom: -4px;
  margin-right: 16px;
  background: #ddd;
  font-size: 14px;
  border: none;
  cursor: pointer;
}

@media screen and (max-width: 600px) {
  .navbar a, .search-container {
    float: none;
    display: block;
    text-align: left;
  }
  
  .search-container {
    margin-top: 8px;
  }
}

.main-content {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-top: 50px;
}

.slider-container {
  width: 60%;
}

.slider {
  position: relative;
  width: 100%;
  height: 400px;
  overflow: hidden;
  border: 2px solid black;
  border-radius: 5px;
}

.slide {
  display: none;
  width: 100%;
  height: 100%;
}

.active-slide {
  display: block;
}

.card-container {
  width: 38%;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  transition: 0.3s;
  border-radius: 5px;
  text-align: center;
  margin: 10px 0; 
  padding: 60px;
  background-color: LightSlateGray;
  cursor: pointer;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2);
  color: white;
}

.card h3 {
  margin-top: 10px;
  font-size: 22px; /* Adjust the font size */
  color: HoneyDew; /* Adjust the text color */
  font-weight: bold;
}

/*footer*/
.footer {
  background-color: #1a1a2e;
  color: #fff;
  padding: 20px 0;
  width: 100%;
  margin-top: 50px;
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

</style>

</head>
<body>

<header>
  
  <div class="header">
  <div class="logo">
    
  </div>
  <div class="title">
    <h1 class="move-text">ServicePulse</h1>
    <h2 class="moved-text">Welcome To ServicePulse! Online Vehicle and Fuel Management System</h2>
  </div>
</div>

<div class="navbar">
  <a href="HomeScreen.jsp">Home</a>
  <a href="AboutUs.jsp">About Us</a>
  <a href="branches.jsp">Branches</a>
  <a href="Package.jsp">Packages</a>
  <div class="search-container">
    <a href="login.jsp">
  <button type="submit">Admin login</button>
</a>
  
  </div>
</div>
  
</header>

<div class="main-content">
  <div class="slider-container">
    <div class="slider">
      <img class="slide active-slide" src="img/home22.jpg" alt="Image 1">
      <img class="slide" src="img/home5.jpg" alt="Image 2">
      <img class="slide" src="img/home44.jpg" alt="Image 3">
      <img class="slide" src="img/home3.jpg" alt="Image 4">
    </div>
  </div>
  
  <div class="card-container">
    <div class="card" onclick="window.location.href='login.jsp'">
      <h3>Vehicle Services</h3>
    </div>
    <div class="card" onclick="window.location.href='FuelDp.jsp'">
      <h3>Fuel Dispense</h3>
    </div>
  </div>
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

<script>
// JavaScript for image slider
let currentSlide = 0;
const slides = document.querySelectorAll('.slide');

function showSlide(index) {
  slides[currentSlide].classList.remove('active-slide');
  currentSlide = (index + slides.length) % slides.length;
  slides[currentSlide].classList.add('active-slide');
}

function nextSlide() {
  showSlide(currentSlide + 1);
}

function prevSlide() {
  showSlide(currentSlide - 1);
}

setInterval(nextSlide, 3000); // Change image every 3 seconds
</script>

</body>
</html>
