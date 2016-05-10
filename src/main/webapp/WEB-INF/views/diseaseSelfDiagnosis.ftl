<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>疾病自诊</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="/pillbox_resources/css/bootstrap.min.css">
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
            background:#FFFFFF;
        }
        .progress {
            margin-bottom: 0;
        }
    </style>
</head>

<body style="background-image: url('/pillbox_resources/images/bg_activity.png');">
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
                    腰背部
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-12">
                <div class="panel-body">
                    臀部
                </div>
            </div>
        </div>

    </div>

    <div id="main">

        <!-- 全身症状 开始 -->
        <div class="list-group" id="list_0">
            <a href="#list_0_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                吃得太多
            </a>
            <div class="collapse" id="list_0_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">多食症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 21.8%;">
                                21.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">心境障碍
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 18.4%;">
                                18.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">饮食障碍
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.5%;">
                                11.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">焦虑症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.6%;">
                                4.6%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                出汗过多
            </a>
            <div class="collapse" id="list_0_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.2%;">
                                3.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">焦虑症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.2%;">
                                3.2%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                癫痫发作
            </a>
            <div class="collapse" id="list_0_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">癫痫
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 36.5%;">
                                36.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">非依赖性药物滥用
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.9%;">
                                7.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">酒精性精神病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.6%;">
                                2.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">精神发育迟滞
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.1%;">
                                2.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                发热（体温升高）
            </a>
            <div class="collapse" id="list_0_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">急性咽炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.2%;">
                                10.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 8.3%;">
                                8.3%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性支气管炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.4%;">
                                6.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.4%;">
                                5.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                关节疼痛（不适）
            </a>
            <div class="collapse" id="list_0_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">偏头痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">无窦道牙周脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">骨性关节炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">闭合性面部骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_6" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                过敏（无具体部位）
            </a>
            <div class="collapse" id="list_0_collapse_6">
                <ul class="list-group">
                    <li class="list-group-item">过敏性鼻炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 22.7%;">
                                22.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">过敏反应
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 17.1%;">
                                17.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">荨麻疹
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.2%;">
                                6.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.7%;">
                                3.7%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_0_collapse_7" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                全身无力
            </a>
            <div class="collapse" id="list_0_collapse_7">
                <ul class="list-group">
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.5%;">
                                6.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.1%;">
                                4.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">高渗状态
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.4%;">
                                3.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">脱水
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.4%;">
                                3.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- 全身症状 结束 -->

        <!-- 皮肤症状 开始 -->
        <div class="list-group" id="list_1" style="display: none">
            <a href="#list_1_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                扁平湿疣
            </a>
            <div class="collapse" id="list_1_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">黑素细胞痣
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">痤疮
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">跖疣
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 1.8%;">
                                1.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">传染性软疣
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 1.4%;">
                                1.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_1_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                痤疮粉刺
            </a>
            <div class="collapse" id="list_1_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">痤疮
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 51.9%;">
                                51.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">黑素细胞痣
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.5%;">
                                3.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">皮肤色素沉着
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.5%;">
                                3.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">毛囊炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.8%;">
                                2.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_1_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                黑眼圈
            </a>
            <div class="collapse" id="list_1_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">蜂窝组织炎或脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 26.5%;">
                                26.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">接触性皮炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.1%;">
                                5.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">皮肤色素沉着
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.0%;">
                                3.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">黑素细胞痣
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.8%;">
                                2.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_1_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                皮肤瘙痒
            </a>
            <div class="collapse" id="list_1_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">接触性皮炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 22.2%;">
                                22.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">荨麻疹
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.1%;">
                                7.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">过敏反应
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.2%;">
                                5.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">药物副作用
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.2%;">
                                3.2%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- 皮肤症状 结束 -->

        <!-- 头部 开始 -->
        <div class="list-group" id="list_2" style="display: none">
            <a href="#list_2_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                头晕目眩
            </a>
            <div class="collapse" id="list_2_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">焦虑症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.5%;">
                                5.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">偏头痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.1%;">
                                4.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.5%;">
                                3.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.0%;">
                                3.0%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_2_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                掉头发
            </a>
            <div class="collapse" id="list_2_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">脱发或秃顶
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 35.5%;">
                                35.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">斑秃
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 19.1%;">
                                19.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">接触性皮炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.5%;">
                                5.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">红斑鳞状皮炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.9%;">
                                3.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_2_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                头痛
            </a>
            <div class="collapse" id="list_2_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">偏头痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.7%;">
                                10.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.1%;">
                                4.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">颈部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.1%;">
                                3.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_2_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                视力降低
            </a>
            <div class="collapse" id="list_2_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">近视
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 8.7%;">
                                8.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.1%;">
                                6.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">弱视
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.8%;">
                                5.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.9%;">
                                3.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_2_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                流鼻血
            </a>
            <div class="collapse" id="list_2_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">慢性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.7%;">
                                12.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">闭合性鼻骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.6%;">
                                6.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">面部、头颅和颈部挫伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.8%;">
                                5.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">鼻腔脓肿或溃疡
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.9%;">
                                3.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 头部 结束 -->

        <!-- 咽颈部 开始 -->
        <div class="list-group" id="list_3" style="display: none">
            <a href="#list_3_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                喉咙痛
            </a>
            <div class="collapse" id="list_3_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">急性咽炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 28.5%;">
                                28.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">链球菌性咽喉炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.0%;">
                                7.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">急性扁桃腺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.3%;">
                                5.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_3_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                扁桃体发炎
            </a>
            <div class="collapse" id="list_3_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">急性咽炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 20.5%;">
                                20.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">急性扁桃腺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 20.0%;">
                                20.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性扁桃腺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 16.8%;">
                                16.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">扁桃体腺样体肥大
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.3%;">
                                5.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_3_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                脖子疼痛（不适）
            </a>
            <div class="collapse" id="list_3_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">颈部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 19.3%;">
                                19.3%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胸部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.0%;">
                                7.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腰部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.3%;">
                                5.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_3_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                肩膀疼痛（不适）
            </a>
            <div class="collapse" id="list_3_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">肩关节的上肢的拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 18.3%;">
                                18.3%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肩关节疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.5%;">
                                6.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肩关节脱位
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">颈部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.3%;">
                                4.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_3_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                淋巴结疼痛
            </a>
            <div class="collapse" id="list_3_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">急性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">急性咽炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性鼻窦炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">过敏性鼻炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 25.0%;">
                                25.0%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 咽颈部 结束 -->

        <!-- 胸部 开始 -->
        <div class="list-group" id="list_4" style="display: none">
            <a href="#list_4_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                侧胸部疼痛
            </a>
            <div class="collapse" id="list_4_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 31.6%;">
                                31.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.0%;">
                                3.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">鼻中隔软骨拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.8%;">
                                2.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.3%;">
                                2.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_4_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                打鼾
            </a>
            <div class="collapse" id="list_4_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">睡眠障碍
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 37.6%;">
                                37.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">鼻中隔偏曲
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.0%;">
                                10.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.4%;">
                                7.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">过敏性鼻炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.3%;">
                                5.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_4_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                呼吸困难
            </a>
            <div class="collapse" id="list_4_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">哮喘
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 21.6%;">
                                21.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性支气管炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.9%;">
                                5.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.4%;">
                                5.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">焦虑症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.3%;">
                                4.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_4_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                咯血
            </a>
            <div class="collapse" id="list_4_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">哮喘
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 21.6%;">
                                21.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">慢性支气管炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.9%;">
                                5.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.4%;">
                                5.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">焦虑症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.3%;">
                                4.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#" class="list-group-item">乳房疼痛</a>
        </div>
        <!-- 胸部 结束 -->

        <!-- 腹部 开始 -->
        <div class="list-group" id="list_5" style="display: none">
            <a href="#list_5_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                大便困难
            </a>
            <div class="collapse" id="list_5_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">便秘
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 34.5%;">
                                34.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">痔疮
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.8%;">
                                7.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.8%;">
                                3.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃食管反流性疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.1%;">
                                2.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                恶心
            </a>
            <div class="collapse" id="list_5_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.8%;">
                                3.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.6%;">
                                3.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">偏头痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.4%;">
                                2.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                腹部胀气
            </a>
            <div class="collapse" id="list_5_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">胃食管反流性疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 9.5%;">
                                9.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">人类免疫缺陷病毒感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 8.8%;">
                                8.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.6%;">
                                6.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肠道双糖酶缺乏及二糖吸收不良
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.4%;">
                                6.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                呕吐
            </a>
            <div class="collapse" id="list_5_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.5%;">
                                7.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">高渗状态
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">非依赖性药物滥用
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.6%;">
                                4.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.4%;">
                                3.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                排便带血
            </a>
            <div class="collapse" id="list_5_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">上消化道出血
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 28.1%;">
                                28.1%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 9.8%;">
                                9.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">脱水
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.6%;">
                                3.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">人类免疫缺陷病毒感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.4%;">
                                3.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_6" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                胃内灼烧感
            </a>
            <div class="collapse" id="list_5_collapse_6">
                <ul class="list-group">
                    <li class="list-group-item">胃食管反流性疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 28.9%;">
                                28.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.8%;">
                                10.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃功能紊乱
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.6%;">
                                6.6%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.9%;">
                                3.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">消化性溃疡
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.4%;">
                                3.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_5_collapse_7" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                胃痛
            </a>
            <div class="collapse" id="list_5_collapse_6">
                <ul class="list-group">
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.9%;">
                                10.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃食管反流性疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">非依赖性药物滥用
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.4%;">
                                2.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">便秘
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.4%;">
                                2.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃功能紊乱
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.4%;">
                                2.4%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 腹部 结束 -->

        <!-- 骨盆 开始 -->
        <div class="list-group" id="list_6" style="display: none">
            <a href="#list_6_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                憋不住尿
            </a>
            <div class="collapse" id="list_6_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">神经源性膀胱
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.5%;">
                                11.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">尿道狭窄
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.8%;">
                                7.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">前列腺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.6%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">癫痫
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.1%;">
                                5.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

            <a href="#list_6_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                耻骨区疼痛
            </a>
            <div class="collapse" id="list_6_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">腹股沟疝
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.5%;">
                                12.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">鼻中隔软骨拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.2%;">
                                10.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">睾丸炎或附睾炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.1%;">
                                5.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_6_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                多尿（次数增多）
            </a>
            <div class="collapse" id="list_6_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 20.9%;">
                                20.9%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 13.3%;">
                                13.3%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">人类免疫缺陷病毒感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">脂肪瘤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.1%;">
                                4.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_6_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                尿结石
            </a>
            <div class="collapse" id="list_6_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">尿道炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 15.5%;">
                                15.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">原发性高血压
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.3%;">
                                7.3%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">前列腺炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.1%;">
                                6.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_6_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                盆腔疼痛
            </a>
            <div class="collapse" id="list_6_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">精囊炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 8.5%;">
                                8.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">骶骨关节拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.7%;">
                                7.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">骶骨疾病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.8%;">
                                5.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.1%;">
                                5.1%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 骨盆 结束 -->

        <!-- 四肢 开始 -->
        <div class="list-group" id="list_7" style="display: none">
            <a href="#list_7_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                手和手指疼痛(不适)
            </a>
            <div class="collapse" id="list_7_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">单个或或多指骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.5%;">
                                6.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">开放性手指损伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.0%;">
                                5.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">上肢挫伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">尺神经损伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.3%;">
                                4.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                手腕疼痛（不适）
            </a>
            <div class="collapse" id="list_7_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">腕和手的拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 22.5%;">
                                22.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腕骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 10.0%;">
                                10.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">上肢挫伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 9.8%;">
                                9.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">尺、桡骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.9%;">
                                4.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                手肘疼痛（不适）
            </a>
            <div class="collapse" id="list_7_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">鹰嘴囊炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.4%;">
                                11.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肱骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.7%;">
                                5.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肘关节脱位
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.7%;">
                                5.7%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                多关节发炎
            </a>
            <div class="collapse" id="list_7_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">蜂窝组织炎或脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 19.2%;">
                                19.2%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">急性骨髓炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.0%;">
                                6.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">哮喘
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">物理性创伤早期并发症
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_5" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                脚踝疼痛（不适）
            </a>
            <div class="collapse" id="list_7_collapse_5">
                <ul class="list-group">
                    <li class="list-group-item">踝关节或足部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 34.7%;">
                                34.7%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">踝骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 18.0%;">
                                18.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">下肢单神经炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.8%;">
                                5.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胫骨腓骨骨折
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.9%;">
                                4.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_6" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                水肿
            </a>
            <div class="collapse" id="list_7_collapse_6">
                <ul class="list-group">
                    <li class="list-group-item">蜂窝组织炎或脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 14.5%;">
                                14.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">无窦道的牙周脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 9.0%;">
                                9.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">面部、头颅、颈部挫伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 1.8%;">
                                1.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">过敏反应
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 1.8%;">
                                1.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_7_collapse_7" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                腿部疼痛（不适）
            </a>
            <div class="collapse" id="list_7_collapse_7">
                <ul class="list-group">
                    <li class="list-group-item">腰肌劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.5%;">
                                5.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">下肢单神经炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.0%;">
                                4.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腰椎间盘脱位
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2.8%;">
                                2.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">坐骨神经痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 1.8%;">
                                1.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 四肢 结束 -->

        <!-- 腰背部 开始 -->
        <div class="list-group" id="list_8" style="display: none">
            <a href="#list_8_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                背痛(不适)
            </a>
            <div class="collapse" id="list_8_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">背部肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.5%;">
                                12.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腰部扭伤或拉伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.4%;">
                                11.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腰肌劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 8.8%;">
                                8.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.9%;">
                                5.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_8_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                肾脏疼痛
            </a>
            <div class="collapse" id="list_8_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">肾脏和输尿管结石
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 22.5%;">
                                22.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.4%;">
                                7.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">糖尿病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.8%;">
                                4.8%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_8_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                腰痛（不适）
            </a>
            <div class="collapse" id="list_8_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">腰肌劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 17.5%;">
                                17.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">腰部扭伤或拉伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.4%;">
                                12.4%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">骶骨关节拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.8%;">
                                7.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部拉伤或扭伤
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.9%;">
                                5.9%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- 腰背部 结束 -->

        <!-- 臀部 开始 -->
        <div class="list-group" id="list_9" style="display: none">
            <a href="#list_9_collapse_1" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                大便呈黑色
            </a>
            <div class="collapse" id="list_9_collapse_1">
                <ul class="list-group">
                    <li class="list-group-item">直肠出血
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.5%;">
                                12.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">痔疮
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.0%;">
                                12.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">上消化道出血
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">下消化道出血
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.3%;">
                                3.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_9_collapse_2" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                大便有浓水
            </a>
            <div class="collapse" id="list_9_collapse_2">
                <ul class="list-group">
                    <li class="list-group-item">上消化道出血
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.5%;">
                                12.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">结肠家族性多发性腺瘤性息肉病
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 12.0%;">
                                12.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">溃疡性结肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.8%;">
                                11.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">肝脓疡
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 11.3%;">
                                11.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_9_collapse_3" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                腹泻
            </a>
            <div class="collapse" id="list_9_collapse_3">
                <ul class="list-group">
                    <li class="list-group-item">肠道感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.5%;">
                                4.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">高渗状态
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 4.0%;">
                                4.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">病毒性感染
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.8%;">
                                3.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">胃十二指肠炎
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 3.3%;">
                                3.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <a href="#list_9_collapse_4" class="list-group-item" data-toggle="collapse" aria-expanded="false" aria-controls="collapseExample">
                臀部或胯部疼痛
            </a>
            <div class="collapse" id="list_9_collapse_4">
                <ul class="list-group">
                    <li class="list-group-item">腰肌劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.5%;">
                                7.5%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">蜂窝组织炎或脓肿
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 7.0%;">
                                7.0%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">坐骨神经痛
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 6.8%;">
                                6.8%
                            </div>
                        </div>
                    </li>
                    <li class="list-group-item">背部肌肉劳损
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 5.3%;">
                                5.3%
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 臀部 结束 -->

    </div>

</div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="/pillbox_resources/js/jquery.1.11.3.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="/pillbox_resources/js/bootstrap.min.js"></script>
<script type="text/javascript">

    var pre_index = 0;
    $(".panel-body").click(function(){
        $(".panel-body").css("background", "");
        $(this).css("background", "#ffffff");

        var index = $(".panel-body").index(this);
        if (pre_index == index) return;

        var pre_position = "list_" + pre_index;
        var position = "list_" + index;

        $("#" + position).css("display", "block");
        $("#" + pre_position).css("display", "none");

        pre_index = index;
    });
</script>
</body>
</html>