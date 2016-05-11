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
        当前剩余<input type="text" name="surplus" class="form-control input-lg">
      </div>
      </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        单位
        <select name="unit" class="form-control input-lg">
          <option value="1">片</option>
          <option value="2">个</option>
          <option value="3">胶囊</option>
          <option value="4">药丸</option>
          <option value="5">克</option>
          <option value="6">毫升</option>
          <option value="7">滴</option>
        </select>
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用原因<input type="text" name="takeResion" class="form-control input-lg">
      </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
        服用方式
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
      <div class="form-group has-error">
        <label class="control-label">医生 <small>医生姓名不能为空</small></label>
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

</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/pillbox_resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/pillbox_resources/js/bootstrap.min.js"></script>

<script src="/pillbox_resources/js/addmedicine.js"></script>
</body>
</html>
