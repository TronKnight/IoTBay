<%-- 
    Document   : userLogs
    Created on : May 11, 2023, 4:06:51 PM
    Author     : Dev
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="uts.isd.model.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <title> Logs </title>
    </head>
    <body>
        <%
            ArrayList<User> users = (ArrayList<User>)session.getAttribute("users");
        %>
        <nav class="navbar navbar-expand-md navbar-dark bg-primary">
            <div class="container">
                <a href="index.jsp" class="navbar-brand"> <h1> IoTBay </h1> </a>
                <button 
                    class="navbar-toggler" 
                    type="button" 
                    data-bs-toggle="collapse" 
                    data-bs-target="#navbar">
                    <span class="navbar-toggler-icon"></span>
                </button> 
                <div class="collapse navbar-collapse" id="navbar">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a href="about.jsp" class="nav-link"> About </a>
                        </li>
                        <li class="nav-item">
                            <a href="contact.jsp" class="nav-link"> Contact </a>
                        </li>
                        <li class="nav-item">
                            <a href="terms.jsp" class="nav-link"> Terms </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <%
            ArrayList logs = (ArrayList) session.getAttribute("logs");
            ArrayList tlogs = (ArrayList) session.getAttribute("tlogs");
        %>
        <div class="container my-3">
            <table class="table table-sm table-bordered">
                <p class="display-6"> Account History Logs </p>
                <thead>
                    <tr>
                        <th scope="col">Status</th>
                        <th scope="col">Date and Time</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (int i = 0; i < logs.size(); i++) {
                    %>
                    <tr>
                        <td><%= logs.get(i)%></td>
                        <td> <%= tlogs.get(i)%></td>

                    </tr>
                    <%
                        }
                    %>
            </table>
        </div>
    </body>
</html>
