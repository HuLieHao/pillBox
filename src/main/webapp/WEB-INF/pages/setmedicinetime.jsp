<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>添加药物</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">

</head>
<body style="background-image: url('/resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">

  <div class="row">
    <div class="col-md-12">
        <div class="form-group">
          间隔
          <select class="form-control input-lg">
            <option>每日</option>
            <option>一次性事件</option>
          </select>
        </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服药时间
        <input type="text" class="form-control input-lg" placeholder="输入多个服用时间, 如08:30;22:00">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服药剂量
        <input type="text" class="form-control input-lg" placeholder="输入服药剂量, 如1、1.5">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        持续时间
        <select class="form-control input-lg">
          <option>1天</option>
          <option>2天</option>
          <option>3天</option>
          <option>4天</option>
          <option>5天</option>
          <option>6天</option>
          <option>1周</option>
          <option>2周</option>
          <option>3周</option>
          <option>1月</option>
          <option>永久</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用说明
        <select class="form-control input-lg">
          <option>饭前服用</option>
          <option>与食物一起</option>
          <option>饭后服用</option>
          <option>与食物无关</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button type="button" class="form-control btn btn-danger input-lg" style="width: 90%">确认完成</button>
      </div>
    </div>
  </div>

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/resources/js/bootstrap.min.js"></script>
</body>
</html>
