


import java.sql.Connection;
import java.sql.DriverManager;


public class DBconnect {
    
    Connection con=null;
    
    public static Connection connectdb(){
    
        try {
           
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=Project","aswanna","aswanna1");
            
            return con;
          
        } catch (Exception e) {
        }
        return null;
    
    
    
      
    }
    
    
}