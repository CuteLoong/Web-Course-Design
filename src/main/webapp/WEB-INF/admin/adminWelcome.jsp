<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/29
  Time: 11:45
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
    .image-shrink {
        height: auto;
        width: auto;
        max-height: 100%;
        max-width: 100%;
    }
    .ellipsis {
        overflow:hidden;
        white-space:nowrap;
        text-overflow:ellipsis;
    }
    .active {
        background-color: #c3c3c3;
        text-decoration: none;
        color: white;
    }

    /*  aside-bar  */
    #aside-bar {
        height: 100vh;
    }
    #nav-head {
        padding: 10px;
        border-bottom: 1px solid #f2f2f2;
        background-color: #c3c3c3;
    }
    nav ul {
        list-style: none;
    }
    nav li a {
        display: block;
        text-decoration: none;
        color: #000000;
        padding: 10px 15px;
    }
    nav li a:hover {
        background-color: #c3c3c3;
        text-decoration: none;
        color: white;
    }
    nav i {
        padding-right: 15px;
        vertical-align: middle;
    }
    nav span {
        vertical-align: middle;
    }

    /*  main  */
    /*  main-head  */
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
    table {
        table-layout: fixed;
        text-align: center;
    }
    table td a {
        padding: 5px 10px;
        margin: 0 5px;
        border-radius: 6px;
        color: white;
        text-decoration: none;
    }
    table td a:hover {
        color: white;
        text-decoration: none;
    }
</style>
<body>
<div id="page">
    <div id="aside-bar" class="col-md-3 col-xl-2">
        <nav class="nav flex-column">
            <div id="nav-head">
                <img src="resources/images/nefu-icon.png" alt="" class="image-shrink">
            </div>
            <ul id="item-list">
                <li><a href="javascript:void(0);" id="dashboard" data-f="home"><i class="material-icons">dashboard</i><span>Dashboard</span></a></li>
                <li><a href="javascript:void(0);" id="upload" data-f="upload"><i class="material-icons">file_upload</i><span>Upload</span></a></li>
            </ul>
        </nav>
    </div>
    <div id="main" class="col-md-9 col-xl-10">
        <div id="main-head"></div>
        <div id="main-body" class="container"></div>
    </div>

    <!-- Modal -->
    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="deleteModalLabel"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <input type="text" id="nid" hidden value="">
                <div class="modal-body" id="message">
                    确定删除这一条新闻吗？
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-danger" id="deleteNews" data-dismiss="modal">确认删除</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="resources/js/bootstrap.min.js" crossorigin="anonymous"></script>
<script src="resources/uploadtable.js"></script>
<script>
    $(function () {
        $.ajax({
            url: "admin" + "/homeHead",
            method: "get",
            dataType: "html",
            beforeSend: ()=> {
                $("#main-head").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
            },
            success: resp=> {
                $("#main-head").html(resp);
                $("#dashboard").addClass("active");
            }
        })
        $("#item-list li").click(function () {
            $(".active").removeClass("active");
            $(this).find("a").addClass("active");
            let i= $(this).find("a").data("f");
            $.ajax({
                url: "admin" + `/\${i}Head`,
                method: "get",
                dataType: "html",
                beforeSend: ()=> {
                    $("#main-head").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
                },
                success: resp=> {
                    $("#main-head").html(resp);
                }
            })
        })
        $("#deleteNews").click(function () {
            let nid = $(this).parents("#deleteModal").find("#nid").val();
            $.ajax({
                url: "admin/deleteNews",
                method: "post",
                data: {"nid" : nid},
                success: resp => {
                    uploadTable();
                }
            })
        })
    })
</script>
</body>
</html>
