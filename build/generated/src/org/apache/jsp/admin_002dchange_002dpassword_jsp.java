package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class admin_002dchange_002dpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/admin-header.jsp");
    _jspx_dependants.add("/admin-footer.jsp");
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
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <title> Change Password | Rent A Car</title>\n");
      out.write("    \n");
      out.write("    <!-- core CSS -->\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/animate.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"js/html5shiv.js\"></script>\n");
      out.write("    <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->       \n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("</head><!--/head-->\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("    ");
      out.write("    <header id=\"header\">\n");
      out.write("        <nav class=\"navbar navbar-inverse\" role=\"banner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\".navbar-collapse\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"admin-index.jsp\"><img src=\"images/logo.png\" alt=\"logo\"></a>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div class=\"collapse navbar-collapse navbar-right\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("                        <li><a href=\"admin-index.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> User accounts <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"view-user-accounts.jsp\">View user accounts</a></li>\n");
      out.write("                                <li><a href=\"maintain-customer-info.jsp\">Maintain customer info</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li class=\"dropdown\">\n");
      out.write("                            <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\"> Cars info <i class=\"fa fa-angle-down\"></i></a>\n");
      out.write("                            <ul class=\"dropdown-menu\">\n");
      out.write("                                <li><a href=\"add-car.jsp\">Add car info</a></li>\n");
      out.write("                                <li><a href=\"modify-car.jsp\">Modify car info</a></li>\n");
      out.write("                                <li><a href=\"remove-car.jsp\">Remove car info</a></li>\n");
      out.write("                            </ul>\n");
      out.write("                        </li>\n");
      out.write("                        <li><a href=\"view-requests.jsp\">Rental requests</a></li>\n");
      out.write("                        <li><a href=\"view-enquiries.jsp\">Enquiries</a></li>\n");
      out.write("                        <li><a href=\"reports.jsp\">Reports</a></li>                        \n");
      out.write("                        <li><a href=\"login.jsp\" class=\"btn btn-warning\">Login</a></li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div><!--/.container-->\n");
      out.write("        </nav><!--/nav-->    \n");
      out.write("    </header><!--/header-->\n");
      out.write("    ");
      out.write("  \n");
      out.write("\n");
      out.write("    <section id=\"blog\" class=\"container\">\n");
      out.write("        <div class=\"center\">\n");
      out.write("            <h2>Change Password</h2>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"blog\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-offset-3 col-md-8\">\n");
      out.write("                    <form class=\"form-horizontal\">\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"inputEmail3\" class=\"col-sm-4 control-label\">Current Password</label>\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                          <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Current Password\">\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"inputPassword3\" class=\"col-sm-4 control-label\">New Password</label>\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                          <input type=\"password\" name=\"newPassword\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <label for=\"inputPassword3\" class=\"col-sm-4 control-label\">Confirm Password</label>\n");
      out.write("                        <div class=\"col-sm-4\">\n");
      out.write("                          <input type=\"password\" name=\"cnfPassword\" class=\"form-control\" placeholder=\"Password\">\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                      <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-sm-offset-4 col-sm-4\">\n");
      out.write("                          <button type=\"submit\" class=\"btn btn-success btn-lg\"> Submit </button>\n");
      out.write("                        </div>\n");
      out.write("                      </div>\n");
      out.write("                    </form>  \n");
      out.write("                </div><!--/.col-md-8-->\n");
      out.write("            </div><!--/.row-->\n");
      out.write("        </div>\n");
      out.write("    </section><!--/#blog-->\n");
      out.write("\n");
      out.write("    ");
      out.write("    <section id=\"bottom\">\n");
      out.write("        <div class=\"container wow fadeInDown\" data-wow-duration=\"1000ms\" data-wow-delay=\"600ms\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Users / Customers</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"view-users.jsp\">View user accounts</a></li>\n");
      out.write("                            <li><a href=\"maintain-users.jsp\">Maintain customer accounts</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Cars info</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"add-car.jsp\">Add car info</a></li>\n");
      out.write("                            <li><a href=\"modify-car.jsp\">Modify car info</a></li>\n");
      out.write("                            <li><a href=\"remove-car.jsp\">Remove car info</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Rental</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"accept-request.jsp\">Accept requests</a></li>\n");
      out.write("                            <li><a href=\"reject-request.jsp\">Reject requests</a></li>\n");
      out.write("                            <li><a href=\"view-requests.jsp\">View all requests</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3 col-sm-6\">\n");
      out.write("                    <div class=\"widget\">\n");
      out.write("                        <h3>Reports</h3>\n");
      out.write("                        <ul>\n");
      out.write("                            <li><a href=\"available-cars.jsp\">Available cars</a></li>\n");
      out.write("                            <li><a href=\"rented-cars.jsp\">Rented cars</a></li>\n");
      out.write("                            <li><a href=\"registered-customers.jsp\">Registered customers</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </div>    \n");
      out.write("                </div><!--/.col-md-3-->\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </section><!--/#bottom-->\n");
      out.write("\n");
      out.write("    <footer id=\"footer\" class=\"midnight-blue\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    &copy; 2016 <a target=\"_blank\" href=\"http://ntec.ac.nz/\" title=\"Ntec Java Project GradDip IT\">ASK Java</a> by Amol, Kaushal &amp; Siddu\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-6\">\n");
      out.write("                    <ul class=\"pull-right\">\n");
      out.write("                        <li>Administrator</li>\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </footer><!--/#footer-->");
      out.write("  \n");
      out.write("\n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"js/jquery.isotope.min.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("    <script src=\"js/wow.min.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
