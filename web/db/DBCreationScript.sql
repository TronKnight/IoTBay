/**
 * Author:  Dev
 * Created: 10 May, 2023
 */

CREATE TABLE Users (
    UserID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    FirstName VARCHAR(50) NOT NULL, 
    LastName VARCHAR(50) NOT NULL, 
    Email VARCHAR(50) NOT NULL, 
    Pass VARCHAR(20) NOT NULL,
    PhoneNumber VARCHAR(10) NOT NULL, 
    StreetNumber VARCHAR(5) NOT NULL, 
    StreetName VARCHAR(50) NOT NULL, 
    Suburb VARCHAR(50) NOT NULL, 
    UState VARCHAR(15) NOT NULL, 
    Postcode VARCHAR(4) NOT NULL, 
    Country VARCHAR(50) NOT NULL, 
    PRIMARY KEY (UserID)
);

CREATE TABLE Staff (
    StaffID INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    StaffFirstName VARCHAR(50) NOT NULL,
    StaffLastName VARCHAR(50) NOT NULL,
    StaffEmail VARCHAR(50) NOT NULL, 
    StaffPass VARCHAR(20) NOT NULL,
    StaffPhone VARCHAR(10) NOT NULL,
    StaffCountry VARCHAR(50) NOT NULL,  
    PRIMARY KEY (StaffID)
);

CREATE TABLE UserLogs (
    UserID INT,
    STATUS VARCHAR(15),
    CurrentTime TimeStamp,
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

CREATE TABLE PRODUCTS (
    PRODUCTID INTEGER NOT NULL,
    PRODUCTNAME VARCHAR(50),
    PRODUCTSERIALNUM INTEGER,
    PRODUCTCATEGORY VARCHAR(50),
    PRODUCTIMAGEURL VARCHAR(100),
    PRODUCTQUANTITY INTEGER,
    PRODUCTBRAND VARCHAR(50),
    PRODUCTPRICE DOUBLE,
    PRIMARY KEY (PRODUCTID)
);
