<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Main Menu</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="MainMenu.css">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
        <script>
        // JavaScript function to show the popup message
            function showLogoutMessage() {
                <%-- Check if logoutMessage attribute exists --%>
                <% if (request.getAttribute("logoutMessage") != null) { %>
                     alert("<%= request.getAttribute("logoutMessage") %>");
                <% } %>
            }
            function showLoginMessage() {
                <%-- Check if loginMessage attribute exists --%>
                <% if (request.getAttribute("loginMessage") != null) { %>
                    alert("<%= request.getAttribute("loginMessage") %>");
                <% } %>
            }
        
            window.onload = function() {
                showLogoutMessage();
                showLoginMessage();
            };
        </script>
    </head>
    <body>
    <div class="header">
       <div class="container">
            <div class="navbar">               
            <nav>
                <img src="images/CarLogo.png" alt="" width="100">
                <ul>
                    <%
                        String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) {
                    %>
                        <div class="error-message"><%= errorMessage %></div>
                    <%
                        }
                    %>
                    <li style="text-decoration: underline;"><a href="#">Home</a></li>
                    <li style="text-decoration: underline;"><a href="#">Cars</a></li>
                    <li style="text-decoration: underline;"><a href="#">About Us</a></li>
                    <li style="text-decoration: underline;"><a href="#">Feedbacks</a></li>
                    <c:choose>
                        <c:when test="${empty sessionScope.email}">
                            <li style="text-decoration: underline;">
                                <a href=#" class="btn">Log In</a>
                            </li>
                    </c:when>
                    <c:otherwise>
                            <li style="text-decoration: underline;">
                                <a href="#" class="btn">Log Out</a>
                            </li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </nav>
            </div>
    <div class="row">
      <div class="col-2">
          <h1 style="color: white;"> WELCOME TO </h1><h1 style="color: #191970; font-size: 65px; font-style: italic;">OSACAR</h1>
        <p>
          	Welcome to Osacar Car Rental. We provide the best quality cars at affordable prices. Always ready to serve your needs for car rental for 24 hours.
        </p>

      </div>
      <div class="col-2">
          <img src="images/car.png" alt="" />
      </div>
    </div>
    </div>
  </div>   
          <div class="container-5" id="cars">
              <div class="small-container-5">
                <div class="row">
                    <div class="col-2">
                        <img src="images/queMark.png" alt="" width="500" class="offer-img"/>
                    </div>
                    <div class="col-2">
                        <h1 style="color:black; font-size: 40px;"> Why </h1>
                        <h1 style="color:#6495ed; font-size: 40px;">Choose</h1> 
                        <h1 style="font-size: 40px;"> Us?</h1> 
                        <div class="why">  
                            <ol>
                                <li><span>01</span><p>Offers a fleet of high-quality vehicles that are well-maintained and equipped to ensure comfort and reliability during your rental period.</p></li>      
                                <li><span>02</span><p>Provide competitive pricing that makes renting a car accessible without compromising on quality or service. Our transparent pricing ensures no hidden fees, giving you peace of mind.</p></li>      
                                <li><span>03</span><p>Open 24/7, ensuring that you can pick up or drop off your rental at any time that suits your schedule, offering flexibility and convenience.</p></li>      
                                <li><span>04</span><p>Offers a diverse selection of vehicles to suit every occasion and preference.</p></li>
                            </ol>
                        </div>
                    </div>
              </div>
            </div>
          </div>
              
           <div class="cars" id="cars">
              <div class="small-container">
                <div class="row">
                    <div class="col-2">
                        <img src="images/car2.png" alt="" class="offer-img"/>
                    </div>
                <div class="col-2">
                        <h1>Featured Car</h1>
                            <p> This featured car stands out with its blend of sleek design and powerful performance. The interior is a testament to luxury and comfort, adorned with premium materials and equipped with advanced technology such as a state-of-the-art infotainment system and cutting-edge driver assistance features like adaptive cruise control and lane-keeping assist.
                                Safety is paramount, with comprehensive systems that include automatic emergency braking and a sturdy build designed to protect occupants.
                            </p>
                        <a href="#" class="btn">View All Car &#8594;</a>
                </div>
                </div>
              </div>
          </div>
                      
           <div class="container-2" id="feedbacks">
           <h1> Feedbacks </h1>
           <p> Positive reviews from our customers </p>
           </div>
           
          <!-- Testimonial -->

        <section class="section__container">
      <div class="section__grid">
        <div class="section__card">
          <h4>Easy to Use</h4>
          <p>
            Website was easy to use! Payment went smoothly too. Highly recommended!
          </p>
          <img src="images/feedbacks.png" alt="user" />
          <h5>Husaini</h5>
        </div>
        <div class="section__card">
          <h4>Vast Selection</h4>
          <p>
            There are variety of car to choose from! Chatbot was very helpful in helping me
            choose a car.
          </p>
          <img src="images/feedbacks.png" alt="user" />
          <h5>Abdullah</h5>
        </div>
        <div class="section__card">
          <h4>Efficient and Reliable</h4>
          <p>
            Best decision we made. Stunning website, exceptional support. Always
            available and prompt issue resolution. Hassle-free experience!
          </p>
          <img src="images/feedbacks.png" alt="user" />
          <h5>Nabil</h5>
        </div>
      </div>
    </section>
   
    <footer class="footer">
        <p>© 2024 Osacar. All Rights Reserved.</p>
            <a href="#" style = "color: black">Contact Us</a>
    </footer>
    </body>
</html>
