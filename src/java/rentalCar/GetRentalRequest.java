/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalCar;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import static rentalCar.ViewCarsDao.returnString;

/**
 *
 * @author amolwankhede
 */
public class GetRentalRequest {

    public static ArrayList getRentalRequestList() {
        ArrayList<RentalRequest> data = new ArrayList<RentalRequest>();
        try {
            // Get connection object from ConnectionProvider.java
            Connection conn = ConnectionProvider.getConnection();
            // Prepare SQL query
            PreparedStatement ps = conn.prepareStatement("select * from RentalRequest");

            ResultSet rs = ps.executeQuery(); // get the result of the SQL query

            while (rs.next()) {
                RentalRequest temp = new RentalRequest();
                temp.setRequestId(rs.getInt("requestId"));
                temp.setRegNo(rs.getString("regNo"));
                temp.setDateRequested(rs.getString("dateRequested"));
                temp.setDateFrom(rs.getString("dateFrom"));
                temp.setDateTo(rs.getString("dateTo"));
                temp.setUserId(rs.getInt("userId"));
                temp.setStatus(rs.getString("status"));
                data.add(temp);
            }
            return data;
        } catch (Exception ex) {
            StringWriter errors = new StringWriter();
            ex.printStackTrace(new PrintWriter(errors));
            System.out.println("exception" + errors.toString());
        }
        return data;
    }
}
