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
import java.util.logging.Logger;

@WebServlet("/admin/updateNews")
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 5)
public class UpdateNews extends HttpServlet {
    private static final Logger LOGGER = Logger.getLogger(UpdateNews.class.getName());
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("nid"));
        News news = NewsService.getNews(id);
        req.setAttribute("news", news);
//        req.getSession().setAttribute("newId", id);
        req.getRequestDispatcher("/WEB-INF/admin/updateNews.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        News news = null;
//        int id = (int) req.getSession().getAttribute("newId");
        int id = Integer.parseInt((req.getParameter("nid")));
        String title = req.getParameter("title");
        String author = req.getParameter("author");
        String content = req.getParameter("content");
        String image = NewsService.getNews(id).getImage();
        if(!req.getParameter("image-file").equals("")){
            Part part = req.getPart("image");
            part.getInputStream().readAllBytes();
            image = Base64.getEncoder().encodeToString((part.getInputStream().readAllBytes()));
        }

        news = new News();
        news.setTitle(title);
        news.setAuthor(author);
        news.setContent(content);
        news.setImage(image);
        news.setId(id);
        NewsService.updateNews(news);
        resp.sendRedirect(req.getContextPath() + "/admin/adminWelcome");
    }
}
