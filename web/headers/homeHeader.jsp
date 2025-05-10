<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .navbar {         
                    background: linear-gradient(174deg, rgba(98,207,244,1) 0%, rgba(44,103,242,1) 100%);
            }
            .navbar-brand img {
                width: 300px;
            }
            .nav-link {
                font-size: 1.3rem;
                font-weight: 2rem;
                color: #1C3D52;
                transition: ease-in 0.2s;
                padding: 10px 20px;
            }
            .nav-link:hover {
                color: #432616;
                font-size: 1.6rem;
            }
            .nav-link.active {
                color: #3E849E;
            }
            .navbar-toggler {
                border-color: #66D7EB;
            }
            .navbar-toggler-icon {
                background-image: url("data:image/svg+xml,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(102, 215, 235, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E");
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"><img src="images/logo3.png" class="img"></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav ms-auto">
                        <a class="nav-link px-5 py-2" href="index.jsp">Home</a>
                        <a class="nav-link  px-5 py-2" href="courseDetails.jsp">Courses</a>
                        <a class="nav-link  px-5 py-2" href="login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </nav>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
