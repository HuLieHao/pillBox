<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>药物管理</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/mobiscroll.custom-2.16.1.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
  <form id="setTime" action="/pillBox/medicine/toMedicineTimeBack" method="post">

      <input type="hidden" name="drugId" value="${drugId!""}">
      <input type="hidden" name="openId" value="${openId!""}">
      <input type="hidden" name="parent" value="${parent!""}">
      <input type="hidden" name="medicineName" value="${medicineName!""}">
      <input type="hidden" name="surplus" value="${surplus!""}">
      <input type="hidden" name="unit" value="${unit!""}">
      <input type="hidden" name="takeResion" value="${takeResion!""}">
      <input type="hidden" name="takeWay" value="${takeWay!""}">
      <input type="hidden" name="doctor" value="${doctor!""}">
      <input type="hidden" name="add_remind" value="${add_remind!""}">
      <input type="hidden" name="gap" value="${gap!""}">
      <input type="hidden" name="persist" value="${persist!""}">
      <input type="hidden" name="dose_type" value="${dose_type!""}">


  <div class="row">
    <div class="col-md-12">
        <label class="control-label">服药时间(剂量)<small></small></label>
        <div class="input-group">
          <input type="text" id="times_dose_times" name="times_dose_times" style="background-color: #FFFFFF" class="form-control" placeholder="服用时间与剂量,如08:30(2);22:00(3)" value="${times_dose_times!""}" readonly>
          <span class="input-group-btn">
            <button id="clear" class="btn btn-default" type="button">清空</button>
          </span>
      </div>
    </div>
  </div>
  </form>
    <div class="row"></br></br></div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button id="adddosetime" type="button" class="form-control btn btn-info input-lg" style="width: 90%">添加服药时间(剂量)</button>
      </div>
    </div>
  </div>

    <div class="row">
        <div class="col-md-12">
            <div class="form-group" style="text-align: center">
                <button id="submit" type="button" class="form-control btn btn-info input-lg" style="width: 90%">确认完成</button>
            </div>
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

<script src="/pillbox_resources/js/mobiscroll.custom-2.16.1.min.js"></script>

<script src="/pillbox_resources/js/setdosetime.js"></script>
</body>
</html>
