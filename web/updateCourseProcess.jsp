<%-- 
    Document   : updateCourseProcess
    Created on : Jul 16, 2024, 12:45:58 PM
    Author     : ishin
--%>

<%@page import="classes.DbConnection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");
    String title = request.getParameter("title");
    String category = request.getParameter("category");
    String instructor = request.getParameter("instructor");
    String description = request.getParameter("description");

    Course course = new Course(Long.parseLong(id), title, category, instructor, description);

    if (course.updateCourse(DbConnection.getConnection())) {
        System.out.println("updated");
        response.sendRedirect("adminPanel.jsp");
    } else {
        System.out.println("error");
    }

%>

