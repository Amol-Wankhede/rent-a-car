<%@page import="java.util.ArrayList"%>
<%@page import="rentalCar.Car"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>View Cars | Rent A Car</title>

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
                <h2>View Cars</h2>
            </div>
            <div class="blog">
                <%-- Java class used to retive car info stored in the database --%>
                <%@page import="rentalCar.ViewCarsDao"%>
                <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
                <jsp:useBean id="bean" class="rentalCar.Car"/>
                <%-- Create an object of LoginBean  --%>
                <jsp:setProperty property="*" name="bean"/>
                <%
                    ArrayList<Car> str = ViewCarsDao.viewCars(bean, request.getParameter("cars"));
                   for (Car c : str) { %>
                <div class="row car-details">
                    <div class="col-md-3">
                        <%  out.println("<img class='img-responsive' src='" + c.getCarImage() + "'>"); %>
                    </div>
                    <div class="col-md-9">
                        <%
                            out.println("<p><em>" +c.getCarType() + " Car </em> </p>");
                            out.println("<p><em>Description : </em>" + c.getDescription() + "</p>");
                            out.println("<p><em>Rental Price per Day: </em>$ " + c.getRentalPrice() + "</p>");
                            out.println("<a class='btn btn-warning' href='book-now.jsp?id=" + c.getRegNo() + "' role='button'>Book Now</a>");
                        %>
                    </div>
                </div>
                <% }%>
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