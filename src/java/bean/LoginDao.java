/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.sql.*;

/**
 * @author IndianRonaldo
 */
public class LoginDao {
    public static boolean validate(LoginBean bean) {
        Connection con = null;
        String DbName = "LoginDB";
        String connectionURL = "jdbc:mysql://localhost:3306/" + DbName;
        boolean status = false;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(connectionURL, "root", "mysql1");
            
            PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM UserTable WHERE UserName = ? and Password = ?");
            
            ps.setString(1, bean.getUserName());
            ps.setString(2, bean.getPassword());
            
            ResultSet rs = ps.executeQuery();
            status = rs.next();
            con.close();
        }
        catch (Exception e) {
        }
        return status;
    }
}
