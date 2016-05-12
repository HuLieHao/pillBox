$(document).ready(function(){

    $("#submit").click(function() {

        var obj = $("input[name='appointment_time']");
        if (obj.val().trim() == '') {
            tips(obj, "预约日期不能为空");
            return;
        }

        obj = $("input[name='doctor_name']");
        if (obj.val().trim() == '') {
            tips(obj, "医生姓名不能为空");
            return;
        }

        obj = $("input[name='remarks']");
        if (obj.val().trim() == '') {
            tips(obj, "备注不能为宽");
            return;
        }

        $('#loadingToast').show();
        $("#addDiary").submit();
    });

    function tips(obj, text) {
        $(obj).parent(".form-group").addClass("has-error");
        $(obj).parent(".form-group").find(".control-label").find("small").text("(" + text + ")");
    }

    $("input").focus(function() {
        $(this).parent(".form-group").removeClass("has-error");
        $(this).parent(".form-group").find(".control-label").find("small").text("");
    })

    $("#delete").click(function() {
        var diary_id = $(this).attr("diary-id");
        var openId = $(this).attr("open-id");
        window.location.href = "/pillBox/health/deleteDoctorDiary?openId=" + openId + "&diary_id=" + diary_id;
    });

});