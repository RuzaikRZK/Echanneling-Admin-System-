package Admin;



/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


/**
 *
 * @author RZK Technology
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;


public class Database {
     public static Connection con;
    
    public static Connection getConnection() throws Exception{
    
        if(con == null){
        Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/echannel", "root","");
        }
        return con;
    }
    
    //save update dele
    
    public static void setData(String sql)throws Exception{  
        Database.getConnection().createStatement().executeUpdate(sql);
    }
    
    // search
    
    public static ResultSet getData(String sql)throws Exception{
        ResultSet executeQuery = Database.getConnection().createStatement().executeQuery(sql);
        return executeQuery;
    }
    
    
    
    
    
    
}
