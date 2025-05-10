<%-- 
    Document   : viewCourse
    Created on : Aug 10, 2024, 12:26:48 AM
    Author     : sanke
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/viewCourses.css" rel="stylesheet">

        <style>
           .navbar {         
                    background: linear-gradient(174deg, rgba(98,207,244,1) 0%, rgba(44,103,242,1) 100%);
                    margin-bottom: 20px;
            }
            .navbar-brand img {
                width: 300px;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="images/logo3.png" class="img"></a>

            </div>
        </nav>
        <div class="container mt-5 mb-5">

            <%
                String title = request.getParameter("title");
            %>

            <div class="card">
                <div class="card-header">
                    <h1><%= title%></h1>
                </div>
                <div class="card-body">
                    <p><%= title%> Course Modules Here...</p>
                    <a href="myCourse.jsp" class="btn btn-secondary">Back to My Courses</a>
                </div>
            </div>

        </div>
                    
        <%@include file="footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
