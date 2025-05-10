<%-- 
    Document   : addCourse
    Created on : Jun 28, 2024, 6:33:13 PM
    Author     : ishin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Add New Course</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="CSS/addCourse.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="headers/adminHeader.jsp"%>
   
        <div class="container">
            <h1>Add New Course</h1>
            <div class="d-flex justify-content-center align-items-center body">
                <form class="row col-12 g-3 mt-3" action="addCourseProcess.jsp" method="POST">
                    <div class="col-md-12">
                        <label for="validationDefault01" class="form-label">Title</label>
                        <input type="text" class="form-control" id="validationDefault01" name="title" required>
                    </div>
                    <div class="col-md-12">
                        <label for="validationDefault02" class="form-label">Category</label>
                        <input type="text" class="form-control" id="validationDefault02" name="category" required>
                    </div>
                    <div class="col-md-12">
                        <label for="validationDefaultUsername" class="form-label">Instructor Name</label>
                        <div class="input-group">
                            <input type="text" class="form-control" id="validationDefaultUsername" name="instructor" required>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <label for="validationDefault03" class="form-label">Description</label>
                        <textarea class="form-control" id="validationDefault03" name="description" required></textarea>
                    </div>

                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Add</button>
                    </div>
                </form>
            </div>
        </div>

        <%@include file="footer.jsp"%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
