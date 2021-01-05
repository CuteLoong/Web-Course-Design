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
    <link href="resources/css/myConnCss.css" rel="stylesheet">
</head>
<style>




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

    .news-content-image {
        text-align: center;
    }

    .news-content-image img {
        max-width: 70%;
        border: 1px solid aquamarine;
        border-radius: 10px;
    }


</style>
<body>
<div id="page">
    <%@include file="/WEB-INF/component/header.jsp"%>
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
                    当前位置：<a href="home/index">首页</a>-><a href="home/allNews">新闻首页</a>->正文
                    <a href="home/allNews" class="fr">返回</a>
                </div>
                <div class="news-content">
                    <div class="news-content-title">
                        <h2>${news.getTitle()}</h2>
                    </div>
                    <div class="news-content-time">
                        <p>作者：${news.author}</p>
                        <fmt:formatDate pattern="yyyy-MM-dd" value="${news.getTime()}" />
                    </div>
                    <div class="news-content-context">
                        ${news.getContent()}
                    </div>
                    <div class="news-content-image">
                        <img src="data:image/png;base64,${news.image}" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%@include file="/WEB-INF/component/footer.jsp"%>
</div>


<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>

</script>
</body>
</html>