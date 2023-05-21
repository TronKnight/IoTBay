<%-- 
    Document   : catalogue
    Created on : 20 May 2023, 10:45:23 pm
    Author     : kishi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.Product" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.text.DecimalFormat"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:derby://localhost:1527/";
String dbName = "usersdb";
String userId = "iotbay";
String password = "admin";
try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>IoTBay Catalogue Browsing</title>
    <link rel="stylesheet" type="text/css" href="cataloguestyle.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <%
            ArrayList<Product> products = (ArrayList<Product>)session.getAttribute("products");
            DecimalFormat priceFormat = new DecimalFormat("$#0.00");
    %>
    <div class="main">
        <nav>
            <h1 class="title"> IoTBay </h1>
            
            <div class="nav-links">
                <ul>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="userRegister.jsp">Sign Up</a></li>
                    <li><a href="index.jsp">Home</a></li>
                </ul>        
            </div>
        </nav>
        <div class="container">
            <h2 class="heading1">Products</h2>
            <table class="tablestyle">
            <thead>
                        <tr>
                            <th class="tabledata">Product ID</th>
                            <th class="tabledata">Product Name</th>
                            <th class="tabledata">Product Quantity</th>
                            <th class="tabledata">Product Price</th>
                        </tr>
            </thead>
            <%
                        try {
                        connection = DriverManager.getConnection(
                        connectionUrl + dbName, userId, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM PRODUCTS";
                        resultSet = statement.executeQuery(sql);
                        while (resultSet.next()) {
                    %>
                    <tr>
                        <td class="tabledata"><%=resultSet.getString("productID")%></td>
                        <td class="tabledata"><%=resultSet.getString("productName")%></td>
                        <td class="tabledata"><%=resultSet.getString("productQuantity")%></td>
                        <td class="tabledata"><%=resultSet.getString("productPrice")%></td>

                    </tr>
                    <%
                        }
                        } catch (Exception e) {
                        e.printStackTrace();
                        }
                    %>
            </table>        
            
        </div>
    </div>
</body>
</html>

