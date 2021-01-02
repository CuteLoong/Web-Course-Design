<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/20
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    .separator {
        content: "";
        position: absolute;
        right: 0;
        top: 50%;
        width: 1px;
        height: 12px;
        background: #99c9bd;
        margin-top: -6px;
    }
    .image-shrink {
        height: auto;
        width: auto;
        max-height: 100%;
        max-width: 100%;
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

    /*----    section    ----*/
    /*----    jumbotron    ----*/
    /*----    new    ----*/
    .content-notify {
        width: 100%;
        min-height: 300px;
    }
    .title {
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: #e5e5e5 1px solid;
        padding-bottom: 10px;
        margin-bottom: 10px;
    }
    .title .title-header {
        font-size: 30px;
    }
    .title .title-header span {
        vertical-align: middle;
    }
    .title .title-header img {
        vertical-align: middle;
    }
    .title a {
        text-decoration: none;
        color: #00785a;
    }
    .title a:hover {
        color: #9e844d;
    }

    .notify-body {
        /*min-height: 400px;*/
        max-height: 400px;
    }

    .notify-body ul {
        list-style: none;
    }
    .notify-body ul a {
        text-decoration: none;
        display: block;
        padding: 10px 20px;
        color: black;
        align-items: center;
    }
    .notify-body ul a i {
        font-size: 18px;
        color: #00785a;
        font-family: Times New Roman;
        font-style: normal;
        font-weight: bold;
        display: inline-block;
        width: 55px;
        margin-right: 15px;
        position: relative;
        vertical-align: middle;
    }
    .notify-body ul a span {
        color: #323232;
        display: inline-block;
        max-width: 75%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
        vertical-align: middle;
    }
    .notify-body ul a:hover span {
        color: #9e844d;
    }
    .notify-body .activity-pic {
        max-height: 400px;
    }

    /*----    content-teacher    ----*/
    .content-teacher {
        width: 100%;
        height: 250px;
        background-color: #eee;
    }
    .teacher-title {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 10px;
        border-bottom: #e5e5e5 1px solid;
    }
    .teacher-title h2{
        display: inline-block;
    }
    .teacher-title a {
        margin-top: 10px;
        text-decoration: none;
        color: #00785a;
    }
    .card {
        display: flex;
        align-items: flex-start;
    }
    .card .photo {
        height: 80px;
    }
    .card .photo img {
        border-radius: 50%;
    }
    .card .comment .info-simple .info-name {
        font-size: 1.5em;
    }
    .card .comment .info-simple .info-title {
        font-size: 0.5em;
        color: #6e6e6e;
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
<div id="page" class="site">
    <header class="site-header">
        <div class="nav-container">
            <nav id="site-navigation" class="main-navigation green" role="navigation">
                <div class="container nav-bar">
                    <div class="flex-row">
                        <div class="module left site-title-container">
                            <a href="home/index" class="logo-wrap">
                                <img src="resources/images/nefu-icon.png" alt="nefu-icon">
                            </a>
                        </div>
                        <div class="module-group right">
                            <div class="module left">
                                <div class="collapse navbar-collapse">
                                    <ul id="menu" class="menu">
                                        <li><a href="home/introduce">专业介绍</a></li>
                                        <li><a href="home/allTeacher">教师队伍</a></li>
                                        <li><a href="home/employ">就业指南</a></li>
                                        <li>
                                            <a href="home/laboratory">
                                                实验室
                                                <span class="caret"></span>
                                            </a>
                                            <ul class="dropdown-menu">
                                                <li><a href="home/laboratory?lid=lab923" >923创新实验室</a></li>
                                                <li><a href="home/laboratory?lid=lab925" >925移动开发实验室</a></li>
                                                <li><a href="#" >Action3</a></li>
                                                <li><a href="#" >Action4</a></li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="#" >Action5</a></li>
                                            </ul>
                                        </li>
                                        <li><a href="home/login" target="_blank">后台管理</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <section class="content">
        <div class="jumbotron">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <h1><strong>软件工程</strong></h1>
                        <p>软件工程专业是一门研究用工程化方法构建和维护有效的、实用的和高质量的软件的学科。它涉及到程序设计语言，数据库，软件开发工具，系统平台，标准，设计模式等方面。在现代社会中，软件应用于多个方面。典型的软件比如有电子邮件，嵌入式系统，人机界面，办公套件，操作系统，编译器，数据库，游戏等。</p>
                        <p><a class="btn btn-info btn-lg" href="home/introduce" role="button">Learn more</a></p>
                    </div>
                    <div class="col-md-8">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <!-- Indicators -->
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>

                            <!-- Wrapper for slides -->
                            <div class="carousel-inner" role="listbox">
                                <div class="item active">
                                    <img src="resources/images/login_container_bg_01b.jpg" alt="...">
                                    <div class="carousel-caption">

                                    </div>
                                </div>
                                <div class="item">
                                    <img src="resources/images/login_container_bg_02b.jpg" alt="...">
                                    <div class="carousel-caption">

                                    </div>
                                </div>
                                <div class="item">
                                    <img src="resources/images/login_container_bg_03b.jpg" alt="...">
                                    <div class="carousel-caption">

                                    </div>
                                </div>
                            </div>

                            <!-- Controls -->
                            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-notify">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <div class="title">
                                <span class="title-header">
                                    <img src="resources/images/notify.png"></img>
                                    <span>公告通知</span>
                                </span>
                            <span><a href="home/allNews">查看更多-></a></span>
                        </div>
                        <div class="notify-body">
                            <ul>
                                <c:forEach items="${news}" var="n" varStatus="s">
                                    <li>
                                        <a href="home/detailNews?nid=${n.id}">
                                            <i><fmt:formatDate pattern="MM-dd" value="${n.time}" /> <div class="separator"></div></i>
                                            <span>${n.title}</span>
                                        </a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="title">
                                <span class="title-header">
                                    <img src="resources/images/new.png"></img>
                                    <span>校园动态</span>
                                </span>
                            <span><a href="">查看更多-></a></span>
                        </div>
                        <div class="notify-body">
                            <div class="col-md-4 activity-pic">
                                <img src="resources/images/login_container_bg_01b.jpg" alt="" class="image-shrink">
                            </div>
                            <div class="col-md-8">
                                <ul>
                                    <li><a href="">
                                        <i>12-18 <div class="separator"></div></i>
                                        <span>东北林业大学2021年入职专职辅导员选聘综合东北林业大学2021年入职专职辅导员选聘综合考核通过人员公示</span>
                                    </a></li>
                                    <li><a href="">
                                        <i>12-18 <div class="separator"></div></i>
                                        <span>东北林业大学2021年入职专职辅导员选聘综合考核通过人员公示</span>
                                    </a></li>
                                    <li><a href="">
                                        <i>12-18 <div class="separator"></div></i>
                                        <span>东北林业大学2021年入职专职辅导员选聘综合考核通过人员公示</span>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-teacher">
            <div class="container">
                <div class="teacher-title">
                    <h2>主要教师</h2>
                    <a href="home/allTeacher">查看更多-></a>
                </div>
                <div class="teacher-show row">
                    <div class="card col-md-4">
                        <div class="photo col-md-4">
                            <img src="resources/teacher/Lily.jpg" alt="" class="image-shrink">
                        </div>
                        <div class="comment col-md-8">
                            <div class="info-simple">
                                <span class="info-name">李莉</span>
                                <span class="info-title">副教授</span>
                            </div>
                            <div class="info-detail">
                                软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。
                            </div>
                        </div>
                    </div>
                    <div class="card col-md-4">
                        <div class="photo col-md-4">
                            <img src="resources/teacher/bwhyman.jpg" alt="" class="image-shrink">
                        </div>
                        <div class="comment col-md-8">
                            <div class="info-simple">
                                <span class="info-name">王波</span>
                                <span class="info-title">讲师</span>
                            </div>
                            <div class="info-detail">
                                主要研究方向：计算数学，软件开发。发表学术论文3篇。
                            </div>
                        </div>
                    </div>
                    <div class="card col-md-4">
                        <div class="photo col-md-4">
                            <img src="resources/teacher/lsq.png" alt="" class="image-shrink">
                        </div>
                        <div class="comment col-md-8">
                            <div class="info-simple">
                                <span class="info-name">罗嗣卿</span>
                                <span class="info-title">副教授</span>
                            </div>
                            <div class="info-detail">
                                硕士生导师。主要研究方向：信息系统析与设计、图像处理、软件服务与应用。
                            </div>
                        </div>
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
