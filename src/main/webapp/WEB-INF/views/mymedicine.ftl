<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>我的药物</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/swiper.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

    <style>
        .swiper-container {
            width: 100%;
            height: 100px;
            margin: 15px auto;
        }
        .swiper-slide {
            text-align: center;
            font-size: 20px;
            background: #fff;
            width: 60%;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
        .swiper-slide:nth-child(2n) {
            width: 40%;
        }
        .swiper-slide:nth-child(3n) {
            width: 20%;
        }
    </style>

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 15px">

<div class="container-fluid">
    <div class="row">
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <#list drugs as drug>
                    <div class="swiper-slide" drug-id="${drug.id}">${drug.name}</div>
                </#list>
            </div>
            <!-- Add Pagination -->
           <#--<div class="swiper-pagination"></div>-->
        </div>
    </div>
    <div class="row" style="text-align: center; background: #ffffff">
        <div class="col-md-12">
            <p style="margin-bottom: 0px"><span class="glyphicon glyphicon-hand-up" aria-hidden="true"></span></p>
            <#list drugs as drug>
                <div class="drug-content" <#if drug_index == 0> style="display: block;" <#else> style="display: none;" </#if>>
                    <p>服用方式 - ${drug.gapStr!""}</p>
                    <p>
                        <#list drug.times_dose as times>
                            ${times.time_str!""}(${times.num!""})
                        </#list>
                    </p>
                    <p>${drug.take_way_str!""} / ${drug.dose_type_str!""}</p>
                    <p>开始: ${drug.intime?string("MM/dd/yy")}</p>
                </div>
            </#list>
        </div>
    </div>
    <div class="row" style="text-align: center; background: #ffffff">
        <div class="col-md-12">
            <button type="button" id="detail" class="btn btn-info" style="margin-right: 10px">&nbsp;&nbsp;&nbsp;&nbsp;详情&nbsp;&nbsp;&nbsp;&nbsp;</button>
            <button type="button" id="time" class="btn btn-info" style="margin-right: 10px">&nbsp;&nbsp;服用时间&nbsp;&nbsp;</button>
            <button type="button" id="addPrescription" class="btn btn-info">&nbsp;&nbsp;处方补充&nbsp;&nbsp;</button>
            <br/>&nbsp;&nbsp;
        </div>
    </div>
    <div class="row" style="width: 20px">
        &nbsp;&nbsp;
    </div>

    <div class="row" style="text-align: center; background: #ffffff">
        <div class="col-md-12">
            <br>
            <button type="button" class="btn btn-info input-lg my-medicine" style="width: 90%" open-id="${openId!""}">添加一个新的药物</button>
            <br/>&nbsp;&nbsp;
        </div>
    </div>

    <!-- loading toast -->
    <div id="loadingToast" class="weui_loading_toast" style="display:none;">
        <div class="weui_mask_transparent"></div>
        <div class="weui_toast">
            <div class="weui_loading">
                <div class="weui_loading_leaf weui_loading_leaf_0"></div>
                <div class="weui_loading_leaf weui_loading_leaf_1"></div>
                <div class="weui_loading_leaf weui_loading_leaf_2"></div>
                <div class="weui_loading_leaf weui_loading_leaf_3"></div>
                <div class="weui_loading_leaf weui_loading_leaf_4"></div>
                <div class="weui_loading_leaf weui_loading_leaf_5"></div>
                <div class="weui_loading_leaf weui_loading_leaf_6"></div>
                <div class="weui_loading_leaf weui_loading_leaf_7"></div>
                <div class="weui_loading_leaf weui_loading_leaf_8"></div>
                <div class="weui_loading_leaf weui_loading_leaf_9"></div>
                <div class="weui_loading_leaf weui_loading_leaf_10"></div>
                <div class="weui_loading_leaf weui_loading_leaf_11"></div>
            </div>
            <p class="weui_toast_content">数据加载中</p>
        </div>
    </div>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/pillbox_resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/pillbox_resources/js/bootstrap.min.js"></script>

<script src="/pillbox_resources/js/swiper.jquery.min.js"></script>

<script src="/pillbox_resources/js/mymedicine.js"></script>

</body>
</html>
