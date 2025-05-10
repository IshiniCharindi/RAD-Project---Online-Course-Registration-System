<%-- 
    Document   : header
    Created on : Jun 28, 2024, 6:41:31 PM
    Author     : ishin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
         <style>
            .navbar {
                 background: linear-gradient(174deg, rgba(98,207,244,1) 0%, rgba(44,103,242,1) 100%) !important;
            }
            .navbar-brand img {
                width: 300px !important;
            }
            .nav-link {
                font-size: 1.3rem !important;
                font-weight: 1rem !important;
                color: #1C3D52 !important;
                transition: ease-in 0.2s !important;
                padding: 10px 20px !important;
            }
            .nav-link:hover {
                color: #432616 !important;
                font-size: 1.6rem !important;
            }
            .nav-link.active {
                color: #3E849E !important;
            }
            .navbar-toggler {
                border-color: #66D7EB !important;
            }
            .navbar-toggler-icon {
                background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(102, 215, 235, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E") !important;
            }

        </style>
        
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="images/logo3.png" class="img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav ms-auto">
                        <a class="nav-link" aria-current="page" href="index.jsp">Home</a>
                        <a class="nav-link" href="addCourse.jsp">Add Course</a>
                          <a class="nav-link" href="logOut.jsp">Log Out</a>

                    </div>
                </div>
            </div>
        </nav>
        
    </body>
</html>
