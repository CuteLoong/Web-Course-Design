<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/31
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--home-main-head--%>
<div class="mr-auto" id="main-head-title">新闻管理</div>
<div class="col-auto">
    <form class="form-inline my-2 my-lg-0" id="search">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" id="search-text">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" data-search>Search</button>
    </form>
</div>

<script>
    $(function () {
        $.ajax({
            url: "admin" + "/homeBody",
            method: "get",
            dataType: "html",
            beforeSend: ()=> {
                $("#main-body").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
            },
            success: resp=> {
                $("#main-body").html(resp);
            }
        })

        $("#search").click(function () {
            return false;
        })

        $("[data-search]").click(function () {
            let title = $("#search-text").val()
            if(title.length > 0) {
                $.ajax({
                    url: "admin/queryNews",
                    method: "get",
                    data: {"title":title},
                    dataType: "html",
                    beforeSend: ()=> {
                        $("#main-body").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
                    },
                    success: resp=> {
                        $("#main-body").html(resp);
                        console.log(title);
                    }
                })
            } else {
                uploadTable();
            }


        })
    })
</script>