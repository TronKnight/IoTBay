/**
 * Author:  Dev
 * Created: 10 May, 2023
 */

INSERT INTO IOTBAY.Users (FirstName, LastName, Email, Pass, PhoneNumber, StreetNumber, StreetName, Suburb, UState, Postcode, Country)
VALUES
('Gordon', 'Smith', 'gordon.smith@gmail.com', 'Test1234', '1234567890', '702', 'Harris Street', 'Ultimo' , 'NSW', '2000', 'Australia'),
('Joseph', 'Parker', 'joseph.parker@gmail.com', 'Random1234', '0412345678', '710', 'Harris Street', 'Ultimo', 'NSW', '2000', 'Australia'),
('Tony', 'Stark', 'tony.stark@gmail.com', 'Tony0010', '0444444444', '6', 'Marrion', 'Street', 'NSW', '2000', 'Australia');

INSERT INTO IOTBAY.Staff (StaffFirstName, StaffLastName, StaffEmail, StaffPass, StaffPhone, StaffCountry)
VALUES
('Jack', 'Ryan', 'jack.ryan@gmail.com', 'Jack0010', '0412345678', 'Australia'),
('Mike', 'Greer', 'mike.greer@gmail.com', 'Mike4321', '0412345678', 'Australia'),
('David', 'Rose', 'david.rose@gmail.com', 'David5121', '0412345678', 'Australia');


INSERT INTO IOTBAY.UserLogs VALUES
(1, 'Registered', '2023-05-14 10:45:00'),
(2, 'Logged Out', '2023-05-14 11:45:00'),
(3, 'Logged In', '2023-05-14 12:45:00');

INSERT INTO IOTBAY.PRODUCTS (PRODUCTID, PRODUCTNAME, PRODUCTSERIALNUM, PRODUCTCATEGORY, PRODUCTIMAGEURL, PRODUCTQUANTITY, PRODUCTBRAND, PRODUCTPRICE) 
VALUES 
(1, 'Arduino Nana RX-33 ', 1, 'Connector', 'ArduinoNana33.jpg', 1, 'Blobx', 32.34),
(2, 'Asus RTA-X53U ', 2, 'Networking', 'AsusRTAX53U.jpg', 3, 'Asus', 45.56),
(3, 'Mini Travel Router A234 ', 3, 'Networking', 'MiniTravelRouter.jpg', 4, 'Geoma', 75.0),
(4, 'Smart VPN Router X6 ', 4, 'Networking', 'SmartVPNRouter.jpg', 1, 'Techna', 80.99),
(5, 'Development Board Boards Home Smart Devices ', 5, 'Display', 'DevelopmentBoardBoardsHomeSmartDevices.jpg', 5, 'ESCP32', 33.5),
(6, 'In-Hand Networks IR302 ', 6, 'Networking', 'InHandNetworksIR302.jpg', 1, 'In-Hand', 45.77),
(7, 'Switch Bot Hub Portable X2 ', 7, 'Connector', 'SwitchBotHub.jpg', 3, 'Thunderstrike', 34.66),
(8, 'WifI Range Extender Vesma22 ', 8, 'Extender', 'WifiRangeExtender.jpg', 1, 'Vesma', 55.45),
(9, 'Waterproof USB Connector ', 9, 'Connector', 'WaterproofUSBConnector.jpg', 3, 'Underwater', 67.88),
(10, 'Trend Micro Home Netword Security ', 10, 'Display', 'TrendMicroHomeNetwordSecurity.jpg', 2, 'Homemaking', 45.23);
