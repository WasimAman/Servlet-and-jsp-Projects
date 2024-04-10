package com.loginLogout.dao;

import com.loginLogout.entities.User;
import com.loginLogout.helper.ConnectionProvider;
import java.sql.*;

public class UserDao {

    public static Connection con = ConnectionProvider.getConnection();

    public static boolean saveUser(User user) {
        boolean inserted = false;
        String query = "insert into user(name,email,password,gender,about) values(?,?,?,?,?) ";
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            
            pstmt.executeUpdate();
            inserted = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return inserted;
    }

    public static User validate(String email, String password) {
        String query = "select * from user where email = ? and password = ?";
        User user = new User();
        try {
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);

            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user.setName(set.getString("name"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setGender(set.getString("gender"));
                user.setAbout(set.getString("about"));
                
            } else {
                return null;
            }
        } catch (Exception e) {
        }
        return user;
    }
}
