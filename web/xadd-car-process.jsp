<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <title> Add Car | Rent A Car</title>

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
                <h1>Add car Process Page</h1>
            </div>
            <%-- Java class containing setter and getter methods for all the varibles of database fields --%>
            <%@page import="rentalCar.AddCarDao"%>
            <jsp:useBean id="bean" class="rentalCar.Car"/>
            <%-- Create an object of LoginBean  --%>
            <jsp:setProperty property="*" name="bean"/>
            <%

                // Create a factory for disk-based file items
                DiskFileItemFactory factory = new DiskFileItemFactory();

                // Sets the size threshold beyond which files are written directly to
                // disk.
                factory.setSizeThreshold(MAX_MEMORY_SIZE);

                // Sets the directory used to temporarily store files that are larger
                // than the configured size threshold. We use temporary directory for
                // java
                factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

                // constructs the folder where uploaded file will be stored
                String uploadFolder = getServletContext().getRealPath("")
                        + File.separator + DATA_DIRECTORY;

                // Create a new file upload handler
                ServletFileUpload upload = new ServletFileUpload(factory);

                // Set overall request size constraint
                upload.setSizeMax(MAX_REQUEST_SIZE);

                try {
                    // Parse the request
                    List items = upload.parseRequest(request);
                    Iterator iter = items.iterator();
                    while (iter.hasNext()) {
                        FileItem item = (FileItem) iter.next();

                        if (!item.isFormField()) {
                            String fileName = new File(item.getName()).getName();
                            String filePath = uploadFolder + File.separator + fileName;
                            File uploadedFile = new File(filePath);
                            System.out.println(filePath);
                            // saves the file to upload directory
                            item.write(uploadedFile);
                        }
                    }

                    // displays done.jsp page after upload finished
                    getServletContext().getRequestDispatcher("/done.jsp").forward(
                            request, response);

                } catch (FileUploadException ex) {
                    throw new ServletException(ex);
                } catch (Exception ex) {
                    throw new ServletException(ex);
                }

                out.println("bean.getActive() " + bean.getActive() + "<br>");
                out.println("bean.getCarImage() " + bean.getCarImage() + "<br>");
                out.println("bean.getCarType() " + bean.getCarType() + "<br>");
                out.println("bean.getDescription() " + bean.getDescription() + "<br>");
                out.println("bean.getRegNo() " + bean.getRegNo() + "<br>");
                out.println("bean.getRentalPrice() " + bean.getRentalPrice() + "<br>");

                out.println("Return value " + AddCarDao.addCarInfo(bean));
            %>

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