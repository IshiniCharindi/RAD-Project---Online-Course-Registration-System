<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/login.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="headers/commonHeader.jsp"%>
   
        <div class="container">
            <h1>Login</h1>
            <div class="d-flex justify-content-center align-items-center body">
                <form class="row col-12 g-3 mt-3" action="loginProcess.jsp" method="POST">
                    <div class="col-md-12">
                        <label for="type" class="form-label">Type</label>
                        <select id="type" name="type" class="form-control">
                            <option value="user">User</option>
                            <option value="admin">Admin</option>
                        </select>
                    </div>
                    <div class="col-md-12">
                        <label for="email" class="form-label">Email</label>
                        <input type="text" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="col-md-12">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Login</button>
                    </div>
                </form>
            </div>
            <div class="mt-3 text-center">
                <h5>If You Don't Have an Account <a href='signUp.jsp'>Register Here</a></h5>
            </div>
        </div>

        <%@include file="footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
