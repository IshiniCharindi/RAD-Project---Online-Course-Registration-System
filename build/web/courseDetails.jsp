<%@page import="classes.DbConnection"%>
<%@page import="java.util.List"%>
<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Course Details</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/courseDetails.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="headers/courseHeader.jsp"%>
        <%
            HttpSession session1 = request.getSession();
            String value = (String) session1.getAttribute("userId");
            String value1 = (String) session1.getAttribute("adminId");

            if (value1 != null) {
                response.sendRedirect("adminPanel.jsp");
                return;
            } else if (value == null) {
                response.sendRedirect("login.jsp");
                return;
            }

        %>
        <div class="container my-5">
            <h1 class="text-center mb-4">Course Details</h1>
            <h2 class="mb-4">Available Courses</h2>
            <div class="row g-4">
                <% List<Course> allCourses = new Course().findAllCourse(DbConnection.getConnection());
                    for (Course c : allCourses) {%>
                <div class="col-lg-3 col-md-4 col-sm-6">
                    <div class="card h-100">
                        <div class="card-body d-flex flex-column">
                            <h5 class="card-title"><%=c.getTitle()%></h5>                    
                            <a href="register.jsp?id=<%=c.getId()%>" class="btn btn-primary mt-auto">View</a>
                        </div>
                    </div>
                </div>
                <% }%>
            </div>
        </div>
        <%@include file="footer.jsp"%>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
