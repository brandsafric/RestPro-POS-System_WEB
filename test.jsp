<%-- 
    Document   : test
    Created on : Nov 11, 2017, 12:17:47 PM
    Author     : Asanka
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!ret</h1>
        rty
        <%
        
 String First_Name = request.getParameter("firstname");
            out.println(First_Name);
         String Gender = request.getParameter("gender");
out.println(Gender );
           
           try{
         Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Project","aswanna","aswanna1");
            out.println("asanka");
           }
           catch (Exception e){
               out.println(e);
           }
        %>
    </body>
</html>

    