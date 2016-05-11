$(document).ready(function(){

    $("#submit").click(function() {

        var obj = $("input[name='medicineName']");
        if (obj.val().trim() == '') {
            tips(obj, "药物名称不能为空");
            return;
        }

        obj = $("input[name='surplus']");
        if (obj.val().trim() == '') {
            tips(obj, "当前剩余不能为空");
            return;
        }

        obj = $("input[name='takeResion']");
        if (obj.val().trim() == '') {
            tips(obj, "服用原因不能为空");
            return;
        }

        obj = $("input[name='doctor']");
        if (obj.val().trim() == '') {
            tips(obj, "医生姓名不能为空");
            return;
        }

        $('#loadingToast').show();
        $("#addMedicine").submit();
    });

    function tips(obj, text) {
        $(obj).parent(".form-group").addClass("has-error");
        $(obj).parent(".form-group").find(".control-label").find("small").text("(" + text + ")");
    }

    $("input").focus(function() {
        $(this).parent(".form-group").removeClass("has-error");
        $(this).parent(".form-group").find(".control-label").find("small").text("");
    })

});