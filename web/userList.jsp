<%-- 
    Document   : userList
    Created on : Feb 9, 2022, 7:11:45 AM
    Author     : yubaraj
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="sajan" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User List</title>
    </head>
    <body>
        <h1>User List</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Address</th>
                <th>Action</th>
            </tr>
            <sajan:forEach var="user" items="${userList}">
                <tr>
                <td>${user.id}</td>
                <td>${user.firstName} ${user.firstName}</td>
                <td>${user.address}</td>
                <td>
                    <a href="editUser">Edit</a>
                    <a href="deleteUser">Delete</a>
                </td>
            </tr>
            </sajan:forEach>
            
        </table>
    </body>
</html>
