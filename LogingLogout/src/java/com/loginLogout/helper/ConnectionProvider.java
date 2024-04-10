package com.loginLogout.helper;
import java.sql.*;

public class ConnectionProvider {

    private static Connection con = null;

    public static Connection getConnection() {
        if (con == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/signup", "root", "wasim");
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return con;
    }
}
