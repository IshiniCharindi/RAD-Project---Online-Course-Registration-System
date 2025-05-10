<%-- 
    Document   : update
    Created on : Jul 1, 2024, 8:15:01 PM
    Author     : ishin
--%>


<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Page</title>
        
        <style>
            
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/update.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="headers/adminHeader.jsp"%>
        <div class="container">
            <h1 style="font-family: 'Georgia', serif;">Update Course Details</h1>
            <div class="d-flex justify-content-center align-items-center body">

                <%
                    Long id = Long.parseLong(request.getParameter("id"));
                    Course course = new Course().findCourse(id);
                %>

                <form id="updateForm" method="post" action="updateCourseProcess.jsp" class="row col-10 g-3">
                    <div class="col-md-6">
                        <label for="title" class="form-label fs-4">Id</label>
                        <input type="text" class="form-control" id="title" name="id"  value="<%=course != null ? course.getId() : ""%>" readonly>
                    </div>
                    <div class="col-md-6">
                        <label for="title" class="form-label fs-4">Title</label>
                        <input type="text" class="form-control" id="title" name="title"  value="<%=course != null ? course.getTitle() : ""%>">
                    </div>
                    <div class="col-md-12">
                        <label for="title" class="form-label fs-4">Category</label>
                        <input type="text" class="form-control" id="title" name="category"  value="<%=course != null ? course.getCategory() : ""%>">
                    </div>
                    <div class="col-md-12">
                        <label for="title" class="form-label fs-4">Instructor</label>
                        <input type="text" class="form-control" id="title" name="instructor" value="<%=course != null ? course.getInstructor() : ""%>">
                    </div>
                    <div class="col-md-12">
                        <label for="description" class="form-label fs-4">Description</label>
                        <textarea class="form-control" id="description" name="description" ><%=course != null ? course.getDescription() : ""%></textarea>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Save Changes</button>
                    </div>
                </form>
            </div>
        </div>

         <%@include file="footer.jsp" %>
         <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
