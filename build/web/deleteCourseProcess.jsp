<%-- 
    Document   : deleteCourseProcess
    Created on : Jul 16, 2024, 12:32:49 PM
    Author     : ishin
--%>

<%@page import="classes.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String id = request.getParameter("id");

        Course course=new Course();
        if (course.deleteCourse(Long.parseLong(id))) {
            System.out.println("Deleted");
            response.sendRedirect("adminPanel.jsp");
        } else {
            System.out.println("error");
        }
    
%>
