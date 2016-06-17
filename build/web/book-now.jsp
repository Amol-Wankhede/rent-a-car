<%@page import="java.util.ArrayList"%>
<%@page import="rentalCar.Car"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Book Car | Rent A Car</title>
        <!-- core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="css/prettyPhoto.css" rel="stylesheet">
        <link href="css/animate.min.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link href="css/responsive.css" rel="stylesheet">
        <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
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
                <h2>Book Now</h2>
            </div>
            <div class="blog">
                <%-- Java class used to retive car info stored in the database --%>
                <%@page import="rentalCar.BookCarDao"%>
                <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
                <jsp:useBean id="bean" class="rentalCar.Car"/>
                <%-- Create an object of LoginBean  --%>
                <jsp:setProperty property="*" name="bean"/>
                <%
                    Car c = BookCarDao.bookCar(bean, request.getParameter("id"));
                %>
                <form action="book.jsp" method="post" >
                    <div class="row car-details">
                        <div class="col-md-3">
                            <%  out.println("<img class='img-responsive' src='" + c.getCarImage() + "'>");%>
                        </div>
                        <div class="col-md-9">
                            <div class="row">
                                <div class="form-group col-md-3">
                                    <label>Date From</label>
                                    <div class='input-group date'>
                                        <input type='date' name="from" id="dateFrom" class="form-control" required/>
                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Number of days</label>
                                    <div class='input-group'>
                                        <select id="days" name="days" class="form-control" required>
                                            <option selected disabled="disabled"> - Days - </option>
                                            <% for (int a = 1; a <= 10; a++) {
                                                    out.print("<option value='" + a + "'>" + a + "</option>");
                                                }
                                            %>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Rent per day</label>
                                    <div class='input-group'>
                                        <input type='text' class="form-control" id="rent" name="rent" value="<%= c.getRentalPrice()%>" readonly="readonly" /> 
                                    </div>
                                </div>
                                <div class="form-group col-md-3">
                                    <label>Total rent</label>
                                    <div class='input-group'>
                                        <input type='text' class="form-control" id="totalrent" name="totalrent" value="<%= c.getRentalPrice()%>" readonly="readonly" /> 
                                    </div>
                                </div>
                            </div>
                            <input type='hidden' name="regNo" value="<%= request.getParameter("id")%>" /> 

                            <div class="row">
                                <div class="col-md-3">
                                    <!--<a href="book.jsp" class="btn btn-secondary">Confirm Booking </a>-->
                                    <input type="submit" class="btn btn-info" value="Confirm Booking" />
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
    <script src="js/jquery.js"></script>
    <script src="js/moment.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>
    <script src="js/validator.js"></script>
    
    <!--<script src="js/bootstrap-datetimepicker.js"></script>-->
    <script type="text/javascript">
        // $(function() {
        //     var now = moment();
        //     console.log(now.date());
        //     console.log(now.month());
        //     console.log(now.year());
        //     $("#dateFrom").attr( {
        //         "min": now.year() + "-" + (now.month()+2) + "-" +now.date()
        //     });
        // });
        // Change the total rent if number of days are changed
        $("#days").change(function (event) {
            // console.log($("#days").val());
            // console.log("total",  $("#days").val() * $("#rent").val() );
            //  total rent = days * rent per day
            $("#totalrent").val($("#days").val() * $("#rent").val())
        });
    </script>
</body>
</html>