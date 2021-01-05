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
                    news.setImage(rs.getString("image"));
                    news.setAuthor(rs.getString("author"));
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }
    public static void addNews(News news) {
        String sql = "insert into News(title, content, image, author) values(?,?,?,?)";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, news.getTitle());
            st.setString(2, news.getContent());
            st.setString(3, news.getImage());
            st.setString(4, news.getAuthor());
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void updateNews(News news) {
        String sql = "update News n set n.title=?, n.content=?, n.image=?, n.author=? where n.id=?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1, news.getTitle());
            st.setString(2, news.getContent());
            st.setString(3, news.getImage());
            st.setString(4, news.getAuthor());
            st.setInt(5, news.getId());
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void deleteNews(int id) {
        String sql = "delete from News where id = ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static List<News> queryNews(String title) {
        List<News> news = new ArrayList<>();
        String sql = "select * from News where title like ?";
        try(Connection conn = DataSourceUtils.getConnection();
            PreparedStatement st = conn.prepareStatement(sql)) {
            st.setString(1,"%"+title+"%");
            try(ResultSet rs = st.executeQuery()) {
                while(rs.next())
                {
                    News n = new News();
                    n.setId(rs.getInt("id"));
                    n.setTitle(rs.getString("title"));
                    n.setTime(new Date(rs.getTimestamp("publicTime").getTime()));
                    n.setContent(rs.getString("content"));
                    n.setImage(rs.getString("image"));
                    n.setAuthor(rs.getString("author"));
                    news.add(n);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return news;
    }
}
