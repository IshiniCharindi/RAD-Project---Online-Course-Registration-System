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
        <link href="CSS/adminPanel.css" rel="stylesheet">

    </head>
    <body>
        <%@include file="headers/adminHeader.jsp"%>
        <%
            HttpSession session1 = request.getSession();
            String value = (String) session1.getAttribute("adminId");
            
            if (value == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <div class="container">
<!--            <h1>Course Details</h1>-->
            <h1>Available Courses</h1>
            <div class="row">
                <% 
                List<Course> allCourses = new Course().findAllCourse(DbConnection.getConnection());
                for (Course c : allCourses) { 
                %>
                <div class="small-container">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%=c.getTitle()%></h5>
                            <div class="btn-group">
                                <a href="update.jsp?id=<%=c.getId()%>" class="btn btn-primary">Update</a>
                                <a href="delete.jsp?id=<%=c.getId()%>" class="btn btn-danger">Delete</a>
                            </div>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
        <%@include file="footer.jsp" %>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
