<%-- 
    Document   : x
    Created on : Jun 14, 2016, 10:50:25 PM
    Author     : amolwankhede
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String a = "amol wankhede";
                  out.println(a.substring(0, a.indexOf(" ")) );
                  out.println();
            %>
    </body>
</html>
