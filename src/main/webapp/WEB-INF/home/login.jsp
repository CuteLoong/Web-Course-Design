<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/29
  Time: 11:08
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
</head>
<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
    }
    body {
        background-color: #333;
    }

    .login-box {
        width: 100vw;
        max-width: 100%;
        height: 100vh;
        background-image: linear-gradient(45deg, #9fbaa8,#31354c);
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .login-box form {
        text-align: center;
        color: white;
    }

    .login-box form h1 {
        font-weight: 400;
    }

    .input-txt {
        display: block;
        width: 240px;
        padding: 10px 5px;
        margin: 10px 0;
        text-align: center;
        outline: none;
        border-radius: 6px;
        border: 1px solid white;
        background: #ffffff28;
        color: white;
        transition: 0.3s;
    }
    .input-txt:focus {
        border: 1px solid #4d864d;
    }
    .login-btn {
        width: 240px;
        padding: 10px;
        color: white;
        border-radius: 6px;
        border: 0;
        cursor: pointer;
        background: #2c3e50;
    }
</style>
<body>
<div class="page">
    <div class="login-box">
        <form action="/2018210489/admin/adminWelcome" method="post">
            <h1>后台管理系统</h1>
            <input id="name" type="text" class="input-txt" placeholder="Username" name="userName">
            <input id="passwd" type="password" class="input-txt" placeholder="Password" name="passWord">
            <input type="submit" class="login-btn" value="Login">
        </form>
    </div>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(function () {
        $(".login-btn").click(function () {
            let ok = $("#name").val() && $("#passwd").val() ;
            if(!ok) {
                return false;
            }
        })
    })
</script>
</body>
</html>