/*
 * STD611 Java 2 - Assignment
 * Application 2 (using JSP technology)
 * by Amol Wankhede
 * Student ID - TIZ00002TI
 *
 * Java class used to verify email and password stored in the database
    Database name: java
    Entity name: user
 */
package rentalCar;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Arrays;

/**
 *
 * @author Amol Wankhede
 */

public class LoginDao {
    static String returnString = null;

    public static String checkLogin(User bean) {
        try {
            // Get connection object from ConnectionProvider.java
            Connection conn = ConnectionProvider.getConnection();
            // Prepare SQL query
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM User WHERE email=? AND pwd=?");

            ps.setString(1, bean.getEmail());   // set first parameter to email
            ps.setString(2, bean.getPwd()); // set second parameter to password

            ResultSet rs = ps.executeQuery(); // get the result of the SQL query
            if(rs.next()) {
                // Result set will contain string in following numbers
                // 1 - id, 2 - name, 3 - password, 4- email, 5 - country
                returnString = rs.getString(8); // Stores name of the user in returnString
                if(returnString.equals("In-Active"))
                    returnString = "<p>You account has been deactivated by Administrator</p>";
            } else {
                returnString = "error";
            }
        } catch (Exception ex) {
            returnString = "exception";
        }
        return returnString;
    }
}
