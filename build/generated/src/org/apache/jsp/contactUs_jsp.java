package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class contactUs_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Contact Us</title>\n");
      out.write("        <style>\n");
      out.write("            body {\n");
      out.write("                font-family: Arial, sans-serif;\n");
      out.write("                background-color: #f4f4f4;\n");
      out.write("                margin: 0;\n");
      out.write("                height: 100vh;\n");
      out.write("                display: flex;\n");
      out.write("                justify-content: center;\n");
      out.write("                align-items: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container {\n");
      out.write("                display: flex;\n");
      out.write("                width: 80%;\n");
      out.write("                max-width: 1000px;\n");
      out.write("                background-color: #ffffff;\n");
      out.write("                border-radius: 8px;\n");
      out.write("                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);\n");
      out.write("                overflow: hidden;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .left-side {\n");
      out.write("                flex: 1;\n");
      out.write("                background-image: url('images/contactus.jpg'); /* Replace with your image URL */\n");
      out.write("                background-size: cover;\n");
      out.write("                background-position: center;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .right-side {\n");
      out.write("                flex: 1;\n");
      out.write("                padding: 40px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            h2 {\n");
      out.write("                text-align: center;\n");
      out.write("                color: #333;\n");
      out.write("                margin-bottom: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            label {\n");
      out.write("                display: block;\n");
      out.write("                font-weight: bold;\n");
      out.write("                margin-bottom: 8px;\n");
      out.write("                color: #555;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"text\"],\n");
      out.write("            input[type=\"email\"],\n");
      out.write("            textarea {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px;\n");
      out.write("                margin-bottom: 15px;\n");
      out.write("                border: 1px solid #ccc;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                font-size: 14px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            textarea {\n");
      out.write("                resize: vertical;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"submit\"] {\n");
      out.write("                background-color: #007bff;\n");
      out.write("                color: white;\n");
      out.write("                border: none;\n");
      out.write("                padding: 10px 15px;\n");
      out.write("                border-radius: 4px;\n");
      out.write("                cursor: pointer;\n");
      out.write("                font-size: 16px;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            input[type=\"submit\"]:hover {\n");
      out.write("                background-color: #0056b3;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"left-side\"></div> \n");
      out.write("            <div class=\"right-side\"> \n");
      out.write("                <form action=\"\" method=\"post\">\n");
      out.write("                    <h2>Contact Us</h2>\n");
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
