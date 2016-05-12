$(document).ready(function(){


    var openId = $(".container-fluid").attr("open-id");

    $(".diary-detail").click(function() {
        var diary_id = $(this).attr("diary-id");
        window.location.href = "/pillBox/health/toDoctorDiaryDetail?openId=" + openId + "&diary_id=" + diary_id;
    });

    $("#addDiary").click(function() {
        window.location.href = "/pillBox/health/toDoctorDiaryDetail?openId=" + openId;
    })
});