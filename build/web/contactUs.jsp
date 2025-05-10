<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Us</title>
        <link href="CSS/contactUs.css" rel="stylesheet">
    </head>
    <body>
        <header class="site-header">
            <h1>Contact Us</h1>
        </header>
        <div class="contact-body">
            <div class="left-side">
                <img src="images/contactus.jpg" alt="Contact Us">
            </div> 
            <div class="right-side"> 
                <form action="contactUsProcess.jsp" method="post">
                    <label for="name">Your Name</label>
                    <input type="text" name="name" id="name" required>

                    <label for="email">Your Email</label>
                    <input type="email" name="email" id="email" required>

                    <label for="message">Your Message</label>
                    <textarea name="message" id="message" rows="10" cols="30" required></textarea>

                    <input type="submit" value="Submit">
                </form>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
