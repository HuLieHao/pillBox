$(document).ready(function(){

    $(".showActionSheet").click(function() {

        var id = $(this).attr("data-id");
        var openId = $(this).attr("open-id");

        var mask = $('#mask');
        var weuiActionsheet = $('#weui_actionsheet');
        weuiActionsheet.addClass('weui_actionsheet_toggle');

        mask.show()
            .focus()//加focus是为了触发一次页面的重排(reflow or layout thrashing),使mask的transition动画得以正常触发
            .addClass('weui_fade_toggle').one('click', function () {
                hideActionSheet(weuiActionsheet, mask);
            });

        $(".menu_item").one('click', function () {

            var index = $(this).index();
            var status = $(".menu_item").eq(index).attr("status");
            $('#loadingToast').show();
            $.ajax({
                url:"/pillBox/medicine/updateMedicineStatus",
                type:"post",
                data:{
                    id: id,
                    status: status
                },
                success:function(data){
                    window.location.href="/pillBox/medicine/toDayMedicine?openId=" + openId;
                },
                error:function(data){
                    alert("网络请求失败，请稍候重试");
                }
            });

            hideActionSheet(weuiActionsheet, mask);
        });

        $('#actionsheet_cancel').one('click', function () {
            hideActionSheet(weuiActionsheet, mask);
        });

        mask.unbind('transitionend').unbind('webkitTransitionEnd');

        function hideActionSheet(weuiActionsheet, mask) {
            weuiActionsheet.removeClass('weui_actionsheet_toggle');
            mask.removeClass('weui_fade_toggle');
            mask.on('transitionend', function () {
                mask.hide();
            }).on('webkitTransitionEnd', function () {
                mask.hide();
            })
        }
    });


});