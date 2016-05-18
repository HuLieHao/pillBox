<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>处方补充</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">

    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
    <form id="addMedicine" action="/pillBox/medicine/addPrescription" method="post">
        <input type="hidden" name="openId" value="${openId!""}">
        <input type="hidden" name="drugId" value="${drug.id!""}">

      <div class="row">
        <div class="col-md-12">
            <div class="form-group">
                <label class="control-label">输入当前的剩余量<small></small></label>
                <input type="text" name="surplus" class="form-control input-lg" value="${drug.surplus!""}">
            </div>
        </div>
      </div>

    </form>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button type="button" id="submit" class="form-control btn btn-info input-lg" style="width: 90%">补充处方数量</button>
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

<script src="/pillbox_resources/js/addprescription.js"></script>
</body>
</html>
