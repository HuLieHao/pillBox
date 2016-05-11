<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>添加药物</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">

    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
    <form id="addMedicine" action="/pillBox/medicine/setMedicineTime" method="post">
        <input type="hidden" name="openId" value="${openId!""}">
  <div class="row">
    <div class="col-md-12">
        <div class="form-group">
            <label class="control-label">药物名称<small></small></label>
            <input type="text" name="medicineName" class="form-control input-lg">
        </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">当前剩余<small></small></label>
          <input type="text" name="surplus" class="form-control input-lg">
      </div>
      </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        <label class="control-label">单位<small></small></label>
        <select name="unit" class="form-control input-lg">
          <option value="片">片</option>
          <option value="个">个</option>
          <option value="胶囊">胶囊</option>
          <option value="药丸">药丸</option>
          <option value="克">克</option>
          <option value="毫升">毫升</option>
          <option value="滴">滴</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">服用原因<small></small></label>
          <input type="text" name="takeResion" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">服用方式<small></small></label>
          <select name="takeWay" class="form-control input-lg">
              <option value="口服">口服</option>
              <option value="注射">注射</option>
              <option value="其他">其他</option>
          </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        <label class="control-label">医生<small></small></label>
        <input type="text" name="doctor" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="has-error">
        <div class="checkbox">
          <label>
            <input type="checkbox" name="add_remind" id="checkboxError" value="isRemind">
            是否补充提醒
          </label>
        </div>
      </div>
    </div>
  </div>
    </form>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button type="button" id="submit" class="form-control btn btn-danger input-lg" style="width: 90%">设置服药时间</button>
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

<script src="/pillbox_resources/js/addmedicine.js"></script>
</body>
</html>
