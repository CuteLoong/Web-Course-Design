<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/25
  Time: 20:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }

    .green {
        background-color: #00785a;
    }

    .image-shrink {
        height: auto;
        width: auto;
        max-height: 100%;
        max-width: 100%;
    }

    .fr {
        float: right;
    }

    /*----    header    ----*/
    .nav-container {
        min-height: 77px;
    }

    .main-navigation {
        clear: both;
        display: block;
        width: 100%;
        padding: 10px 0;
    }

    .nav-bar {
        min-height: 53px;
    }

    #site-navigation .container>.flex-row {
        display: flex;
        align-items: center;
        justify-content: space-between;
    }
    .module-group.right {
        display: flex;
    }

    .module.left {
        float: left;
    }

    .main-navigation .menu {
        width: 100%;
        /*height: 55px;*/
    }
    .main-navigation ul.menu {
        display: flex;
        align-items: center;
        list-style: none;
        margin: 0;
        padding-left: 0;
    }

    .main-navigation .menu>li {
        display: inline-block;
        margin-right: 65px;
        float: left;
        position: relative;
        opacity: 1;
        color: #4c4c4c;
    }

    .main-navigation .menu>li:hover {
        background-color: #006d50;
    }


    .main-navigation .menu li a {
        font-size: 14px;
        line-height: 14px;
        color: white;
        padding: 31px 20px;
    }
    .main-navigation a {
        display: block;
        text-decoration: none;
    }

    .main-navigation .dropdown-menu {
        margin-top: 0;
        background-color: white;
    }

    .main-navigation .dropdown-menu li a{
        color: black;
        padding: 10px 10px;
    }

    /*----    top-image    ----*/
    #top-image {
        width: 100%;
    }

    /*----    content    ----*/
    .content {
        width: 100%;
        margin:10px auto;
    }

    .new-title {
        background-color: rgba(0,109,88,0.3);
        padding: 25px;
        color: white;
        font-size: 2em;
        position: relative;
        top: -20px;
    }

    .new-list-title {
        margin-top: 10px;
        border-bottom: 1px solid #dddddd;
        margin-bottom: 5px;
    }
    .new-list-title a{
        text-decoration: none;
        color: #4c4c4c;
    }

    .news-content {
        margin-top: 20px;
        padding: 0 2px;
    }

    .news-content-title {
        text-align: center;
    }

    .news-content-time {
        text-align: center;
        color: #00785a;
        border-bottom: 1px solid #6e6e6e;
    }

    .news-content-context {
        margin-top: 10px;
        text-indent: 2em;
    }

    /*----    footer    ----*/
    footer {
        background-color: #00785a;
        padding: 25px 0;
        color: white;
        font-size: 12px;
    }
    .footer-info {
        list-style: none;
    }
    .footer-info li {
        text-align: center;
        padding: 2px;
    }
</style>
<body>
<div class="page">
    <header class="site-header">
        <div class="nav-container">
            <nav id="site-navigation" class="main-navigation green" role="navigation">
                <div class="container nav-bar">
                    <div class="flex-row">
                        <div class="module left site-title-container">
                            <a href="/home/index" class="logo-wrap">
                                <img src="resources/images/nefu-icon.png" alt="nefu-icon">
                            </a>
                        </div>
                        <div class="module-group right">
                            <div class="module left">
                                <div class="collapse navbar-collapse">
                                    <ul id="menu" class="menu">
                                        <li><a href="/home/introduce">专业介绍</a></li>
                                        <li><a href="/home/allTeacher">教师队伍</a></li>
                                        <li><a href="/home/employ">就业指南</a></li>
                                        <li>
                                            <a href="/home/laboratory">
                                                实验室
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a href="/home/laboratory?lid=lab923" >923创新实验室</a></li>
                                                <li><a href="/home/laboratory?lid=lab925" >925移动开发实验室</a></li>
                                                <li><a href="#" >Action3</a></li>
                                                <li><a href="#" >Action4</a></li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="#" >Action5</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="/home/login" target="_blank">后台管理</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <div id="top-image">
        <img src="resources/images/ejban2.png" alt="" class="image-shrink">
    </div>
    <section class="content">
        <div class="container">
            <div class="col-md-3">
                <div class="new-title">
                    新闻内容
                </div>
            </div>
            <div class="col-md-9">
                <div class="new-list-title">
                    当前位置：<a href="/home/index">首页</a>-><a href="/home/allNews">新闻首页</a>->正文
                    <a href="/home/allNews" class="fr">返回</a>
                </div>
                <div class="news-content">
                    <div class="news-content-title">
                        <h2>${news.getTitle()}</h2>
                    </div>
                    <div class="news-content-time">
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${news.getTime()}" />
                    </div>
                    <div class="news-content-context">
                        ${news.getContent()}
                    </div>
                </div>
            </div>
        </div>
    </section>
    <footer>
        <div class="container">
            <div class="row">
                <div class="left col-md-7">
                    <ul>
                        <img src="resources/images/lolo.png" alt="">
                    </ul>
                </div>
                <div class="right col-md-5">
                    <ul class="footer-info">
                        <li><span>东北林业大学版权所有</span></li>
                        <li><span>中国</span></li>
                        <li><span>黑龙江哈尔滨市香坊区和兴路26号</span></li>
                        <li><span>邮编  150040</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</div>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
    $(function () {
        $("#menu li").hover(function () {
            let child = $(this).find(".dropdown-menu");
            if(child)
            {
                child.slideDown();
            }
        },function () {
            let child = $(this).find(".dropdown-menu");
            if(child)
            {
                child.slideUp();
            }
        })
    })
</script>
</body>
</html>