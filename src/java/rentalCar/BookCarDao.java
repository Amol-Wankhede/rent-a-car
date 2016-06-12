/**
 *
 * @author amolwankhede
 */
package rentalCar;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BookCarDao {

    static String returnString = null;

    public static Car bookCar(Car bean, String regNo) {
        Car temp = new Car();

        try {
            // Get connection object from ConnectionProvider.java
            Connection conn = ConnectionProvider.getConnection();
            // Prepare SQL query
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM Car WHERE regNo=?");

            ps.setString(1, regNo);   // set first parameter to email

            ResultSet rs = ps.executeQuery(); // get the result of the SQL query

            rs.first();
            temp.setRegNo(rs.getString("regNo"));
            temp.setCarImage(rs.getString("carImage"));
            temp.setCarType(rs.getString("carType"));
            temp.setDescription(rs.getString("description"));
            temp.setRentalPrice(rs.getFloat("rentalPrice"));
            return temp;
        } catch (Exception ex) {
            StringWriter errors = new StringWriter();
            ex.printStackTrace(new PrintWriter(errors));
            returnString = "exception" + errors.toString();
        } finally {
            return temp;
        }
    }
}
