/**
 * Author:  Dev
 * Created: 10 May, 2023
 */

INSERT INTO IOTBAY.Users (FirstName, LastName, Email, Pass, PhoneNumber, StreetNumber, StreetName, StreetType, Suburb, UState, Postcode, Country)
VALUES
('Gordon', 'Smith', 'gordon.smith@gmail.com', 'Test1234', '1234567890', '702', 'Harris Street', 'Street', 'Ultimo' , 'NSW', '2000', 'Australia'),
('Joseph', 'Parker', 'joseph.parker@gmail.com', 'Random1234', '0412345678', '710', 'Harris Street', 'Street', 'Ultimo', 'NSW', '2000', 'Australia'),
('Tony', 'Stark', 'tony.stark@gmail.com', 'tony0010', '0444444444', '6', 'Marrion', 'Street', 'Ultimo', 'NSW', '2000', 'Australia');

INSERT INTO IOTBAY.Staff (StaffFirstName, StaffLastName, StaffEmail, StaffPass, StaffPhone, StaffCountry)
VALUES
('Jack', 'Ryan', 'jack.ryan@gmail.com', 'jack0010', '0412345678', 'Australia'),
('Mike', 'Greer', 'mike.greer@gmail.com', 'mike4321', '0412345678', 'Australia'),
('David', 'Rose', 'david.rose@gmail.com', 'david5121', '0412345678', 'Australia');


INSERT INTO IOTBAY.UserLogs VALUES
(1, 'Registered', '2023-05-14 10:45:00'),
(2, 'Logged Out', '2023-05-14 11:45:00'),
(3, 'Logged In', '2023-05-14 12:45:00');