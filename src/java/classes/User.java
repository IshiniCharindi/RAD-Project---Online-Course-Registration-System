/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class User {

    private Long id;
    private String firstName;
    private String lastName;
    private String email;
    private String address;
    private String phoneNumber;
    private String password;

    public User(String firstName, String lastName, String email, String address, String phoneNumber, String password) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.address = address;
        this.phoneNumber = phoneNumber;
        this.password = MD5.getMd5(password);
    }

    public User(String email, String password) {
        this.email = email;
        this.password = MD5.getMd5(password);
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

   public boolean addUser(Connection con) throws SQLException {
        String sql1 = "SELECT * FROM user WHERE email=?";
        PreparedStatement preparedStatement1 = con.prepareStatement(sql1);
        preparedStatement1.setString(1, this.email);
        ResultSet result = preparedStatement1.executeQuery();
        if (result.next()) {
            return false;
        } else {
            String sql = "INSERT INTO user(firstName, lastName, email, address, phoneNumber, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement preparedStatement = con.prepareStatement(sql);
            preparedStatement.setString(1, this.firstName);
            preparedStatement.setString(2, this.lastName);
            preparedStatement.setString(3, this.email);
            preparedStatement.setString(4, this.address);
            preparedStatement.setString(5, this.phoneNumber);
            preparedStatement.setString(6, this.password);

            return preparedStatement.executeUpdate() > 0;
        }
    }


    public String findUser(Connection con) throws SQLException {
//        Connection connection = DbConnection.getConnection();

        String sql = "SELECT * FROM user WHERE email=? ";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setString(1, this.email);
        ResultSet resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
            String resultPass = resultSet.getString("password");
            System.out.println(resultPass);
            if (this.password.equals(resultPass)) {
                return resultSet.getString("id");
            }
        }
        return null;

    }

}
