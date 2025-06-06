/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import com.sun.mail.imap.protocol.ID;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ishin
 */
public class Admin {
    private int id;
    private String email;
    private String password;

    public Admin(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String findAdmin(Connection con) throws SQLException{
        
        String sql="SELECT * FROM admin WHERE email=?";
        PreparedStatement preparedStatement=con.prepareStatement(sql);
        preparedStatement.setString(1, this.email);
        ResultSet res=preparedStatement.executeQuery();
        
        while(res.next()){
            String resPassword=res.getString("password");
            if(resPassword.equals(this.password)){
                String adminId=res.getString("id");
                System.out.println(adminId);
                return adminId;
            }
        }
        return null;
        
    }
    
    
}
