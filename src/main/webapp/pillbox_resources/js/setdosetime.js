$(document).ready(function() {


        var units = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,26,27,28,29,30,31,32,33,
                34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60],
            wheel = [
                [{
                    values: ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23],
                    label: '小时'
                },{
                    values: ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09', 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25,26,27,28,29,30,31,32,33,
                        34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60],
                    label: '分钟'
                }, {
                    values: units,
                    label: '剂量'
                }]
            ];

        $('#times_dose_times').mobiscroll().scroller({
            theme: 'mobiscroll',
            lang: 'zh',
            display: 'top',
            wheels: wheel,
            showLabel: true,
            parseValue: function (val) {
                var hasUnit;

                return ['00', '00', '1'];
            },

            formatValue: function (data) {
                var preValue = $("#times_dose_times").val();
                var preTime = preValue.substring(0, preValue.indexOf("("));
                var afterValue = data[0] + ":" + data[1] + "(" + data[2] + ")";
                var afterTime = data[0] + ":" + data[1];
                if (preValue.trim() == '' || preTime == afterTime) {
                    return afterValue;
                }
                return preValue.trim() + ";" +afterValue;
            }
        });

        $('#adddosetime').click(function () {
            $('#times_dose_times').mobiscroll('show');
            return false;
        });

        $('#clear').click(function () {
            $('#times_dose_times').mobiscroll('clear');
            return false;
        });



    $("#submit").click(function() {

        var obj = $("input[name='times_dose_times']");
        if (obj.val().trim() == '') {
            tips(obj, "(服药时间(剂量)不能为空)");
            return;
        }

        $('#loadingToast').show();
        $("#setTime").submit();
    });

    function tips(obj, text) {
        $(obj).parent(".input-group").parent(".col-md-12").addClass("has-error");
        $(obj).parent(".input-group").parent(".col-md-12").find(".control-label").find("small").text(text);
    }

    $("input").focus(function() {
        $(this).parent(".input-group").parent(".col-md-12").removeClass("has-error");
        $(this).parent(".input-group").parent(".col-md-12").find(".control-label").find("small").text("");
    })

})