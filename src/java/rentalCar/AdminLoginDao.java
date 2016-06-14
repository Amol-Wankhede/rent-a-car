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
public class AdminLoginDao {

    static String returnString = null;

    public static String checkLogin(User bean) {
        try {
            // Get connection object from ConnectionProvider.java
            Connection conn = ConnectionProvider.getConnection();
            // Prepare SQL query
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM User, Staff WHERE email=? AND pwd=? AND user.userId = Staff.userId");

            ps.setString(1, bean.getEmail());   // set first parameter to email
            ps.setString(2, bean.getPwd()); // set second parameter to password
            System.out.println(bean.getEmail());
            System.out.println(bean.getPwd());
            ResultSet rs = ps.executeQuery(); // get the result of the SQL query
            if (rs.next()) {
                returnString = String.valueOf(rs.getInt("userId")) + "-" + rs.getString("staffType")+ "-" + rs.getString("name");
            } else {
                returnString = "error";
            }
        } catch (Exception ex) {
            returnString = "exception";
        }
        return returnString;
    }
}
