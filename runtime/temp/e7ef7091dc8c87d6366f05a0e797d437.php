<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:75:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\yisheng\index.html";i:1501147698;s:75:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\base.html";i:1488957233;s:86:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\javascript_vars.html";i:1488957233;s:74:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\yisheng\form.html";i:1501058042;s:72:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\yisheng\th.html";i:1501147436;s:72:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\yisheng\td.html";i:1501140327;}*/ ?>
﻿<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <title><?php echo \think\Config::get('site.title'); ?></title>
    <link rel="Bookmark" href="__ROOT__/favicon.ico" >
    <link rel="Shortcut Icon" href="__ROOT__/favicon.ico" />
    <!--[if lt IE 9]>
    <script type="text/javascript" src="__LIB__/html5.js"></script>
    <script type="text/javascript" src="__LIB__/respond.min.js"></script>
    <script type="text/javascript" src="__LIB__/PIE_IE678.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/Hui-iconfont/1.0.7/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/icheck/icheck.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/h-ui.admin/css/style.css"/>
    <link rel="stylesheet" type="text/css" href="__STATIC__/css/app.css"/>
    <link rel="stylesheet" type="text/css" href="__LIB__/icheck/icheck.css"/>
    
    <!--[if IE 6]>
    <script type="text/javascript" src="__LIB__/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <!--定义JavaScript常量-->
<script>
    window.THINK_ROOT = '<?php echo \think\Request::instance()->root(); ?>';
    window.THINK_MODULE = '<?php echo \think\Url::build("/" . \think\Request::instance()->module(), "", false); ?>';
    window.THINK_CONTROLLER = '<?php echo \think\Url::build("___", "", false); ?>'.replace('/___', '');
</script>
</head>
<body>

<nav class="breadcrumb">
    <div id="nav-title"></div>
    <a class="btn btn-success radius r btn-refresh" style="line-height:1.6em;margin-top:3px" href="javascript:;" title="刷新"><i class="Hui-iconfont"></i></a>
</nav>


<div class="page-container">
    <form class="mb-20" method="get" action="<?php echo \think\Url::build(\think\Request::instance()->action()); ?>">
    <input type="text" class="input-text" style="width:250px" placeholder="手机" name="mobile" value="<?php echo \think\Request::instance()->param('mobile'); ?>">
    <button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
</form>
<!--     <div class="cl pd-5 bg-1 bk-gray">
      
        <span class="r pt-5 pr-5">
            共有数据 ：<strong><?php echo $count; ?></strong> 条
        </span>
    </div> -->
    <table class="table table-border table-bordered table-hover table-bg mt-20">
        <thead>
        <tr class="text-c">
            
<th width="80">手机</th>
<th width="150">创建时间</th>
<th width="150">最后登录时间</th>
<th width="60">登录次数</th>
<th width="60">登录IP</th>
<th width="60">登录地</th>
<th width="60">登陆明细</th>

        </tr>
        </thead>
        <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        <tr class="text-c">
            
<td><?php echo high_light($vo['mobile'],\think\Request::instance()->param('moblie')); ?></td>
<td><?php echo date('Y-m-d H:i:s',$vo['create_time']); ?></td>
<td><?php echo date('Y-m-d H:i:s',$vo['last_login_time']); ?></td>
<td><?php echo $vo['login_count']; ?></td>
<td><?php echo $vo['last_login_ip']; ?></td>
<td><?php echo isset($vo['city']) ? $vo['city'] :  '未知'; ?></td>
             <td class="f-14">
            <a title="明细" href="javascript:;" onclick="layer_open('详情','/admin/yisheng/info?uid=<?php echo $vo['id']; ?>')" class="label radius ml-5 label-primary">明细</a>
           </td>
        </tr>
        <?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
    <div class="page-bootstrap"><?php echo $page; ?></div>
</div>

<script type="text/javascript" src="__LIB__/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="__LIB__/layer/2.4/layer.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="__STATIC__/js/app.js"></script>
<script type="text/javascript" src="__LIB__/icheck/jquery.icheck.min.js"></script>

</body>
</html>