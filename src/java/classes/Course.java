/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package classes;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ishin
 */
public class Course {
    private Long id;
    private String title;
    private String category;
    private String instructor;
    private String description;

    public Course() {
    }

    public Course(String title, String category, String instructor, String description) {
        this.title = title;
        this.category = category;
        this.instructor = instructor;
        this.description = description;
    }
    public Course(Long id,String title, String category, String instructor, String description) {
        this.id=id;
        this.title = title;
        this.category = category;
        this.instructor = instructor;
        this.description = description;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getInstructor() {
        return instructor;
    }

    public void setInstructor(String instructor) {
        this.instructor = instructor;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
    
    public boolean addCourse(Connection con) throws SQLException{
        
        String sql="INSERT INTO course (title,category,instrunctor,description) VALUES (?,?,?,?)";
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1,this.title);
        pstmt.setString(2,this.category);
        pstmt.setString(3,this.instructor);
        pstmt.setString(4,this.description);
        
        return pstmt.executeUpdate()>0;
    }
    
    public List<Course> findAllCourse(Connection con) throws SQLException{
        List<Course> courses =new ArrayList<>();
        
        String sql="SELECT * FROM course";
        Statement stmt = con.createStatement();
        ResultSet resultSet = stmt.executeQuery(sql);
        
        while(resultSet.next()){
            Long Id = resultSet.getLong("id");
            String title=resultSet.getString("title");
            String category=resultSet.getString("category");
            String instructor=resultSet.getString("instrunctor");
            String description=resultSet.getString("description");
            
            Course course = new Course(Id,title, category, instructor, description);
            courses.add(course);
        }
        return courses;
        
    }
    public Course findCourse(long id) throws SQLException{
         Connection connection = DbConnection.getConnection();
         
        String sql="SELECT * FROM course WHERE id=?";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);

        preparedStatement.setLong(1,id);
        ResultSet resultSet = preparedStatement.executeQuery();

        if(resultSet.next()){
            Long Id = resultSet.getLong("id");
            String title=resultSet.getString("title");
            String category=resultSet.getString("category");
            String instructor=resultSet.getString("instrunctor");
            String description=resultSet.getString("description");
            
            Course course = new Course(Id,title, category, instructor, description);
            return course;

        }
        return null;
    }
    
    public boolean deleteCourse(Long id) throws SQLException{
        Connection connection = DbConnection.getConnection();
        
        String sql="DELETE FROM course WHERE id=?";
        PreparedStatement preparedStatement=connection.prepareStatement(sql);
        preparedStatement.setLong(1,id);
        
        return preparedStatement.executeUpdate()>0;
    }
    
    public boolean updateCourse(Connection con) throws SQLException {
        
        String sql="UPDATE course SET title=?,category=?,instrunctor=?,description=? WHERE id=?";
        PreparedStatement preparedStatement = con.prepareStatement(sql);
        
        preparedStatement.setString(1, this.title);
        preparedStatement.setString(2, this.category);
        preparedStatement.setString(3, this.instructor);
        preparedStatement.setString(4, this.description);
        preparedStatement.setLong(5, this.id);
        
        return preparedStatement.executeUpdate()>0;
    }
}
