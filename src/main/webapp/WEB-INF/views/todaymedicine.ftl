<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>当日提醒</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
  <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">
<div class="container-fluid">

    <div class="row">

        <div class="col-md-12">
            <div class="panel panel-default showActionSheet">
                <div class="panel-heading">
                    <span style="margin-right: 10px">09:00</span>
                    <span><small><em>(已服药)</em></small></span>
                    <span></span>
                </div>
                <div class="panel-body">
                    <span style="margin-right: 20px"><i class="weui_icon_success_circle"></i></span>
                    <span style="margin-right: 20px">维他命</span>
                    <span style="margin-right: 20px">1片</span>
                    <span style="margin-right: 20px">20剩余剂量</span>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="panel panel-default showActionSheet">
                <div class="panel-heading">
                    <span style="margin-right: 10px">09:00</span>
                    <span><small><em>(待服药)</em></small></span>
                    <span></span>
                </div>
                <div class="panel-body">
                    <span style="margin-right: 20px"><i class="weui_icon_waiting_circle"></i></span>
                    <span style="margin-right: 20px">维他命</span>
                    <span style="margin-right: 20px">1片</span>
                    <span style="margin-right: 20px">20剩余剂量</span>
                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <span style="margin-right: 10px">09:00</span>
                    <span><small><em>(未服药)</em></small></span>
                    <span></span>
                </div>
                <div class="panel-body">
                    <span style="margin-right: 20px"><i class="weui_icon_cancel"></i></span>
                    <span style="margin-right: 20px">维他命</span>
                    <span style="margin-right: 20px">1片</span>
                    <span style="margin-right: 20px">20剩余剂量</span>
                </div>
            </div>
        </div>

  </div>

    <!--BEGIN actionSheet-->
    <div id="actionSheet_wrap">
        <div class="weui_mask_transition" id="mask"></div>
        <div class="weui_actionsheet" id="weui_actionsheet">
            <div class="weui_actionsheet_menu">
                <div class="weui_actionsheet_cell">服用</div>
                <div class="weui_actionsheet_cell">错过</div>
                <div class="weui_actionsheet_cell">跳过</div>
            </div>
            <div class="weui_actionsheet_action">
                <div class="weui_actionsheet_cell" id="actionsheet_cancel">取消</div>
            </div>
        </div>
    </div>
    <!--END actionSheet-->

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

<script src="/pillbox_resources/js/todaymedicine.js"></script>
</body>
</html>
