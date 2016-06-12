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

public class ViewCarsDao {
    static String returnString = null;

    public static ArrayList viewCars(Car bean, String type) {
        if(type.equals("all"))
            type = "%";
        ArrayList<Car> cars = new ArrayList<Car>();
        try {
            // Get connection object from ConnectionProvider.java
            Connection conn = ConnectionProvider.getConnection();
            // Prepare SQL query
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM Car WHERE carType like ? AND active=?");

            ps.setString(1, type);   // set first parameter to email
            ps.setString(2, "Active");   // set first parameter to email
            
            ResultSet rs = ps.executeQuery(); // get the result of the SQL query

            while(rs.next()) {
                Car temp = new Car();
                temp.setRegNo(rs.getString("regNo"));
                temp.setCarImage(rs.getString("carImage"));
                temp.setCarType(rs.getString("carType"));
                temp.setDescription(rs.getString("description"));
                temp.setRentalPrice(rs.getFloat("rentalPrice"));
                
                cars.add(temp);
//                returnString +=  "car type " + rs.getString("regNo");
            }
                return cars;
        } catch (Exception ex) {
            StringWriter errors = new StringWriter();
            ex.printStackTrace(new PrintWriter(errors));
            returnString = "exception" + errors.toString();
        }
//        return returnString;
        return cars;
    }
}
