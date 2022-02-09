<%-- 
    Document   : createUser
    Created on : Feb 4, 2022, 7:26:14 AM
    Author     : yubaraj
--%>
<%@ page errorPage="error.jsp" %>  
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create User</title>
    </head>
    <body>

        <%!
            String firstName, lastName, address;

            public static Connection getConnection() {
                Connection cn = null;
                String url;
                String con;
                try {
                    url = "jdbc:mysql://localhost:3306/aadim_6th_unit_04_lab";
                    con = "com.mysql.jdbc.Driver";
                    Class.forName(con);
                    cn = DriverManager.getConnection(url, "root", "");
                    System.out.println("Connected !");
                } catch (Exception ex) {
                    System.out.println(ex.getMessage());
                    ex.printStackTrace();
                }
                return cn;
            }

            boolean created;
        %>

        <%
            
                Connection cn = getConnection();
                firstName = request.getParameter("firstName");
                lastName = request.getParameter("lastName");
                address = request.getParameter("address");

                String insertQuery = "insert into user (first_name, last_name, address) values ('" + firstName + "', '" + lastName + "', '" + address + "')";
                Statement stat = cn.createStatement();
                stat.executeUpdate(insertQuery);
                created = true;
            

            if(created){
            
        %>

        
        <h2>User Created Successfully!</h2>
        
         <% 
             }else{
        
        %>
        <h2>User Creation Failed!</h2>
        <%
            }
        %>
        
    </body>
</html>
