function uploadTable() {
    $.ajax({
        url : "/2018210489/admin/homeBody",
        method: "get",
        dataType: "html",
        beforeSend: () => {
            $("#main-body").html("<img src='resources/images/circle-loading.gif' style='display: block;width: 100px;margin: auto;'>")
        },
        success: resp => {
            $("#main-body").html(resp);
        }
    });
}