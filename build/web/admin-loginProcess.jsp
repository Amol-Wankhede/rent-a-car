<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Login | Rent A Car</title>

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
                <h1>Login Process Page</h1>
                <%-- Java class used to verify email and password stored in the database --%>
                <%@page import="rentalCar.AdminLoginDao"%>
                <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
                <jsp:useBean id="bean" class="rentalCar.User"/>
                <%-- Create an object of LoginBean  --%>
                <jsp:setProperty property="*" name="bean"/>

                <%
                    //  A string that contains values retured from checkLogin function
                    String str = AdminLoginDao.checkLogin(bean);
                    // If there is error
                    if (str == "error") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Error:</strong> Email address or password do not match
                </div>
                <%  } // If there is an exception
                else if (str == "exception") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Exception:</strong> Exception in executing SQL query
                </div>
                <% } else if (str == "In-Active") { %>
                <div class="alert alert-danger" role="alert">
                    <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
                    <strong> Alert:</strong> You account has been deactivated by Administrator
                </div>
                <% } else { %>
                <div class="alert alert-success" role="alert">
                    <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                    <strong> Success:</strong> You have been successfully logged-in !
                    <%
                            // Create session by setting session variable username to current user name
                            String[] ary = str.split("-");
                            session.setAttribute("userid", ary[0]);
                            session.setAttribute("type", ary[1]);
                            session.setAttribute("name", ary[2]);
                    %>
                        <jsp:forward page="admin-welcome.jsp" />
                    <% }%>
                </div>                 
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