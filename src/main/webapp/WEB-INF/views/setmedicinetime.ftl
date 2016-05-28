<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <title>药物管理</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

  <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pillbox_resources/css/weui.css">

</head>
<body style="background-image: url('/pillbox_resources/images/bg_activity.png'); margin-top: 20px">

<div class="container-fluid">
  <form id="setTime" action="/pillBox/medicine/saveAddMedicine" method="post">

      <input type="hidden" name="drugId" value="${drug.id!""}">
      <input type="hidden" name="openId" value="${openId!""}">
      <input type="hidden" name="parent" value="${parent!""}">
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
              <#if gap?exists>
                  <option value="1" <#if gap == '1'>selected</#if>>每日</option>
                  <option value="2" <#if gap == '2'>selected</#if>>一次性事件</option>
              <#else>
                  <option value="1" <#if drug.gap?exists && drug.gap == '1'>selected</#if>>每日</option>
                  <option value="2" <#if drug.gap?exists && drug.gap == '2'>selected</#if>>一次性事件</option>
              </#if>
          </select>
        </div>
    </div>
  </div>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">服药时间(剂量)<small></small></label>
          <input type="text" name="times_dose_times" class="form-control input-lg" placeholder="服用时间与剂量,如08:30(2);22:00(3)" value="<#if times_dose_times?exists>${times_dose_times!""}<#else ><#if drug.times_dose?exists><#list drug.times_dose as times>${times.time_str!""}(${times.num!""})<#if times_has_next>;</#if></#list></#if></#if>">
      </div>
    </div>
  </div>

      <div class="row"
           <#if gap?exists>
                <#if gap == '1'>
                    style="display: block"
                <#else>
                    style="display: none"
                </#if>
           <#else>
                <#if drug.gap?exists && drug.gap == '1'>
                     style="display: block"
                <#else>
                     style="display: none"
                </#if>
           </#if>
      >
          <div class="col-md-12">
              <div class="form-group">
                  <label class="control-label">持续时间
                      <small></small>
                  </label>
                  <select name="persist" class="form-control input-lg">

                      <#if persist?exists>
                          <option value="1" <#if persist == '1'>selected</#if>>1天</option>
                          <option value="2" <#if persist == '2'>selected</#if>>2天</option>
                          <option value="3" <#if persist == '3'>selected</#if>>3天</option>
                          <option value="4" <#if persist == '4'>selected</#if>>4天</option>
                          <option value="5" <#if persist == '5'>selected</#if>>5天</option>
                          <option value="6" <#if persist == '6'>selected</#if>>6天</option>
                          <option value="7" <#if persist == '7'>selected</#if>>1周</option>
                          <option value="14" <#if persist == '14'>selected</#if>>2周</option>
                          <option value="21" <#if persist == '21'>selected</#if>>3周</option>
                          <option value="30" <#if persist == '30'>selected</#if>>1月</option>
                      <#else >
                          <option value="1" <#if drug.persist?exists && drug.persist == '1'>selected</#if>>1天</option>
                          <option value="2" <#if drug.persist?exists && drug.persist == '2'>selected</#if>>2天</option>
                          <option value="3" <#if drug.persist?exists && drug.persist == '3'>selected</#if>>3天</option>
                          <option value="4" <#if drug.persist?exists && drug.persist == '4'>selected</#if>>4天</option>
                          <option value="5" <#if drug.persist?exists && drug.persist == '5'>selected</#if>>5天</option>
                          <option value="6" <#if drug.persist?exists && drug.persist == '6'>selected</#if>>6天</option>
                          <option value="7" <#if drug.persist?exists && drug.persist == '7'>selected</#if>>1周</option>
                          <option value="14" <#if drug.persist?exists && drug.persist == '14'>selected</#if>>2周</option>
                          <option value="21" <#if drug.persist?exists && drug.persist == '21'>selected</#if>>3周</option>
                          <option value="30" <#if drug.persist?exists && drug.persist == '30'>selected</#if>>1月</option>
                      </#if>
                  </select>
              </div>
          </div>
      </div>



  <div class="row">
    <div class="col-md-12">
      <div class="form-group">
          <label class="control-label">服用说明<small></small></label>
          <select name="dose_type" class="form-control input-lg">
              <#if dose_type?exists>
                  <option value="1" <#if dose_type == '1'>selected</#if>>饭前服用</option>
                  <option value="2" <#if dose_type == '2'>selected</#if>>与食物一起</option>
                  <option value="3" <#if dose_type == '3'>selected</#if>>饭后服用</option>
                  <option value="4" <#if dose_type == '4'>selected</#if>>与食物无关</option>
              <#else>
                  <option value="1" <#if drug.dose_type?exists && drug.dose_type == '1'>selected</#if>>饭前服用</option>
                  <option value="2" <#if drug.dose_type?exists && drug.dose_type == '2'>selected</#if>>与食物一起</option>
                  <option value="3" <#if drug.dose_type?exists && drug.dose_type == '3'>selected</#if>>饭后服用</option>
                  <option value="4" <#if drug.dose_type?exists && drug.dose_type == '4'>selected</#if>>与食物无关</option>
              </#if>

          </select>
      </div>
    </div>
  </div>

  </form>

  <div class="row">
    <div class="col-md-12">
      <div class="form-group" style="text-align: center">
        <button id="submit" type="button" class="form-control btn btn-info input-lg" style="width: 90%">确认完成</button>
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
<script src="/pillbox_resources/js/setmedicinetime.js"></script>
</body>
</html>
