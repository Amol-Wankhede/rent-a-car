package rentalCar;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadServlet
 */
@WebServlet(name = "AddCarProcess", urlPatterns = {"/AddCarProcess"})

@MultipartConfig()
public class AddCarProcess extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private static final String DATA_DIRECTORY = "images/cars/";
    private static final int MAX_MEMORY_SIZE = 1024 * 1024 * 2;
    private static final int MAX_REQUEST_SIZE = 1024 * 1024;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String regNo = "", carType = "", carImage = "", description = "", rentalPrice = "", active = "";
        // Check that we have a file upload request
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);

        if (!isMultipart) {
            return;
        }

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
                    // out.println(filePath);
                    // out.println("FILE" + fileName );
                    carImage = "images/cars/" + fileName;
                    // saves the file to upload directory
                    item.write(uploadedFile);
                } else {
                    // out.println("<br>Got a form field: " + item.getFieldName() + " " + item.getString());
                    switch (item.getFieldName()) {
                        case "regNo":
                            regNo = item.getString();
                            break;
                        case "carType":
                            carType = item.getString();
                            break;
                        case "description":
                            description = item.getString();
                            break;
                        case "rentalPrice":
                            rentalPrice = item.getString();
                            break;
                        case "active":
                            active = item.getString();
                            break;
                    }
                }
            }
            try {
                // Get connection object from ConnectionProvider.java
                Connection conn = ConnectionProvider.getConnection();
                // Prepare SQL query
                PreparedStatement ps = conn.prepareStatement("INSERT INTO "
                        + "Car(regNo, carType, carImage, description, rentalPrice, active) "
                        + "VALUES (?, ?, ?, ?, ?, ?) ");

                ps.setString(1, regNo);
                ps.setString(2, carType);
                ps.setString(3, carImage);
                ps.setString(4, description);
                ps.setFloat(5, Float.parseFloat(rentalPrice));
                ps.setString(6, active);

                ps.executeUpdate(); // get the result of the SQL query
            } catch (SQLException ex) {
                System.out.println(ex);
            }
        } catch (FileUploadException ex) {
            throw new ServletException(ex);
        } catch (Exception ex) {
            throw new ServletException(ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.sendRedirect("car-added.jsp");
    }

}
