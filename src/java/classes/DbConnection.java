/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbConnection {
    final static String url="jdbc:mysql://localhost:3308/coursedetails";
    final static String username="root";
    final static String password="";
    final static String driver="com.mysql.jdbc.Driver";
    
    
   public static Connection getConnection(){
       Connection con=null;
       
        try {
            Class.forName(driver);
            con=DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return con;
   }
}
