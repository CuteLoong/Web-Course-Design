<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/31
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--upload-main-body--%>
<div class="mr-auto" id="main-head-title">新闻发布</div>
<div class="col-auto"></div>
<script>
    $(function () {
        $.ajax({
            url: "admin" + "/uploadBody",
            method: "get",
            dataType: "html",
            beforeSend: ()=> {
                $("#main-body").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
            },
            success: resp=> {
                $("#main-body").html(resp);
            }
        })

    })
</script>