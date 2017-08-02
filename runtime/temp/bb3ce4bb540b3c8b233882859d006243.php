<?php if (!defined('THINK_PATH')) exit(); /*a:6:{s:75:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\huanzhe\index.html";i:1501149688;s:75:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\base.html";i:1488957233;s:86:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\javascript_vars.html";i:1488957233;s:74:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\huanzhe\form.html";i:1501151128;s:72:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\huanzhe\th.html";i:1501490466;s:72:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\huanzhe\td.html";i:1501490577;}*/ ?>
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
    <input type="text" class="input-text" style="width:250px" placeholder="姓名" name="username" value="<?php echo \think\Request::instance()->param('username'); ?>">

    <button type="submit" class="btn btn-success" id="" name=""><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
    
    
</form>
<form class="mb-20" method="get" action="/admin/huanzhe/export">


 <div class="cl pd-5 bg-1 bk-gray">
        <span class="l">
        
<form action="" target="_blank" method="post" action>
    <button class="btn btn-success" type="submit">导出Excel</button>
    <input type="hidden" name="keyword" value="<?php echo (\think\Request::instance()->param('username')) ? \think\Request::instance()->param('username') :  ''; ?>">
</form>        </span>
       
    </div>
    
    </form>

    <table class="table table-border table-bordered table-hover table-bg mt-20">
        <thead>
        <tr class="text-c">
            <th width="100">医生手机号</th>
<th width="100">患者姓名</th>
<th width="100">天数</th>
<th width="150">输液方式</th>
<th width="80">全天总液量</th>
<th width="80">PN液量</th>
<th width="150">PN中纳量</th>
<th width="60">PN中钾量</th>
<th width="60">PN时间</th>
<th width="80">创建时间</th>
<th width="80">创建地址</th>
<th width="80">操作</th>
        </tr>
        </thead>
        <tbody>
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        <tr class="text-c">
            
        
<td><?php echo getmobileByUid($vo['user_id']);?></td>
<td><?php echo high_light($vo['username'],\think\Request::instance()->param('username')); ?></td>
<td><?php echo $vo['day']; ?></td>
<td><?php echo $vo['fangshi']; ?></td>
<td><?php echo $vo['allday']; ?></td>
<td><?php echo $vo['pn']; ?></td>
<td><?php echo $vo['pnna']; ?></td>
<td><?php echo $vo['pnk']; ?></td>
<td><?php echo $vo['pntime']; ?></td>
<td><?php echo date('Y-m-d H:i:s',$vo['add_time']); ?></td>
<td><?php echo isset($vo['city']) ? $vo['city'] :  '未知'; ?></td>
            <td class="f-14">
             
              <a title="菜单" href="javascript:;" onclick="layer_open('详情','/admin/huanzhe/info?id=<?php echo $vo['id']; ?>')" class="label radius ml-5 label-primary">明细</a>
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