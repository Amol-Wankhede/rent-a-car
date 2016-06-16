<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.StringWriter"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="rentalCar.ConnectionProvider"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Modify Car | Rent A Car</title>

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
                <h2>Modify car info</h2>
            </div>
            <div class="blog">
                <div class="row">
                    <div class="col-md-offset-3 col-md-8">
                        <%  if (session.getAttribute("type").equals("Staff") || session.getAttribute("type").equals("Admin")) {
                                String error;
                                ResultSet rs = null;
                                try {
                                    // Get connection object from ConnectionProvider.java
                                    Connection conn = ConnectionProvider.getConnection();
                                    // Prepare SQL query
                                    PreparedStatement ps = conn.prepareStatement("SELECT * FROM car WHERE regNo=?");

                                    ps.setString(1, request.getParameter("cid"));   // set first parameter to email

                                    ps.executeQuery(); // get the result of the SQL query
                                    rs = ps.executeQuery(); // get the result of the SQL query
                                } catch (Exception ex) {
                                    StringWriter errors = new StringWriter();
                                    ex.printStackTrace(new PrintWriter(errors));
                                    error = "exception" + errors.toString();
                                    out.println(error);
                                }
                                if (rs.next()) {
                        %>
                        <form class="form-horizontal" method="POST" action="ModifyCarProcess" enctype="multipart/form-data">
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Registration Number</label>
                                <div class="col-sm-4">
                                    <input type="text" name="regNo" class="form-control" value="<%=rs.getString("regNo")%>" readonly="readonly">
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputPassword3" class="col-sm-3 control-label">Car Type</label>
                                <div class="col-sm-4">
                                    <select class='form-control' name="carType">
                                        <option selected="true" disabled="disabled">- Select -</option>
                                        <option <% if(rs.getString("carType").equals("Compact")) out.println("selected"); %>>Compact</option>
                                        <option <% if(rs.getString("carType").equals("Full Size")) out.println("selected"); %>>Full Size</option>
                                        <option <% if(rs.getString("carType").equals("Intermediate")) out.println("selected"); %>>Intermediate</option>
                                        <option <% if(rs.getString("carType").equals("Luxary")) out.println("selected"); %>>Luxary</option>
                                        <option <% if(rs.getString("carType").equals("Premium")) out.println("selected"); %>>Premium</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Description</label>
                                <div class="col-sm-4">
                                    <textarea name="description" rows="3" class="form-control"><%=rs.getString("description")%></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Rental Price</label>
                                <div class="col-sm-4">
                                    <div class="input-group">
                                        <div class="input-group-addon">$</div>
                                        <input type="text" name="rentalPrice" class="form-control" value="<%=rs.getString("rentalPrice")%>"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Status</label>
                                <div class="col-sm-4">
                                    <select class='form-control' name="active">
                                        <option selected="true" disabled="disabled">- Select -</option>
                                        <option <% if(rs.getString("active").equals("Active")) out.println("selected"); %>>Active</option>
                                        <option <% if(rs.getString("active").equals("In-Active")) out.println("selected"); %>>In-Active</option>
                                    </select>                                
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="inputEmail3" class="col-sm-3 control-label">Car image</label>
                                <div class="col-sm-4">
                                    <img src="<%=rs.getString("carImage")%>" class="img-responsive">
                                    <input type="file" name="carImage" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-4">
                                    <button type="submit" class="btn btn-success btn-lg"> Submit </button>
                                </div>
                            </div>
                        </form>  
                        <% }
                        } else { %>
                        <div class="alert alert-danger" role="alert">
                            <span class="glyphicon glyphicon-ok" aria-hidden="true"></span>
                            <strong> Please login: </strong> You must be logged-in to view this page
                        </div>                           
                        <% }%>
                    </div><!--/.col-md-8-->
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