<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/30
  Time: 11:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .new-list {
        padding: 0 2px;
    }
    .new-list ul {
        list-style: none;
    }

    .new-list li {
        padding: 5px 10px;
        transition: 0.5s;
    }

    .new-list li a{
        padding: 5px 0;
        display: block;
        color: #4c4c4c;
        text-decoration: none;
        transition: 0.5s;
    }
    .new-list-context {
        display: inline-block;
        width: 60%;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .new-list li:hover {
        background-color: #00785a;
    }
    .new-list li:hover a {
        color: white;
    }
</style>

<div class="new-list">
    <ul>
        <li><a href="https://job.alibaba.com/zhaopin/positionList.htm"><span class="new-list-context">阿里巴巴正在招聘</span> <span class="fr">2020-01-04</span></a></li>
    </ul>
</div>
