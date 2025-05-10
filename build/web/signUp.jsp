<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Sign Up</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/signUp.css" rel="stylesheet">
        <script>
            function validateForm() {
                var fname = document.getElementById("fname").value;
                var lname = document.getElementById("lname").value;
                var email = document.getElementById("email").value;
                var address = document.getElementById("address").value;
                var pnumber = document.getElementById("pnumber").value;
                var pw = document.getElementById("pw").value;
                var rpw = document.getElementById("rpw").value;
                var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (fname.trim() === "") {
                    alert("First Name is required.");
                    return false;
                }
                if (lname.trim() === "") {
                    alert("Last Name is required.");
                    return false;
                }

                if (email.trim() === "" || !emailPattern.test(email)) {
                    alert("Valid email is required.");
                    return false;
                }

                if (pnumber.trim() === "") {
                    alert("Contact Number is required.");
                    return false;
                }
                if (address.trim() === "") {
                    alert("Address is required.");
                    return false;
                }
                if (pw.trim() === "") {
                    alert("Password is required.");
                    return false;
                }
                if (rpw.trim() === "") {
                    alert("Please Re-Enter Your Password");
                    return false;
                }
                if (pw.trim() !== rpw.trim()) {
                    alert("Passwords do not match.");
                    return false;
                }

                return true;
            }
        </script>
    </head>
    <body>
        <%@include file="headers/commonHeader.jsp" %>

        <div class="container">
            <h1>Sign Up</h1>
            <div class="d-flex justify-content-center align-items-center body">
                <form class="row col-12 g-3 mt-3" action="signUpProcess.jsp" method="post" onsubmit="return validateForm()">
                    <div class="col-md-6">
                        <label for="fname" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="fname" name="fname" required>
                    </div>
                    <div class="col-md-6">
                        <label for="lname" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lname" name="lname" required>
                    </div>
                    <div class="col-md-12">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="col-md-12">
                        <label for="address" class="form-label">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required>
                    </div>
                    <div class="col-md-12">
                        <label for="pnumber" class="form-label">Phone Number</label>
                        <input type="text" class="form-control" id="pnumber" name="pnumber" required>
                    </div>
                    <div class="col-md-6">
                        <label for="pw" class="form-label">Password</label>
                        <input type="password" class="form-control" id="pw" name="pw" required>
                    </div>
                    <div class="col-md-6">
                        <label for="rpw" class="form-label">Re-Enter Password</label>
                        <input type="password" class="form-control" id="rpw" name="rpw" required>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Sign Up</button>
                    </div>
                </form>
            </div>
            <div class="mt-3 text-center">
                <h5>If you already have an account, <a href="login.jsp">Login here</a></h5>
            </div>
        </div>

        <%@include file="footer.jsp" %>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
