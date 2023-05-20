<%-- 
    Document   : staffWelcome
    Created on : Apr 24, 2022, 1:45:06 AM
    Author     : Dev
--%>

<%@page import="uts.isd.model.Staff"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="style.css" rel="stylesheet">
        <title> Welcome </title>
    </head>
    <body>    
        <% 
            String firstName = request.getParameter("fname");
            String lastName = request.getParameter("lname");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phonenum");
        %>
        
        <div class="container"  style="margin-top: 1cm">
            <h1> Welcome <%= firstName + " " + lastName %>! </h1>
            <p>Your email is <%=email%></p>
            <p>Your phone number is <%=phoneNumber%></p>
            <br />
            <p> Please click on this button below to visit your dashboard </p>
            <form action="staffMain.jsp" method="POST">
                <button  type="submit"> 
                    Dashboard
                </button> 
            </form>
        </div>
    </body>
</html>
