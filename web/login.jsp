<%-- 
    Document   : login
    Created on : Mar 26, 2019, 11:01:13 AM
    Author     : IndianRonaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylingSheet.css"/>
        <title>JSP Login</title>
    </head>
    <body>
        <%@ include file="index.html" %>
        <h1>Login Form</h1>
        <form action="loginprocess.jsp" method="POST">
            User Name: <input type="text" name="userName"/>
            <br>
            Password: <input type="password" name="password"/>
            <br>
            <input type="submit" value="login"/>
            <br>
        </form>
        <form action="popupWindow.html" method="POST">
            <input type="submit" value="Go to Popup"/>
        </form>
        <br>
    </body>
</html>
