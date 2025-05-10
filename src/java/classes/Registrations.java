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
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ishin
 */
public class Registrations {

    private Long reg_id;
    private String user_id;
    private String course_id;

    public Registrations(String user_id, String course_id) {
        this.user_id = user_id;
        this.course_id = course_id;
    }

    public Registrations() {
    }

    public Registrations(String user_id) {
        this.user_id = user_id;
    }

    public Long getReg_id() {
        return reg_id;
    }

    public void setReg_id(Long reg_id) {
        this.reg_id = reg_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getCourse_id() {
        return course_id;
    }

    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    public boolean addDetails(Connection con) throws SQLException {
        String sql = "INSERT INTO registarions (user_id,course_id) VALUES (?,?)";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setString(1, this.getUser_id());
        preparedStatement.setString(2, this.getCourse_id());

        return preparedStatement.executeUpdate() > 0;

    }

    public List<Course> findAllDetails(Connection con, String userEmail) throws SQLException {
        
        String sql = "SELECT c.id AS course_id, c.title AS course_title, c.category, c.instrunctor, c.description "
                + " FROM user u JOIN registarions r ON u.id = r.user_id JOIN course c ON r.course_id = c.id "
                + " WHERE u.email = ?";

        PreparedStatement preparedStatement = con.prepareStatement(sql);
        preparedStatement.setString(1, userEmail);
        ResultSet resultSet = preparedStatement.executeQuery();

        List<Course> details = new ArrayList<>();
   
        while (resultSet.next()) {
         
            String title = resultSet.getString("course_title");
            String category = resultSet.getString("category");
            String instructor = resultSet.getString("instrunctor");
            String description = resultSet.getString("description");

            Course course = new Course(title, category, instructor, description);
            details.add(course);
        }

        return details;
    }
}
