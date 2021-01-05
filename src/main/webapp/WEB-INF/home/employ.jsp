<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/30
  Time: 10:47
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
    <link href="resources/css/myConnCss.css" rel="stylesheet">
</head>
<style>

    /*----    section    ----*/
    .content {
        margin: 10px auto;
    }
    .tag-title {
        background-color: rgba(0,109,88,0.3);
        padding: 25px;
        color: white;
        font-size: 2em;
        margin-bottom: 0;
        text-align: center;
    }

    .tag ul {
        list-style: none;
    }
    .tag span{
        display: block;
        background-color: #f1f1f1;
        padding: 10px 20px;
        text-align: center;
        cursor: pointer;
        transition: 0.2s;
    }
    .tag span:hover {
        background-color: #f8f8f8;
        color: #9e844d;
    }
    .active {
        background-color: #f8f8f8 !important;
        color: #9e844d;
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

<div id="page">
    <body>
    <%@include file="/WEB-INF/component/header.jsp"%>
    <section>
        <div class="container">
            <div class="tag col-md-3">
                <div class="tag-title">
                    <p>实验室</p>
                </div>
                <ul id="lab-name">
                    <li><span id="employIndex">学习方向</span></li>
                    <li><span id="employMore">就业通知</span></li>
                </ul>
            </div>
            <div class="col-md-9">
                <div class="new-list-title">
                    当前位置：<a href="home/index">首页</a>-><a href="home/employ">就业指导</a>
                </div>
                <div id="lab-show"></div>
            </div>
        </div>
    </section>
    <%@include file="/WEB-INF/component/footer.jsp"%>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
    $(function () {
        $.ajax({
            url: "employ/"+ "employIndex",
            method: "get",
            dataType:"html",
            beforeSend: ()=> {
                $("#lab-show").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
            },
            success: resp=> {
                $("#lab-show").html(resp);
                $("#"+"${lid}").addClass("active");
            }
        })

        $("#lab-name li").click(function () {
            $(".active").removeClass("active");
            $(this).find("span").addClass("active");
            let labId= $(this).find("span").attr("id");
            $.ajax({
                url: "employ/" + labId,
                method: "get",
                dataType: "html",
                beforeSend: ()=> {
                    $("#lab-show").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
                },
                success: resp=> {
                    $("#lab-show").html(resp);
                }
            })
        })
    })
</script>
</body>
</html>
