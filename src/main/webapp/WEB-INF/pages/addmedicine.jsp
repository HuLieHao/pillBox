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
          药物名称<input type="text" class="form-control input-lg">
        </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        当前剩余<input type="text" class="form-control input-lg">
      </div>
      </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        单位
        <select class="form-control input-lg">
          <option>片</option>
          <option>个</option>
          <option>胶囊</option>
          <option>药丸</option>
          <option>克</option>
          <option>毫升</option>
          <option>滴</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用原因<input type="text" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用方式<input type="text" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        医生<input type="text" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button type="button" class="form-control btn btn-danger input-lg" style="width: 90%">设置服药时间</button>
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
