<%-- 
    Document   : loginprocess
    Created on : Mar 26, 2019, 11:06:07 AM
    Author     : IndianRonaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylingSheet.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="bean.LoginDao" %>
        <jsp:useBean id="obj" class="bean.LoginBean"/>
        <jsp:setProperty property="*" name="obj"/>
        <%
            boolean status = LoginDao.validate(obj);
            if (status) {
                out.println("You have successfully logged in");
                session.setAttribute("session", "TRUE");
            } else {
        %>
        <%
                out.print("Incorrect username or password");
            }
        %>
        <br>
        <br>
        <jsp:include page="index.html"></jsp:include>
    </body>
</html>
