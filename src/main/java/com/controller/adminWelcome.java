package com.controller;

import com.entity.User;
import com.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/adminWelcome")
public class adminWelcome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User) req.getSession().getAttribute("user");
        if(user != null) {
            req.getRequestDispatcher("/WEB-INF/admin/adminWelcome.jsp").forward(req, resp);
        } else {
            resp.sendRedirect("/2018210489/home/login");
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String pwd = req.getParameter("passWord");
        User user = UserService.getUser(userName, pwd);
        String url;
        if(user != null)
        {
            req.getSession().setAttribute("user", user);
            url = "/admin/adminWelcome";
        } else {
            url = "/home/login";
        }
        resp.sendRedirect(req.getContextPath() + url);
    }
}
