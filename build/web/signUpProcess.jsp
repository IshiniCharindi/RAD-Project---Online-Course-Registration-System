<%-- 
    Document   : signUpProcess
    Created on : Jul 16, 2024, 2:05:12 AM
    Author     : ishin
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="classes.DbConnection"%>
<%@page import="java.util.logging.Level"%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
    String firstName = request.getParameter("fname");
    String lastName = request.getParameter("lname");
    String email = request.getParameter("email");
    String address = request.getParameter("address");
    String phoneNumber = request.getParameter("pnumber");
    String password = request.getParameter("pw");
    


    User user = new User(firstName, lastName, email, address, phoneNumber, password);
   
    try {
        if (!user.addUser(DbConnection.getConnection())) {  
%>
            <script type="text/javascript">
                alert("User already exists.");
                window.location.href = "signUp.jsp";
            </script>
<%
        } else {
            System.out.println("Saved");
            response.sendRedirect("login.jsp");
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>

