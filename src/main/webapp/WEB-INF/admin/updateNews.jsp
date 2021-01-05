<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/31
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <c:url var="base" value="/"></c:url>
    <base href="${base}">
    <title>Title</title>
    <link href="https://cdn.bootcss.com/material-design-icons/3.0.1/iconfont/material-icons.css" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="resources/css/bootstrap.min.css" crossorigin="anonymous">
</head>
<style>
    #main-head{
        display: flex;
        align-items: center;
        border-bottom: 1px solid #c3c3c3;
        margin-bottom: 10px;
    }
    #main-head-title {
        font-size: 2em;
        font-weight: bold;
        font-family: KaiTi;
    }
</style>
<body>

<div id="page" class="container">
    <div id="main-head">
        <div class="mr-auto" id="main-head-title">新闻修改</div>
        <div class="col-auto">返回</div>
    </div>
    <div id="main-body">
        <form action="admin/updateNews" method="post" enctype="multipart/form-data">
<%--            <div class="form-group row">--%>
<%--            <label for="staticId" class="col-sm-2 col-form-label">Id</label>--%>
<%--            <div class="col-sm-10">--%>
<%--                <input type="text" readonly class="form-control-plaintext" id="staticId" value="${news.id}" name="nid">--%>
<%--            </div>--%>
            </div>
            <div class="form-group row">
                <input type="hidden" name="nid" value="${news.id}">
                <label for="inputTitle" class="col-sm-2 col-form-label">新闻标题</label>
                <div class="col-sm-6">
                    <input type="text" class="form-control" id="inputTitle" placeholder="Title" value="${news.title}" name="title">
                </div>
            </div>
            <div class="form-group row">
                <label for="staticTime" class="col-sm-2 col-form-label">Time</label>
                <div class="col-sm-10">
                    <input type="text" readonly class="form-control-plaintext" id="staticTime" value="<fmt:formatDate pattern="MM-dd" value="${news.time}" />">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputAuthor" class="col-sm-2 col-form-label">作者</label>
                <div class="col-sm-3">
                    <input type="text" class="form-control" id="inputAuthor" placeholder="Author" value="${news.author}" name="author">
                </div>
            </div>
            <div class="form-group">
                <label for="inputImage">图片修改</label>
                <input type="file" class="form-control-file" id="inputImage" accept="image/png,image/jpg, image/gif" name="image">
                <input type="hidden" name="image-file" value="">
            </div>
            <div class="form-group">
                <label for="inputContent">正文</label>
                <textarea class="form-control" id="inputContent" rows="15" name="content">${news.content}</textarea>
            </div>
            <button type="submit" class="btn btn-primary">发布</button>
        </form>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script>
    $("#inputImage").change(function () {
        let file = $(this).prop("files")[0];
        $(this).next().val(file);
    })
</script>
</body>
</html>
