<%@page import="classes.Registrations"%>
<%@page import="java.util.List"%>
<%@page import="classes.Course"%>
<%@page import="classes.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>My Courses</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="CSS/myCourse.css" rel="stylesheet">

   
</head>
<body>
    <%@include file="headers/commonHeader.jsp"%>
    <div class="content">
        <div class="row">
            <% 
                String userEmail = (String) session.getAttribute("userEmail");
                System.out.println("uuuuuu" + userEmail);
                if (userEmail != null) {
                    List<Course> allCourses = new Registrations().findAllDetails(DbConnection.getConnection(), userEmail);
                    for (Course c : allCourses) {
            %>
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title"><%=c.getTitle()%></h5>                    
                            <a href="viewCourse.jsp?title=<%=c.getTitle()%>" class="btn btn-primary">View</a>
                        </div>
                    </div>
                </div>
            <% 
                    }
                } else {
            %>
                <p>User email not found in session.</p>
            <% 
                }
            %>
        </div>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>
