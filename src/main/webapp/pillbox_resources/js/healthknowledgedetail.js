$(document).ready(function(){

    $("#submit").click(function() {

        var obj = $("input[name='medicineName']");
        if (obj.val().trim() == '') {
            tips(obj);
            return;
        }

        obj = $("input[name='medicineName']");
        if (obj.val().trim() == '') {
            tips(obj);
            return;
        }
        $("#addMedicine").submit();
    });

    function tips(obj) {
        $(obj).parent(".form-group").addClass("has-error");
        $(obj).parent(".form-group").find(".control-label").find("small").text("(药物名称不能为空)");
    }

});