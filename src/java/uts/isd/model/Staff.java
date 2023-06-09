package uts.isd.model;

import java.io.Serializable;

/**
 * @author Dev
 */
public class Staff implements Serializable {
        private int staffID;
    private String firstName, lastName, email, phoneNumber, country, password;

    public Staff(
            int staffID, 
            String firstName, 
            String lastName, 
            String email, 
            String password, 
            String phoneNumber,  
            String country) {
        this.staffID = staffID;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
        this.phoneNumber = phoneNumber;
        this.country = country;
    }

    public int getStaffID() {
        return staffID;
    }
    
    public void setUserID(int staffID) {
        this.staffID = staffID;
    }
    
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }
}
