<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/30
  Time: 10:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
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


    /*----    title    ----*/
    .new-list-title {
        margin-top: 10px;
        border-bottom: 1px solid #dddddd;
        margin-bottom: 5px;
    }
    .new-list-title a{
        text-decoration: none;
        color: #4c4c4c;
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
<section>
    <div class="container">
        <div class="new-list-title">
            当前位置：<a href="home/index">首页</a>-><a href="home/introduce">专业介绍</a>
        </div>
        <h2>软件工程</h2>
        <p style="text-indent: 2em">
            应用计算机科学理论和技术以及工程管理原则和方法，按预算和进度，实现满足用户要求的软件产品的定义、开发、和维护的工程或进行研究的学科
        </p>
        <h3>目的</h3>
        <p style="text-indent: 2em">
            1968年秋季，NATO（北约）的科技委员会召集了近50名一流的编程人员、计算机科学家和工业界巨头，讨论和制定摆脱“软件危机”的对策。在那次会议上第一次提出了软件工程（software engineering）这个概念，研究和应用如何以系统性的、规范化的、可定量的过程化方法去开发和维护软件，以及如何把经过时间考验而证明正确的管理技术和当前能够得到的最好的技术方法结合起来的学科。它涉及到程序设计语言、数据库、软件开发工具、系统平台、标准、设计模式等方面。其后的几十年里，各种有关软件工程的技术、思想、方法和概念不断被提出，软件工程逐步发展为一门独立的科学。
        </p>
        <p style="text-indent: 2em">
            1993年，电气电子工程师学会（IEEE）给出了一个更加综合的定义："将系统化的、规范的、可度量的方法用于软件的开发、运行和维护的过程，即将工程化应用于软件开发中"。此后，IEEE多次给出软件工程的定义。
        </p>
        <p style="text-indent: 2em">
            在现代社会中，软件应用于多个方面。典型的软件比如有电子邮件、嵌入式系统、人机界面、办公包、操作系统、网页、编译器、数据库、游戏等。同时，各个行业几乎都有计算机软件的应用，比如工业、农业、银行、航空、政府部门等。这些应用促进了经济和社会的发展，提高人们的工作效率，同时提升了生活质量。
        </p>
        <p style="text-indent: 2em">
            软件工程师是对应用软件创造软件的人们的统称，软件工程师按照所处的领域不同可以分为系统分析师、系统架构师、前端和后端工程师、程序员、测试工程师、用户界面设计师等等。各种软件工程师人们俗称程序员。
        </p>
        <h3>由来</h3>
        <p style="text-indent: 2em">
            鉴于软件开发时所遭遇困境，北大西洋公约组织（NATO）在1968年举办了首次软件工程学术会议，并于会中提出“软件工程”来界定软件开发所需相关知识，并建议“软件开发应该是类似工程的活动”。软件工程自1968年正式提出至今，这段时间累积了大量的研究成果，广泛地进行大量的技术实践，借由学术界和产业界的共同努力，软件工程正逐渐发展成为一门专业学科。
        </p>
        <h3>软件危机</h3>
        <p style="text-indent: 2em">
            1970年代和1980年代的软件危机。在那个时代，许多软件最后都得到了一个悲惨的结局，软件项目开发时间大大超出了规划的时间表。一些项目导致了财产的流失，甚至某些软件导致了人员伤亡。同时软件开发人员也发现软件开发的难度越来越大。在软件工程界被大量引用的案例是Therac-25的意外：在1985年六月到1987年一月之间，六个已知的医疗事故来自于Therac-25错误地超过剂量，导致患者死亡或严重辐射灼伤。
        </p>
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
