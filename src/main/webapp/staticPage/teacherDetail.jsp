<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2021/1/1
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" crossorigin="anonymous">
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    #page {
        display: flex;
    }
    #side {
        height: 100vh;
    }
    #main {
        height: 100vh;
        display: flex;
        flex-direction: column;
    }

    #intro {
        margin-top: 100px;

    }
    #detail {
        margin-top: 100px;
    }
    p {
        text-indent: 2em;
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
</style>
<body>
<div class="container" id="page">
    <div class="col-md-4 col-xl-3 flex-column" id="side">
        <img src="resources/teacher_all/Lily_all.jpg" alt="">
    </div>
    <div class="col-md-8 col-xl-9 flex-column" id="main">
        <div class="new-list-title">
            当前位置：<a href="home/index">首页</a>-><a href="home/allTeacher">全部教师</a>-><a href="">教师详情</a>
        </div>
        <div id="intro">
            <h2>李莉</h2>
            <span>博士，副教授，软件工程专业主任</span>
        </div>
        <div id="detail">
            <p>
                李莉，博士，副教授，软件工程专业主任，专业教工党支部书记，硕士生导师。主要研究方向：先进软件工程技术、群智能优化、大型分布式计算。主持和参加国家级、省部级各类科学研究项目、教学研究项目10余项，各级各类科研及教学获奖5项，多次获得东北林业大学教学质量优秀奖、教书育人先进个人，获得东北林业大学青年教师授课大赛二等奖，信息与计算机工程学院教师授课精英赛第一名。获得2016年东北林业大学“我最喜爱的十佳教师”称号。主持重点课程、精品在线课程、线上线下建设课程各1门。拥有专利权3项。在国内外核心期刊及国际学术会议上发表学术论文 10余篇，编写教材3部。美国University of California Riverside访问学者。
            </p>
        </div>
    </div>
</div>
</body>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js" crossorigin="anonymous"></script>
</html>
