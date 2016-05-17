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

    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">

          <div class="weui_search_bar weui_search_focusing" id="search_bar">
              <form class="weui_search_outer" action="/pillBox/medicine/toMedicineHistory" method="post">
                  <div class="weui_search_inner">
                      <i class="weui_icon_search"></i>
                      <input type="search" name="keywords" class="weui_search_input" id="mirror_field" placeholder="搜索药品" value="${keywords!""}">
                      <a href="javascript:" class="weui_icon_clear" id="search_clear"></a>
                  </div>
              </form>
              <a href="javascript:" class="weui_search_cancel form_date" id="datetimepicker" ><span class="glyphicon glyphicon-calendar"></span></a>
          </div>

      </div>
    </div>
  </div>

    <#list histories as history>
        <div class="col-md-12">
            <div class="panel panel-default showActionSheet" data-id="${history.id}" open-id="${openId!""}">
                <div class="panel-heading">
                    <span style="margin-right: 10px">${history.intime?string("yyyy-MM-dd")!""}&nbsp;&nbsp;${history.timeDose.time_str!""}</span>
                    <span><small><em>(${history.statusStr!""})</em></small></span>
                    <span></span>
                </div>
                <div class="panel-body">
                            <span style="margin-right: 20px">
                                <#if history.status == '1'>
                                    <i class="weui_icon_success_circle"></i>
                                <#elseif history.status == '2'>
                                    <i class="weui_icon_waiting_circle"></i>
                                <#elseif history.status == '3'>
                                    <i class="weui_icon_warn"></i>
                                <#else>
                                    <i class="weui_icon_info"></i>
                                </#if>
                            </span>
                    <span style="margin-right: 20px">${history.drug.name!""}</span>
                    <span style="margin-right: 20px">${history.timeDose.num!""}${history.drug.unitStr!""}</span>
                </div>
            </div>
        </div>
    </#list>

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
</div>

<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/pillbox_resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/pillbox_resources/js/bootstrap.min.js"></script>
<!-- 日期插件 -->
<script src="/pillbox_resources/js/bootstrap-datetimepicker.min.js"></script>
<script src="/pillbox_resources/js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="/pillbox_resources/js/medicineHistory.js"></script>

<script type="text/javascript">

    $('#datetimepicker').datetimepicker({
        language: 'zh-CN',
        autoclose: true,
        startView: 2,
        minView: 2,
        forceParse: 0,
        endDate: new Date(),
        linkField: "mirror_field",
        linkFormat: "yyyy-mm-dd",
        format: 'yyyy-mm-dd'
    });
</script>

</body>
</html>
