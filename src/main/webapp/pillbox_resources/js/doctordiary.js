$(document).ready(function(){



    $("#diary-detail").click(function() {
        //var drugId = $(this).attr("drug-id");
        //var openId = $(this).attr("open-id");
        window.location.href = "/pillBox/health/toDoctorDiaryDetail";
    });

    $("#addDiary").click(function() {
        window.location.href = "/pillBox/health/toDoctorDiaryDetail";
    })
});