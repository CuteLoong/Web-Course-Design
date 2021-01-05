<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2021/1/4
  Time: 20:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
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
</style>
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
                                    <li>
                                        <a href="home/introduce">
                                            专业相关
                                            <span class="caret"></span>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a href="home/introduce" >专业介绍</a></li>
                                            <li><a href="home/direction" >专业方向</a></li>

                                        </ul>
                                    </li>
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
                                            <%--                                                <li><a href="#" >Action3</a></li>--%>
                                            <%--                                                <li><a href="#" >Action4</a></li>--%>
                                            <%--                                                <li role="separator" class="divider"></li>--%>
                                            <%--                                                <li><a href="#" >Action5</a></li>--%>
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
                child.slideUp("fast");
            }
        })
    })
</script>
