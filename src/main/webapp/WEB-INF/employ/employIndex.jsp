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
    .wrap {
        display: flex;
        flex-direction: column;
        align-items: center;
        /*height: 100%;*/
        padding: 30px 20px;
    }


    .card {
        background: #fff;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        border-radius: 8px;
        transition: ease-in-out .28s;
        padding: 15px;
        min-height: 30vh;
        max-width: 100%;
    }

    .card h2 {
        padding-bottom: 16px;
    }

    .card a {
        font-size: 18px;
        color: black;
        text-decoration: none;

    }

    .card p {
        font-size: 16px;
        line-height: 22px;
        color: black;
    }



    .card:not(:last-child):hover,
    .card:not(:first-child):focus-within {
        transform: translateY(-20px);
    }

    .card:not(:last-child):hover~.card,
    .card:not(:first-child):focus-within~.card {
        transform: translateY(40px);
    }
</style>
<div class="wrap">
        <div class="card">
            <h2><a href="#">MyBatis</a></h2>
            <p>MyBatis 是一款优秀的持久层框架，它支持自定义 SQL、存储过程以及高级映射。 MyBatis 免除了几乎所有的 JDBC 代码以及设置参数和获取结果集的工作。MyBatis 可以通过简单的 XML 或注解来配置和映射原始类型、接口和 Java POJO（Plain Old Java Objects，普通老式 Java 对象）为数据库中的记录。</p>
        </div>
        <div class="card">
            <h2><a href="#">Spring Framework</a></h2>
            <p>Spring框架是由于软件开发的复杂性而创建的。 Spring使用的是基本的JavaBean来完成以前只可能由EJB完成的事情。 然而，Spring的用途不仅仅限于服务器端的开发。从简单性、可测试性和 松耦合性角度而言，绝大部分Java应用都可以从Spring中受益。</p>
        </div>
        <div class="card">
            <h2><a href="#">SpringMVC</a></h2>
            <p>它是一个典型的教科书式的mvc构架，而不像struts等都是变种或者不是完全基于mvc系统的框架， 对于初学者或者想了解mvc的人来说我觉得 spring是最好的，它的实现就是教科书！第二它和tapestry一样是 一个纯正的servlet系统，这也是它和tapestry相比 struts所具有的优势。而且框架本身有代码，看起来 容易理解。</p>
        </div>
        <div class="card">
            <h2><a href="#">SpringBoot</a></h2>
            <p>从本质上来说，Spring Boot就是Spring,它做了那些没有它你也会去做的Spring Bean配置。 它使用“习惯优于配置”（项目中存在大量的配置，此外还内置了一个习惯性的配置，让你无需手动进行配置）的理念让你的项 目快速运行起来。使 用Spring Boot很容易创建一个独立运行（运行jar,内嵌Servlet容器）、准生产级别的 基于Spring框架的项目，使用Spring Boot你可以不用或者只需要很少的Spring配置。</p>
        </div>
</div>