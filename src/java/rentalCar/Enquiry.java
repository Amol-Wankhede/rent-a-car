/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalCar;

/**
 *
 * @author amolwankhede
 */
public class Enquiry {

    int enquiryid;
    String message;
    String status;
    String type;
    int userId;

    public Enquiry() {
    }

    public int getEnquiryid() {
        return enquiryid;
    }

    public void setEnquiryid(int enquiryid) {
        this.enquiryid = enquiryid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

}
