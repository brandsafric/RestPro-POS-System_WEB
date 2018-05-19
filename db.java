
import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
   
import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Asanka
 */
public class db {
 


    
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
