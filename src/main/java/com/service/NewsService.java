package com.service;

import com.entity.News;
import com.util.DataSourceUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class NewsService {
    public static List<News> ListNews(int count) {
        List<News> newsList = new ArrayList<>();
        String sql = "SELECT * FROM News ORDER BY publicTime DESC LIMIT ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, count);
            try(ResultSet rs = st.executeQuery()){
                while(rs.next()) {
                    News n = new News();
                    n.setId(rs.getInt("id"));
                    n.setTitle(rs.getString("title"));
                    n.setTime(new Date(rs.getTimestamp("publicTime").getTime()));
                    newsList.add(n);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return newsList;
    }
    public static News getNews(int id) {
        News news = null;
        String sql = "select * from News where id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1,id);
            try(ResultSet rs = st.executeQuery())
            {
                while(rs.next())
                {
                    news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setTime(new Date(rs.getTimestamp("publicTime").getTime()));
                    news.setContent(rs.getString("content"));
                    news.setImages(rs.getString("image"));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }
}
