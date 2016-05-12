$(document).ready(function(){

    var drugId = $(".swiper-slide").eq(0).attr("drug-id");
    <!-- Initialize Swiper -->
    var swiper = new Swiper('.swiper-container', {
        pagination: '.swiper-pagination',
        slidesPerView: 4,
        centeredSlides: true,
        paginationClickable: true,
        spaceBetween: 30,
        grabCursor: true,
        onSlideChangeStart: function(swiper){
            var activeIndex = swiper.activeIndex;
            var previousIndex = swiper.previousIndex;
            drugId = $(".swiper-slide").eq(activeIndex).attr("drug-id");
            $(".drug-content").eq(activeIndex).css("display", "block");
            $(".drug-content").eq(previousIndex).css("display", "none");
        }
    });

    var openId = $(".my-medicine").attr("open-id");

    $(".my-medicine").click(function() {
        $('#loadingToast').show();
        window.location.href = "/pillBox/medicine/toAddMedicine?openId=" + openId;
    });

    $("#detail").click(function() {
        $('#loadingToast').show();
        window.location.href = "/pillBox/medicine/toAddMedicine?openId=" + openId + "&drugId=" + drugId;
    });

    $("#time").click(function() {
        $('#loadingToast').show();
        window.location.href = "/pillBox/medicine/setMedicineTime?openId=" + openId + "&drugId=" + drugId;;
    })

    $("#addPrescription").click(function() {
        $('#loadingToast').show();
        window.location.href = "/pillBox/medicine/toAddPrescription?openId=" + openId + "&drugId=" + drugId;
    })

});