<%-- 
    Document   : hello
    Created on : Feb 3, 2022, 7:14:42 AM
    Author     : yubaraj
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hello JSP Page</title>
    </head>
    <body>
        <h1>Hello JSP</h1>
        
        <!--Declaration example-->
        
        <%! 
//        int a;
        int b;
        
public static Connection getConnection() {
        Connection cn = null;
        String url;
        String con;
        try {
            url = "jdbc:mysql://localhost:3306/test";
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

        %>
        
        
        <!--Expression example-->
        
        
        <%= 10*2            %>
        
        <br/>
        <p/>
        <h2>
        <!--Scriptlets example-->
        <% 
        int a = 10;
         b = 2;
        int sum = a+b;
        out.print("The sume of "+a+" and "+b+" is: "+ sum);
        out.print("<p/>");
        out.print(sum);
//        out.print()
/**
 * This is Java doc comment
 */        

/*
* This is multile line comment
*/

// This is single line comment

        
        
        
        %>
        </h2>
      
        <%= sum %>
        
        
        <h3> For loop example </h3>
        
        <%
        for(int i=1; i<=10; i++){
            out.print(i+"<br/>");
        }
        
        %>
        
        
        
        
        <p/>
        
        <a href="
           <%= getConnection() %>
           "> Click to test Database Connection</a>
        
        
        </body>
</html>
