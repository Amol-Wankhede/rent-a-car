<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rentalCar.ConnectionProvider"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Rented Cars | Rent A Car</title>

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

        <%@ include file="admin-header.jsp" %>  

        <section id="blog" class="container">
            <div class="center">
                <h2>Rented Cars</h2>
            </div>
            <div class="blog">
                <div class="row">
                    <div class="col-md-12">
                        <%
                            String error;
                            if (session.getAttribute("type").equals("Staff") || session.getAttribute("type").equals("Admin")) { %>
                        <table class="table table-condensed table-bordered">
                            <thead> <tr>
                                    <th>#</th>
                                    <th>Reg No</th>
                                    <th>Car Type</th>
                                    <th>From Date </th>
                                    <th>To Date </th>
                                    <th>Total Rental</th>
                                </tr> </thead>
                                <%
                                    try {
                                        // Get connection object from ConnectionProvider.java
                                        Connection conn = ConnectionProvider.getConnection();
                                        // Prepare SQL query
                                        PreparedStatement ps = conn.prepareStatement("SELECT * FROM RentalRequest, Car WHERE RentalRequest.regNo=Car.regNo AND RentalRequest.status LIKE ? AND Car.active NOT LIKE ? AND dateFrom >= ?");

                                        ps.setString(1, "Accepted");   // set first parameter to email
                                        ps.setString(2, "In-Active"); // set first parameter to email

                                        Date date = Calendar.getInstance().getTime();
                                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                        ps.setString(3, sdf.format(date));   // set first parameter to email

                                        ResultSet rs = ps.executeQuery();
                                        int count = 1;
                                        while (rs.next()) {%>

                            <tr>
                                <td><%= count++%></td>
                                <td><%= rs.getString("regNo")%></td>
                                <td><%= rs.getString("carType")%></td>
                                <td><%= rs.getString("dateFrom")%></td>
                                <td><%= rs.getString("dateTo")%></td>
                                <td>$<%= rs.getString("rentalPrice")%>
                                    <%
//                                        long MILLISECONDS_IN_DAY = 24 * 60 * 60 * 1000;
//
////                                        SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd");
////                                        Date date1 = format1.format(rs.getString("dateFrom"));
//String[] array = rs.getString("dateFrom").split("\\-", -1);
//out.println(array[0]);
//
//                                        Date from = new Date(rs.getString("dateFrom"));
//                                        Date to = new Date(rs.getString("dateTo"));
//                                        out.println(
//                                                (int) ((to.getTime() - from.getTime()) / MILLISECONDS_IN_DAY)
//                                        );
                                    %>

                                </td>
                            </tr>
                            <%
                                    }
                                } catch (Exception ex) {
                                    StringWriter errors = new StringWriter();
                                    ex.printStackTrace(new PrintWriter(errors));
                                    error = "exception" + errors.toString();
                                    out.println(error);
                                }
                            %>
                        </table>
                        <% } else { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong> Please login: </strong> You must be logged-in to view this page
                        </div>                           
                        <% }%>

                    </div><!--/.col-md-8
                </div><!--/.row-->
                </div>
        </section><!--/#blog-->

        <%@ include file="admin-footer.jsp" %>  

        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/jquery.isotope.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/wow.min.js"></script>
    </body>
</html>