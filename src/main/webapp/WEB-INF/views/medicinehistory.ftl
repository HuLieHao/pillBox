<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>我的历史记录</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
  <!-- 日期插件 -->
  <link rel="stylesheet" href="/pillbox_resources/css/bootstrap-datetimepicker.min.css">

</head>
<body style="background-image: url('/resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        <label for="dtp_input2" class="col-md-2 control-label">开始日期<small>(截至日期为今天)</small></label>
        <div class="input-group date form_date col-md-5" data-date="" data-date-format="yyyy MM dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
          <input class="form-control" size="16" type="text" value="" readonly="">
          <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
        </div>
        <input type="hidden" id="dtp_input2" value=""><br>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">4月17日</div>
        <div class="panel-body">
          <p><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;09:00&nbsp;&nbsp;&nbsp;&nbsp;维他命&nbsp;&nbsp;&nbsp;&nbsp;1片</p>
          <p><span class="glyphicon glyphicon-ok" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;13:00&nbsp;&nbsp;&nbsp;&nbsp;维他命&nbsp;&nbsp;&nbsp;&nbsp;1片</p>
        </div>
      </div>
    </div>

    <div class="col-md-12">
      <div class="panel panel-default">
        <div class="panel-heading">4月16日</div>
        <div class="panel-body">
          <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>&nbsp;&nbsp;&nbsp;&nbsp;09:00&nbsp;&nbsp;&nbsp;&nbsp;维他命&nbsp;&nbsp;&nbsp;&nbsp;1片
        </div>
      </div>
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

<script type="text/javascript">
  $('.form_date').datetimepicker({
    language: 'zh-CN',
    todayBtn:  1,
    autoclose: 1,
    todayHighlight: 1,
    startView: 2,
    minView: 2,
    forceParse: 0,
    initialDate: new Date(),
    endDate: new Date()
  });
</script>

</body>
</html>
