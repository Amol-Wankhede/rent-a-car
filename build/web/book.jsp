<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="rentalCar.ConnectionProvider"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Book | Rent A Car</title>

        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->       
        <link rel="shortcut icon" href="images/ico/favicon.ico">
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
    </head><!--/head-->

    <body>

        <%@ include file="header.jsp" %>  

        <section id="blog" class="container">
            <div class="center">
                <h2>Book</h2>
                <p class="lead">Booking process</p>
            </div>
            <div class="blog">
                <div class="row">
                    <div class="col-md-12">
                        <% if (session.getAttribute("userid") != null) {
                                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                Date fromDate = formatter.parse(request.getParameter("from"));

                                int days = Integer.parseInt(request.getParameter("days"));
                                long toDateMilliSeconds = fromDate.getTime()
                                        + (days * 24 * 60 * 60 * 1000);

                                Date toDate = new Date(toDateMilliSeconds);
                                String toDateStr = formatter.format(toDate);
                                String fromDateStr = formatter.format(fromDate);

                                Date now = new Date();
                                String nowStr = formatter.format(now);

                                try {
                                    // Get connection object from ConnectionProvider.java
                                    Connection conn = ConnectionProvider.getConnection();
                                    // Prepare SQL query
                                    PreparedStatement ps = conn.prepareStatement("INSERT INTO "
                                            + "RentalRequest (userId, regNo, dateRequested, dateFrom, dateTo, status) "
                                            + "VALUES (?, ?, ?, ?, ?, ?) ");

                                    ps.setString(1, session.getAttribute("userid").toString());
                                    ps.setString(2, request.getParameter("regNo"));
                                    ps.setString(3, nowStr);
                                    ps.setString(4, fromDateStr);
                                    ps.setString(5, toDateStr);
                                    ps.setString(6, "Pending");

                                    ps.executeUpdate(); // get the result of the SQL query
                                } catch (SQLException ex) {
                                    String error;
                                    StringWriter errors = new StringWriter();
                                    ex.printStackTrace(new PrintWriter(errors));
                                    error = "exception" + errors.toString();
                                    out.println(error);
                                }
                        %>
                        <h4>Your booking has been submitted to the company</h4>
                        <h4>Once approved you will receive email</h4>
                        <% } else { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong> Please login: </strong> You must be logged-in to book car!
                        </div>                           
                        <% }%>

                    </div><!--/.col-md-8-->
                </div><!--/.row-->
            </div>
        </section><!--/#blog-->

        <%@ include file="footer.jsp" %>  

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>