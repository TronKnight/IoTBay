<%-- 
    Document   : welcome
    Created on : 29 Apr, 2023, 08:44:35 AM
    Author     : Dev
--%>

<%@page import="uts.isd.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <title> Welcome </title>
    </head>
    <body>
        <%
            User user = (User)session.getAttribute("user");
        %>
        
        <% 
            String email = request.getParameter("email");
        %>
        
        <div class="container text-center"  style="margin-top: 1cm">
            <h1> Welcome <%= user.getFirstName() + " " + user.getLastName() %>! </h1>
            <p>Your email is <%=email%></p>
            <p>Your phone number is <%=user.getPhoneNumber()%></p>
            <br />
            <p> Please click on this button below to visit your dashboard </p>
            <form action="main.jsp" method="POST">
                <button  type="submit"> 

                    Dashboard
                </button> 
            </form>
        </div>
    </body>
</html>
