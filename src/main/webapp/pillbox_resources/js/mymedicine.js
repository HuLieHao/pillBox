$(document).ready(function(){

    var openId = $(".my-medicine").attr("open-id");

    $(".my-medicine").click(function() {
        window.location.href = "/pillBox/medicine/toAddMedicine?openId=" + openId;
    });

});