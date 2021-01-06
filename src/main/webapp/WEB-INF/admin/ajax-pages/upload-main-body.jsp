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
<form action="admin/uploadNews" method="post" enctype="multipart/form-data">
    <div class="form-group row">
        <label for="inputTitle" class="col-sm-2 col-form-label">新闻标题</label>
        <div class="col-sm-6">
            <input type="text" class="form-control" id="inputTitle" placeholder="Title" name="title">
        </div>
    </div>
    <div class="form-group row">
        <label for="inputAuthor" class="col-sm-2 col-form-label">作者</label>
        <div class="col-sm-3">
            <input type="text" class="form-control" id="inputAuthor" placeholder="Author" name="author">
        </div>
    </div>
    <div class="form-group">
        <label for="inputImage">图片上传</label>
        <input type="file" class="form-control-file" id="inputImage" accept=".png, .jpg, .gif" name="image">
    </div>
    <div class="form-group">
        <label for="inputContent">正文</label>
        <textarea class="form-control" id="inputContent" rows="15" name="content-text"></textarea>
        <input type="hidden" name="content" />
    </div>
    <button type="submit" class="btn btn-primary">发布</button>
</form>

<script>
    // $(function () {
    //     $("#inputImage").change(function () {
    //         let file = $(this).prop("files")[0];
    //         $("#file").attr("value", file);
    //         $("#file-name").attr("value", file.name);
    //     })
    // })
    $("textarea").blur(function () {
        let text = $("textarea").val();
        // console.log(text);
        let des = text.replace(/\r\n/g, '<br/>').replace(/\n/g, '<br/>').replace(/\s/g, '&nbsp;');
        $("input[name=content]").val(des);
    })
</script>