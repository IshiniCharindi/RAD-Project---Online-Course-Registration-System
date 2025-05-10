package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/headers/homeHeader.jsp");
    _jspx_dependants.add("/contactUs.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"CSS/index.css\" rel=\"stylesheet\">\n");
      out.write("        <title>Home</title>\n");
      out.write("        <style>\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!-- Header -->\n");
      out.write("        ");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            .navbar {         \n");
      out.write("                    background: linear-gradient(174deg, rgba(98,207,244,1) 0%, rgba(44,103,242,1) 100%);\n");
      out.write("            }\n");
      out.write("            .navbar-brand img {\n");
      out.write("                width: 300px;\n");
      out.write("            }\n");
      out.write("            .nav-link {\n");
      out.write("                font-size: 1.3rem;\n");
      out.write("                font-weight: 2rem;\n");
      out.write("                color: #1C3D52;\n");
      out.write("                transition: ease-in 0.2s;\n");
      out.write("                padding: 10px 20px;\n");
      out.write("            }\n");
      out.write("            .nav-link:hover {\n");
      out.write("                color: #432616;\n");
      out.write("                font-size: 1.6rem;\n");
      out.write("            }\n");
      out.write("            .nav-link.active {\n");
      out.write("                color: #3E849E;\n");
      out.write("            }\n");
      out.write("            .navbar-toggler {\n");
      out.write("                border-color: #66D7EB;\n");
      out.write("            }\n");
      out.write("            .navbar-toggler-icon {\n");
      out.write("                background-image: url(\"data:image/svg+xml,%3Csvg viewBox='0 0 30 30' xmlns='http://www.w3.org/2000/svg'%3E%3Cpath stroke='rgba(102, 215, 235, 1)' stroke-width='2' stroke-linecap='round' stroke-miterlimit='10' d='M4 7h22M4 15h22M4 23h22'/%3E%3C/svg%3E\");\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <nav class=\"navbar navbar-expand-lg\">\n");
      out.write("            <div class=\"container-fluid\">\n");
      out.write("                <a class=\"navbar-brand\" href=\"#\"><img src=\"images/logo3.png\" class=\"img\"></a>\n");
      out.write("                <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarNavAltMarkup\" aria-controls=\"navbarNavAltMarkup\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("                    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("                </button>\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"navbarNavAltMarkup\">\n");
      out.write("                    <div class=\"navbar-nav ms-auto\">\n");
      out.write("                        <a class=\"nav-link px-5 py-2\" href=\"index.jsp\">Home</a>\n");
      out.write("                        <a class=\"nav-link  px-5 py-2\" href=\"courseDetails.jsp\">Courses</a>\n");
      out.write("                        <a class=\"nav-link  px-5 py-2\" href=\"login.jsp\">Login</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!-- Header -->\n");
      out.write("\n");
      out.write("        <!-- Body Content -->\n");
      out.write("        <div class=\"body\">\n");
      out.write("            <div class=\"home\">\n");
      out.write("                <h1 style=\"text-align: center; \n");
      out.write("                    text-shadow: 1px 1px 0 #000,  \n");
      out.write("                    1px -1px 0 #000,   \n");
      out.write("                    -1px 1px 0 #000,   \n");
      out.write("                    1px 1px 0 #000;   \n");
      out.write("                    color: white !important;  \n");
      out.write("                    font-size: 4rem;          \n");
      out.write("                    font-weight: bold;        \n");
      out.write("                    margin-bottom: 20px;\">\n");
      out.write("                    Dive into the waves of knowledge with <br> LearnWave\n");
      out.write("                </h1>  \n");
      out.write("                <div class=\"home-buttons\">\n");
      out.write("                    <a href=\"login.jsp\" class=\"btn\">Login</a>\n");
      out.write("                    <a href=\"signUp.jsp\" class=\"btn\">Sign Up</a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"aboutUs mt-3\">\n");
      out.write("                <div class=\"aboutUs-content\">\n");
      out.write("                    <h1>About Us</h1>\n");
      out.write("                    <p class=\"aboutUs-description\">\n");
      out.write("                        Discover a seamless and efficient way to enroll in your favorite courses with LearnWave. Our platform is designed to provide you with a hassle-free registration experience, ensuring that you can focus on what matters most?learning and growing.\n");
      out.write("                    </p>\n");
      out.write("                    <div class=\"container d-flex align-items-center justify-content-center gap-5\">\n");
      out.write("                        <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                        <img src=\"images/catelog.jpeg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <h3 class=\"card-title\">Course Variety</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                        <img src=\"images/secure.jpeg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <h3 class=\"card-title\">Secure and Reliable</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("                        <img src=\"images/anytime.jpeg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("                        <div class=\"card-body\">\n");
      out.write("                            <h3 class=\"card-title\">24/7 Support</h3>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    <p class=\"aboutUs-mission\">\n");
      out.write("                        Join us today and take the first step towards achieving your educational goals with LearnWave. We are committed to providing you with an exceptional learning journey.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"mt-3\">\n");
      out.write("                ");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Contact Us</title>\n");
      out.write("        <link href=\"CSS/contactUs.css\" rel=\"stylesheet\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header class=\"site-header\">\n");
      out.write("            <h1>Contact Us</h1>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"contact-body\">\n");
      out.write("            <div class=\"left-side\">\n");
      out.write("                <img src=\"images/contactus.jpg\" alt=\"Contact Us\">\n");
      out.write("            </div> \n");
      out.write("            <div class=\"right-side\"> \n");
      out.write("                <form action=\"contactUsProcess.jsp\" method=\"post\">\n");
      out.write("                    <label for=\"name\">Your Name</label>\n");
      out.write("                    <input type=\"text\" name=\"name\" id=\"name\" required>\n");
      out.write("\n");
      out.write("                    <label for=\"email\">Your Email</label>\n");
      out.write("                    <input type=\"email\" name=\"email\" id=\"email\" required>\n");
      out.write("\n");
      out.write("                    <label for=\"message\">Your Message</label>\n");
      out.write("                    <textarea name=\"message\" id=\"message\" rows=\"10\" cols=\"30\" required></textarea>\n");
      out.write("\n");
      out.write("                    <input type=\"submit\" value=\"Submit\">\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- Body Content -->\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            footer {\n");
      out.write("                font-family: 'Georgia', serif !important;\n");
      out.write("                background: linear-gradient(174deg, rgba(98,207,244,1) 0%, rgba(44,103,242,1) 100%) !important;;\n");
      out.write("                padding: 10px;\n");
      out.write("                text-align: center;\n");
      out.write("                color:#1C3D52;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <footer>\n");
      out.write("            &copy; 2024 LearnWave. All rights reserved.\n");
      out.write("        </footer>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
