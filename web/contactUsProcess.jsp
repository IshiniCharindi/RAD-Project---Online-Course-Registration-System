<%-- 
    Document   : contactUsProcess
    Created on : Aug 10, 2024, 2:48:37 PM
    Author     : ishin
--%>

<%@page import="classes.EmailSender"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String message = request.getParameter("message");
        String senderEmail = request.getParameter("email");
        String subject = "Contact Form";
        if(EmailSender.sendEmail(senderEmail, subject, message)){
            %>
            <script>
                alert("Your Message Send Successfully.")
            </script>
            <%
        }
    }
response.sendRedirect("index.jsp");
%>
