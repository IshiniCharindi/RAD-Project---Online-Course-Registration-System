<%-- 
    Document   : registrationProcess
    Created on : Jul 25, 2024, 12:09:07 PM
    Author     : ishin
--%>

<%@page import="classes.Registrations"%>
<%@page import="classes.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    HttpSession session1 = request.getSession();
    String courseId = request.getParameter("id");
    String userId = (String) session1.getAttribute("userId");

    if (userId == null || userId.isEmpty()) {
        %>
        <script>
            alert("User is not logged in.");
            window.location.href = "login.jsp";
        </script>
        <%
    } else if (courseId == null || courseId.isEmpty()) {
        %>
        <script>
            alert("Course ID is missing.");
            window.location.href = "register.jsp";
        </script>
        <%
    } else {
        try {
            Registrations register = new Registrations(userId, courseId);
            if (register.addDetails(DbConnection.getConnection())) {
                %>
                <script>
                    alert("Registration successful");
                    window.location.href = "myCourse.jsp";
                </script>
                <%
            } else {
                %>
                <script>
                    alert("Registration unsuccessful");
                    window.location.href = "register.jsp";
                </script>
                <%
            }
        } catch (Exception e) {
            %>
            <script>
                alert("An error occurred: <%= e.getMessage() %>");
                window.location.href = "register.jsp";
            </script>
            <%
        }
    }
%>
