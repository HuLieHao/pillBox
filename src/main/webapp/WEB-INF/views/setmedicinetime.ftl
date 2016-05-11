<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>添加药物</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">

</head>
<body style="background-image: url('/resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
  <form id="setTime" action="/pillBox/medicine/saveAddMedicine" method="post">

      <input type="hidden" name="openId" value="${openId!""}">
      <input type="hidden" name="medicineName" value="${medicineName!""}">
      <input type="hidden" name="surplus" value="${surplus!""}">
      <input type="hidden" name="unit" value="${unit!""}">
      <input type="hidden" name="takeResion" value="${takeResion!""}">
      <input type="hidden" name="takeWay" value="${takeWay!""}">
      <input type="hidden" name="doctor" value="${doctor!""}">
      <input type="hidden" name="add_remind" value="${add_remind!""}">

  <div class="row">
    <div class="col-md-12">
        <div class="form-group">
          间隔
          <select name="gap" class="form-control input-lg">
            <option value="0">每日</option>
            <option value="1">一次性事件</option>
          </select>
        </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服药时间
        <input type="text" name="times_dose_times" class="form-control input-lg" placeholder="输入多个服用时间, 如08:30;22:00">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服药剂量<small>(与服药时间相对应)</small>
        <input type="text" name="times_dose_nums" class="form-control input-lg" placeholder="输入服药剂量, 如1;1.5">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        持续时间
        <select name="persist" class="form-control input-lg">
          <option value="1">1天</option>
          <option value="2">2天</option>
          <option value="3">3天</option>
          <option value="4">4天</option>
          <option value="5">5天</option>
          <option value="6">6天</option>
          <option value="7">1周</option>
          <option value="14">2周</option>
          <option value="21">3周</option>
          <option value="30">1月</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用说明
        <select name="dose_type" class="form-control input-lg">
          <option value="0">饭前服用</option>
          <option value="1">与食物一起</option>
          <option value="2">饭后服用</option>
          <option value="3">与食物无关</option>
        </select>
      </div>
    </div>
  </div>

  </form>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button id="submit" type="button" class="form-control btn btn-danger input-lg" style="width: 90%">确认完成</button>
      </div>
    </div>
  </div>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/pillbox_resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/pillbox_resources/js/bootstrap.min.js"></script>
<script src="/pillbox_resources/js/setmedicinetime.js"></script>
</body>
</html>
