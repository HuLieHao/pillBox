<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>疾病自诊</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <style type="text/css">
    .container-fluid{
      top:110px;
      right:0;
      bottom:110px;
      left:0;
      overflow:hidden;
      width:100%;
    }

    #left{
      position:absolute;
      top:0;
      left:0;
      bottom:0;
      overflow:auto;
      width:40%;
    }

    #main{
      position:absolute;
      top:0;
      right:0;
      bottom:0;
      left:40%;
      overflow:auto;
      padding-top: 20px;
      background:#FFFFFF;
    }
  </style>
</head>

<body style="background-image: url('/resources/images/bg_activity.png');">
<div class="container-fluid">
  <div id="left">

    <div class="row" style="padding-right: 0px;">
      <div class="col-md-12" style="padding-right: 0px">
          <div class="panel-body" style="background: #ffffff">
            全身症状
          </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
          <div class="panel-body">
            皮肤症状
          </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          头部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          咽颈部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          胸部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          腹部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          生殖部位
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          骨盆
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          四肢
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          咽颈部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          腰背部
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-12">
        <div class="panel-body">
          臀部及肛门
        </div>
      </div>
    </div>

  </div>

  <div id="main">
    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingOne">
          <h4 class="panel-title">
            <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
              Collapsible Group Item #1
            </a>
          </h4>
        </div>
        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
          <div class="panel-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingTwo">
          <h4 class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
              Collapsible Group Item #2
            </a>
          </h4>
        </div>
        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
          <div class="panel-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
          </div>
        </div>
      </div>
      <div class="panel panel-default">
        <div class="panel-heading" role="tab" id="headingThree">
          <h4 class="panel-title">
            <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
              Collapsible Group Item #3
            </a>
          </h4>
        </div>
        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
          <div class="panel-body">
            Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
          </div>
        </div>
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