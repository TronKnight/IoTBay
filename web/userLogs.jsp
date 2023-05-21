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
            ArrayList logs = (ArrayList) session.getAttribute("logs");
            ArrayList tlogs = (ArrayList) session.getAttribute("tlogs");
        %>
        <div>
            <table>
                <p>Logs </p>
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
