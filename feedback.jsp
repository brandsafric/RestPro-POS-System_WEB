<%-- 
    Document   : feedback
    Created on : Nov 12, 2017, 9:05:34 PM
    Author     : Asanka
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

            String barcode = request.getParameter("barcode");
            String feedback = request.getParameter("feedback");

            try {

                out.println(barcode);
                System.out.println(feedback);
                System.out.println(barcode);
                System.out.println(feedback);
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                Connection conn = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Project", "aswanna", "aswanna1");

                Statement stt;
                ResultSet rs1;
                stt = conn.createStatement();

                String query = "select Member_Id from Member where Barcode='"+barcode+"'";
                rs1 = stt.executeQuery(query);

                if (rs1.next()) {

                    int member_id = rs1.getInt(1);
 System.out.println(member_id);
                    String today = new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());

                    String sql = "insert into Feedback (Barcode,Date,Feedback,Rating_Value,Member_Id) values('"+barcode+"','"+today+"','"+feedback+"',4,'"+member_id+"')";
                    executeQuery(sql);

                   

        %>
        <%!
            public void executeQuery(String query) {

                try {
                    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");

                    Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Project", "aswanna", "aswanna1");

                    Statement st;

                    st = con.createStatement();
                    st.executeUpdate(query);
                    
                     %> <script>      swal({
                title: "Success",
                text: "Feedback Passed Successfully",
                type: "success"
            },
                    function () {
                        window.location.href = 'index.html';
                    });
              </script><%!
                    

                } catch (Exception e) {

                }

            }

        %>
        <%                }

                //JOptionPane.showMessageDialog(null,"Regsitration Successful!","User Registration",JOptionPane.INFORMATION_MESSAGE);
            } catch (Exception e) {
                System.out.println(e);
            }


        %>


    </body>
</html>
