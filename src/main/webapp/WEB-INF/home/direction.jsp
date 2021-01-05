<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/1/4
  Time: 21:01
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


</style>
<body>
<%@include file="/WEB-INF/component/header.jsp"%>
<section>
    <div class="container">
        <div class="new-list-title">
            当前位置：<a href="home/index">首页</a>-><a href="home/introduce">专业介绍</a>
        </div>
        <h2>软件工程方向</h2>
        <p style="text-indent: 2em">
            随着信息化的发展，软件工程专业已经成了一热门专业，其下有八个主要的发展方向：可视化编程、WEB应用程序设计、数据库管理、软件测试、图形图像制作、网络构建技术、网络系统管理、计算机办公应用
        </p>
        <h3>可视化编程</h3>
        <p style="text-indent: 2em">
            要求：掌握程序设计方法及可视化技术，精通一种可视化平台及其软件开发技术。获取Delphi程序员系列、Java初级或VB开发能手认证。
            　　就业方向：企业、政府、社区、各类学校等可视化编程程序员。
        </p>
        <h3>WEB应用程序设计</h3>
        <p style="text-indent: 2em">
            要求：具有美工基础和网页动画设计能力，掌握交互式网页程序的设计技术，能进行网站建设和维护。获取Macromedia多媒体互动设计师或Delphi初级程序员或Delphi快速网络开发工程师认证。
            　　就业方向：企业、政府、社区、各类学校等WEB应用程序员。
        </p>
        <h3>数据库管理</h3>
        <p style="text-indent: 2em">
            要求：能应用关系范式进行数据库设计，精通SQL语言，胜任数据库服务器管理与应用工作。获取Oracle数据库管理或SQL Server数据库应用或Windows XP应用认证。
            　　就业方向：企业、政府、社区、各类学校等部门的中、大型数据库管理员。
        </p>
        <h3>软件测试</h3>
        <p style="text-indent: 2em">
            要求：掌握软件测试的基本原理、方法和组织管理，精通软件测试工具。获取ATA软件测试工程师或Delphi初级程序员或Java初级程序员认证。
            　　就业方向：企业、政府、社区、各类学校等软件测试员。
        </p>
        <h3>图形图像制作</h3>
        <p style="text-indent: 2em">
            要求：精通国际上流行的图形/图像制作工具(如CorelDraw、Photoshop、Pagemaker等)。获取平面设计师相关的认证。
            　　就业方向：广告制作公司、建筑设计公司、包装装璜设计公司、居室装修公司、出版印刷公司。
        </p>
        <h3>网络构建技术</h3>
        <p style="text-indent: 2em">
            要求：熟悉网络结构和组网方式，掌握建网方法，能利用工具分析和排除常见网络故障。获取Cisco路由配置或华为网络工程或AMP应用工程师认证。
            　　就业方向：企业、政府、社区、各类学校等网络构建工程师。
        </p>
        <h3>网络系统管理</h3>
        <p style="text-indent: 2em">
            要求：掌握网络系统管理的基本知识与应用技能，能进行网络系统的安全设置。获取Window2000 Server或TurboLinux TLCE或Cisco路由配置专家认证。
            　　就业方向：企业、政府、社区、各类学校等网络系统管理员。
        </p>
        <h3>计算机办公应用</h3>
        <p style="text-indent: 2em">
            要求：精通办公自动化应用与管理，熟悉服务器的安装、管理和维护，基于应用服务器的相关服务和软件系统，具备对服务器的网络安全设置、邮件、网页发布、FTP、OA、BBS等系统的应用和维护能力。
            　　就业方向：企业、政府、社区、各类学校等系统管理
        </p>
    </div>
</section>
<%@include file="/WEB-INF/component/footer.jsp"%>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>

</script>
</body>
</html>
