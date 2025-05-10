<%-- 
    Document   : logOut
    Created on : Jul 25, 2024, 11:10:34 PM
    Author     : ishin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
HttpSession session1=request.getSession();
session1.invalidate();
response.sendRedirect("index.jsp");
%>
