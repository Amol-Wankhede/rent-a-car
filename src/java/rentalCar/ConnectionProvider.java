/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalCar;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import static rentalCar.Provider.*;

/**
 *
 * @author amolwankhede
 */
public class ConnectionProvider {
    static Connection conn;
    static String errorMessage = null;

    public static Connection getConnection() {
        // Connect to database
        try {
            // Register JDBC driver
            Class.forName(DRIVER_CLASS);
            try {
                /* Get database connection object
                        first parameter - connection URL
                        second parameter - username
                        third parameter - password
                   All these variables are define in Provider.java
                 */
                conn = DriverManager.getConnection(CONNECTION_URL, USERNAME, PASSWORD);
            } catch (SQLException ex) {
                // If there is SQL exception, store this message and set isError to true
                errorMessage = "Error connecting to SQL Server";
            }
        } catch (ClassNotFoundException ex) {
            // If driver class not found, store this message and set isError to true
            errorMessage = "JDBC Driver not found";
        }
        return conn; // Return database connection object
    }
}
