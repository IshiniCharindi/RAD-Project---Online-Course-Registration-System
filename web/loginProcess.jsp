<%-- 
    Document   : loginProcess
    Created on : Jul 16, 2024, 1:01:11 AM
    Author     : ishin
--%>

<%@page import="classes.Admin"%>
<%@page import="classes.DbConnection"%>
<%@page import="classes.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String email = request.getParameter("email");
    String pw = request.getParameter("password");
    String type = request.getParameter("type");

    if (type.equals("admin")) {
        Admin admin = new Admin(email, pw);
        String adminID = admin.findAdmin(DbConnection.getConnection());
        if (adminID == null) {

%>
<script type="text/javascript">
    alert("You Don't Have Admin Access");
    window.location.href = ("login.jsp");
</script>
<%    } else {
        HttpSession session1 = request.getSession();
        session1.setAttribute("adminId", adminID);
        session1.setAttribute("adminEmail", email);
        response.sendRedirect("adminPanel.jsp?id=" + adminID);
    }
} else if (type.equals("user")) {
    User user = new User(email, pw);
    String userID = user.findUser(DbConnection.getConnection());
    if (userID == null) {

%>
<script type="text/javascript">
    alert("Password or Username Incorrect");
    window.location.href = "login.jsp";
</script>
<%        } else {
            HttpSession session1 = request.getSession();
            session1.setAttribute("userId", userID);
            session1.setAttribute("userEmail", email);
            response.sendRedirect("courseDetails.jsp?id=" + userID);

        }

    }


%>
