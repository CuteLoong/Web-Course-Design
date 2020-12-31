<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--professor--%>
<style>
    .show-part {
        display: flex;
        flex-wrap: wrap;
    }

    .teacher-item {
        margin: 0 20px;
        display: inline-block;
        text-align: center;
    }
    .teacher-item img {
        padding: 10px 5px;
        background-color: #f2f2f2;
        border: 1px solid #00785a;
        position: relative;
    }
    .teacher-item a {
        text-decoration: none;
    }

</style>

<div class="show-part">
    <div class="teacher-item">
        <a href="">
            <img src="resources/teacher_all/Lily_all.jpg" alt="">
            <p>李莉</p>
        </a>
    </div>
    <div class="teacher-item">
        <a href="">
            <img src="resources/teacher_all/lsq_all.png" alt="">
            <p>罗嗣卿</p>
        </a>
    </div>
    <div class="teacher-item">
        <a href="">
            <img src="resources/teacher_all/ld_all.jpg" alt="">
            <p>刘丹</p>
        </a>
    </div>
    <div class="teacher-item">
        <a href="">
            <img src="resources/teacher_all/zym_all.jpg" alt="">
            <p>赵玉茗</p>
        </a>
    </div>
</div>