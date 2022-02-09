<%-- 
    Document   : error
    Created on : Feb 9, 2022, 7:01:34 AM
    Author     : yubaraj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error!</title>
    </head>
    <body>
        <h1>Global Error Page</h1>
        <%= exception %>
    </body>
</html>
