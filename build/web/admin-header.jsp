<header id="header">
    <nav class="navbar navbar-inverse" role="banner">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="admin-index.jsp"><img src="images/logo.png" alt="logo"></a>
            </div>

            <div class="collapse navbar-collapse navbar-right">
                <ul class="nav navbar-nav">
                    <li><a href="admin-index.jsp">Home</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> User accounts <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="view-user-accounts.jsp">View user accounts</a></li>
                            <li><a href="maintain-customer-info.jsp">Maintain customer info</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Cars info <i class="fa fa-angle-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="add-car.jsp">Add car info</a></li>
                            <li><a href="modify-car.jsp">Modify car info</a></li>
                            <li><a href="remove-car.jsp">Remove car info</a></li>
                        </ul>
                    </li>
                    <li><a href="rental-requests.jsp">Rental requests</a></li>
                    <li><a href="view-enquiries.jsp">Enquiries</a></li>
                    <li><a href="#">Reports</a>
                        <ul class="dropdown-menu">
                            <li><a href="available-cars.jsp">Available cars</a></li>
                            <li><a href="rented-cars.jsp">Rented cars</a></li>
                            <li><a href="registered-users.jsp">Registered users </a></li>
                        </ul>
                    </li>                        
                    <li><a href="login.jsp" class="btn btn-warning">Login</a></li>
                </ul>
            </div>
        </div><!--/.container-->
    </nav><!--/nav-->    
</header><!--/header-->
