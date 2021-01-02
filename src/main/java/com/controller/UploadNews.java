package com.controller;

import com.entity.News;
import com.service.NewsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Base64;

@WebServlet("/admin/uploadNews")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 5)
public class UploadNews extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doGet(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = null;
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String content = req.getParameter("content");

        Part part = req.getPart("image");
        part.getInputStream().readAllBytes();
        String image = Base64.getEncoder().encodeToString((part.getInputStream().readAllBytes()));

        news = new News();
        news.setTitle(title);
        news.setAuthor(author);
        news.setContent(content);
        news.setImage(image);
        NewsService.addNews(news);
        resp.sendRedirect("/2018210489/admin/adminWelcome");
    }
}
