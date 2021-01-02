<%--
  Created by IntelliJ IDEA.
  User: wxl
  Date: 2020/12/31
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--home-main-body--%>
<table class="table table-striped">
    <thead>
    <tr>
        <th scope="col">#</th>
        <th scope="col">标题</th>
        <th scope="col">时间</th>
        <th scope="col">操作</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${news}" var="n" varStatus="s">
        <tr>
            <th scope="row">${s.count}</th>
            <td class="ellipsis">${n.title}</td>
            <td>
                <fmt:formatDate pattern="yyyy-MM-dd" value="${n.time}" />
            </td>
            <td>
                <a href="home/detailNews?nid=${n.id}" class="bg-success" target="_blank">查看</a>
                <a href="admin/updateNews?nid=${n.id}" class="bg-warning" target="_blank">修改</a>
                <a href="javascript:void(0);" class="bg-danger" id="${n.id}" data-delete>删除</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script>
    $(function () {
        $("[data-delete]").click(function () {
            $("#deleteModal").modal("show");
            $("#deleteModal").find("#nid").attr("value", $(this).attr("id"));
        })
    })
</script>
