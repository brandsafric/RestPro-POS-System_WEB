<%-- 
    Document   : ReqMember
    Created on : Nov 10, 2017, 8:29:56 PM
    Author     : Asanka
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>



        <%

                try {

                    String First_Name = request.getParameter("firstname");
                    System.out.println(First_Name);
                    String Last_Name = request.getParameter("lastname");
                    String Nic = request.getParameter("nic");
                    String Gender = request.getParameter("gender");
                    String Contact_No = request.getParameter("contact");
                    String Address = request.getParameter("address");
                    String Email = request.getParameter("email");

                    String sql = "insert into User_Filled_Details (First_Name,Last_Name,Nic,Gender,Contact_No,Address,Email) values('" + First_Name + "','" + Last_Name+ "','" + Nic+ "','" + Gender + "','" + Contact_No+ "','" +Address + "','" + Email + "')";
                    executeQuery(sql);

                    response.sendRedirect("index.html");
            //JOptionPane.showMessageDialog(null,"Regsitration Successful!","User Registration",JOptionPane.INFORMATION_MESSAGE);

                } catch (Exception e) {
System.out.println(e);
              //JOptionPane.showMessageDialog(null,"Regsitration Failed!","User Registration",JOptionPane.ERROR_MESSAGE);   
                }

            }
%>

<%
            public void executeQuery(String query) {
                Connection con = DBconnect.connectdb();
                Statement st;

                try {
                    st = con.createStatement();
                    st.executeUpdate(query);

                } catch (Exception e) {

                    
                }

            }

        %>




    </body>
</html>
