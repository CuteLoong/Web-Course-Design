<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/29
  Time: 15:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
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
    .title-tag {
        position: relative;
        top: -20px;
    }
    .title-tag p {
        background-color: rgba(0,109,88,0.3);
        padding: 25px;
        color: white;
        font-size: 2em;
        margin-bottom: 0;
        text-align: center;
    }
    .title-tag ul {
        list-style: none;
    }
    .title-tag span{
        display: block;
        background-color: #f1f1f1;
        padding: 10px 20px;
        text-align: center;
        cursor: pointer;
        transition: 0.2s;
    }
    .title-tag span:hover {
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
<body>
<div id="page">
    <%@include file="/WEB-INF/component/header.jsp"%>
    <div id="top-image">
        <img src="resources/images/ejban2.png" alt="" class="image-shrink">
    </div>
    <section class="content">
        <div class="container">
            <div class="col-md-3">
                <div class="title-tag">
                    <p>软件教师</p>
                    <ul id="teacher-list-header">
                        <li><span id="professor" class="active">教授</span></li>
                        <li><span id="as-professor">副教授</span></li>
                        <li><span id="lecture">讲师</span></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="new-list-title">
                    当前位置：<a href="home/index">首页</a>-><a href="home/allTeacher">全部教师</a>
                </div>
                <div id="teacher-show"></div>
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
            url: "teacher/professor",
            method: "get",
            dataType: "html",
            beforeSend: ()=> {
                $("#teacher-show").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
            },
            success: resp=> {
                $("#teacher-show").html(resp);
            }
        })

        $("#teacher-list-header li").click(function () {
            $(".active").removeClass("active");
            $(this).find("span").addClass("active");
            let i= $(this).find("span").attr("id");
            let u = `teacher/` + i;
            $.ajax({
                url: u,
                method: "get",
                dataType: "html",
                beforeSend: ()=> {
                    $("#teacher-show").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
                },
                success: resp=> {
                    $("#teacher-show").html(resp);
                }
            })
        })
    })
</script>
</body>
</html>