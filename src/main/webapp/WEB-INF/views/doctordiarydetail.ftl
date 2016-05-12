<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>添加药物</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
    <!-- 日期插件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap-datetimepicker.min.css">

    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
    <form id="addMedicine" action="/pillBox/medicine/setMedicineTime" method="post">
        <input type="hidden" name="openId" value="">
        <input type="hidden" name="drugId" value="">
        <input type="hidden" name="parent" value="parent">

        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                    <label for="dtp_input2" class="col-md-2 control-label">预约日期</label>
                    <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy-mm-dd hh:ii" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd hh:ii">
                        <input class="form-control" size="16" type="text" value="" readonly="">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                    </div>
                    <input type="hidden" id="dtp_input2" value=""><br>
                </div>
            </div>
        </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">医生姓名<small></small></label>
          <input type="text" name="surplus" class="form-control input-lg" value="">
      </div>
      </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">备注<small></small></label>
          <input type="text" name="takeResion" class="form-control input-lg" value="">
      </div>
    </div>
  </div>



  <div class="row">
    <div class="col-md-12">
      <div class="has-error">
        <div class="checkbox">
          <label>
            <input type="checkbox" name="add_remind" id="checkboxError" value="1">
            是否提醒
          </label>
        </div>
      </div>
    </div>
  </div>
    </form>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button type="button" id="submit" class="form-control btn btn-info input-lg" style="width: 90%">保存预约日记</button>
      </div>
    </div>
  </div>

        <#--<div class="row">-->
            <#--<div class="col-md-12">-->
                <#--<div class="form-group" style="text-align: center">-->
                    <#--<button type="button" id="delete" class="form-control btn btn-danger input-lg" style="width: 90%">删除预约日记</button>-->
                <#--</div>-->
            <#--</div>-->
        <#--</div>-->

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
<!-- 日期插件 -->
<script src="/pillbox_resources/js/bootstrap-datetimepicker.min.js"></script>

<script src="/pillbox_resources/js/bootstrap-datetimepicker.zh-CN.js"></script>

<script src="/pillbox_resources/js/doctordiarydetail.js"></script>


<script type="text/javascript">
    $('.form_date').datetimepicker({
        language: 'zh-CN',
        todayBtn:  1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        minView: 0,
        forceParse: 0,
        startDate: new Date(),
        initialDate: new Date()
    });
</script>

</body>
</html>
