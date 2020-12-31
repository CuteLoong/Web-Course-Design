package com.service;

import com.entity.User;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserService {
    public static User getUser(String userName, String passWord)
    {
        User user = null;
        String sql = "select * from User where userName = ? and passWord = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, userName);
            st.setString(2, passWord);
            try(ResultSet rs = st.executeQuery()) {
                while(rs.next()) {
                    user = new User(rs.getString("userName"), rs.getString("passWord"));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
}
