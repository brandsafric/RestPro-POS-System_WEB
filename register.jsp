

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.Random"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="sweetalert.min.js"></script>
        <script src="sweetalert.min.js"></script>
        <link href="sweetalert.css" rel="stylesheet" type="text/css">
       
    </head>
    <body>

        <%
            
            String First_Name = request.getParameter("firstname");
           
            String Last_Name = request.getParameter("lastname");
            String Nic = request.getParameter("nic");
            String Gender = request.getParameter("gender");
            String Contact_No = request.getParameter("contact");
            String Address = request.getParameter("address");
            String Email = request.getParameter("email");

            if (First_Name.isEmpty() || Last_Name.isEmpty() || Nic.isEmpty() || Gender.isEmpty() || Contact_No.isEmpty() || Address.isEmpty()
                    || Email.isEmpty()) {
        %>
        <script>
            swal({
                title: "Error",
                text: "Any fields should not be empty!",
                type: "error"
            },
            function () {
                window.location.href = 'signin.html';
            });

        </script>

        <%
        } else {

            int mobileno = Integer.parseInt(Contact_No);
            boolean x=false;

            try {

                if (Contact_No.matches("\\d{10}")) {

                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Project", "aswanna", "aswanna1");
                   
                    Statement stmt = con.createStatement();
                    String sql = "insert into User_Filled_Details (First_Name,Last_Name,Nic,Gender,Contact_No,Address,Email) values('" + First_Name + "','" + Last_Name + "','" + Nic + "','" + Gender + "','" + Contact_No + "','" + Address + "','" + Email + "')";

                    int a = stmt.executeUpdate(sql);
                    x=true;
                    
              %> <script>      swal({
                title: "Success",
                text: "Successfully Registered!",
                type: "success"
            },
                    function () {
                        window.location.href = 'index.html';
                    });
              </script><%
                   
                   
       
        
        } else {
        %>
        <script>
            swal({
                title: "Error",
                text: "Enter 10 digit phonr number",
                type: "error"
            },
            function () {
                window.location.href = 'member.html';
            });

        </script>
        <%
                    }

                } catch (Exception e) {
                   %> <script>   
                    swal({title: "Request ",text: "Erroe ", icon: "error", button: "Ok",});
                                </script><%
                }
           
            if(x==true){
                
                 
            
            
            }
            
            }
            
            
            
            


        %>
    </body>
</html>
