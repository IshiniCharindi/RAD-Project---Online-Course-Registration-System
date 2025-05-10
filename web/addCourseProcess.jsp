<%-- 
    Document   : addCourseProcess
    Created on : Jul 16, 2024, 9:02:23 AM
    Author     : ishin
--%>

<%@page import="classes.DbConnection"%>
<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String title = request.getParameter("title");
    String category = request.getParameter("category");
    String instructor = request.getParameter("instructor");
    String description = request.getParameter("description");

    Course course = new Course(title, category, instructor, description);

    if (course.addCourse(DbConnection.getConnection())) {
        System.out.println("saved");
        response.sendRedirect("adminPanel.jsp");
    } else {
        System.out.println("error");
    }

%>