<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/index.css" rel="stylesheet">
        <title>Home</title>
        <style>

        </style>
    </head>
    <body>
        <!-- Header -->
        <%@include file="headers/homeHeader.jsp" %>
        <!-- Header -->

        <!-- Body Content -->
        <div class="body">
            <div class="home">
                <h1 style="text-align: center; 
                    text-shadow: 1px 1px 0 #000,  
                    1px -1px 0 #000,   
                    -1px 1px 0 #000,   
                    1px 1px 0 #000;   
                    color: white !important;  
                    font-size: 4rem;          
                    font-weight: bold;        
                    margin-bottom: 20px;">
                    Dive into the waves of knowledge with <br> LearnWave
                </h1>  
                <div class="home-buttons">
                    <a href="login.jsp" class="btn">Login</a>
                    <a href="signUp.jsp" class="btn">Sign Up</a>
                </div>
            </div>
            <div class="aboutUs mt-3">
                <div class="aboutUs-content">
                    <h1>About Us</h1>
                    <p class="aboutUs-description">
                        Discover a seamless and efficient way to enroll in your favorite courses with LearnWave. Our platform is designed to provide you with a hassle-free registration experience, ensuring that you can focus on what matters most?learning and growing.
                    </p>
                    <div class="container d-flex align-items-center justify-content-center gap-5">
                        <div class="card" style="width: 18rem;">
                        <img src="images/catelog.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Course Variety</h3>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img src="images/secure.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">Secure and Reliable</h3>
                        </div>
                    </div>
                    <div class="card" style="width: 18rem;">
                        <img src="images/anytime.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h3 class="card-title">24/7 Support</h3>
                        </div>
                    </div>
                    </div>
                    
                    <p class="aboutUs-mission">
                        Join us today and take the first step towards achieving your educational goals with LearnWave. We are committed to providing you with an exceptional learning journey.
                    </p>
                </div>
            </div>
            <div class="mt-3">
                <%@include file="contactUs.jsp"%>
            </div>


        </div>
        <!-- Body Content -->

        <!-- Footer -->
        <%@include file="footer.jsp" %>
        <!-- Footer -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
