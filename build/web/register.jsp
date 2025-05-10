<%-- 
    Document   : register
    Created on : Jul 7, 2024, 12:03:36 AM
    Author     : ishin
--%>

<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration</title>


        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="CSS/register.css" rel="stylesheet" />
    </head>
    <body>
        <%@include file="backToMenu.jsp" %>
        <div class="container">
            <a href="courseDetails.jsp" class="back-button">Back to Courses</a>
            <h1 class="heading">Course Registration</h1>

            <%
                HttpSession session1 = request.getSession();
                String userId = (String) session1.getAttribute("userId");
                if (userId == null) {
                    response.sendRedirect("login.jsp");
                }
                Long id = Long.parseLong(request.getParameter("id"));
                Course course = new Course().findCourse(id);
            %>
            <div class="course-details">
                <h3 class="sub-heading">Course Title: <%= course.getTitle()%></h3>
                <h4 class="sub-heading">Course Category: <%= course.getCategory()%></h4>
                <h4 class="sub-heading">Instructor: <%= course.getInstructor()%></h4>
                <h5 class="sub-heading"><%= course.getDescription()%></h5>
            </div>
            <form action="registrationProcess.jsp" method="post" class="register-form" onsubmit="return validateForm()">
                <input type="text" name="id" value="<%= course.getId()%>" hidden>
                <div class="d-flex">
                    <button type="submit" class="btn btn-primary" id="register-button">Register for this Course</button>
                </div>
            </form>

            <div class="response">
                <%= request.getAttribute("message") != null ? request.getAttribute("message") : ""%>
            </div>
        </div>
        <%@include file="footer.jsp" %>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
