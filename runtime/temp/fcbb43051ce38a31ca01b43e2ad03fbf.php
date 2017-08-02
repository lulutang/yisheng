<?php if (!defined('THINK_PATH')) exit(); /*a:3:{s:74:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\huanzhe\info.html";i:1501209038;s:75:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\base.html";i:1488957233;s:86:"D:\xampp\htdocs\tpadmin\public/../application/admin\view\template\javascript_vars.html";i:1488957233;}*/ ?>
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


<div class="page-container">
    <form class="form form-horizontal" id="form" method="post" action="<?php echo \think\Request::instance()->baseUrl(); ?>">
        <input type="hidden" name="id" value="<?php echo isset($list['id']) ? $list['id'] :  ''; ?>">
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3">姓名：<?php echo isset($list['username']) ? $list['username'] :  ''; ?>  天数：<?php echo isset($list['day']) ? $list['day'] :  ''; ?></label>
            <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key2']) ? $list['key2'] :  ''; ?>% 葡萄糖注射液：<?php echo isset($list['val2']) ? $list['val2'] :  ''; ?> ml</label>
            <label class="form-label col-xs-3 col-sm-3">糖 能 量 ：<?php echo isset($list['tangnl']) ? $list['tangnl'] :  ''; ?>   <!--40-50%  应<60%总热卡 --> </label>
        </div>
         <div class="row cl">
           <label class="form-label col-xs-3 col-sm-3">输液方式：<?php echo isset($list['fangshi']) ? $list['fangshi'] :  ''; ?></label>
             <label class="form-label col-xs-3 col-sm-3"> <?php echo isset($list['key3']) ? $list['key3'] :  ''; ?>% 葡萄糖注射液：<?php echo isset($list['val3']) ? $list['val3'] :  ''; ?> ml</label>
            <label class="form-label col-xs-3 col-sm-3">AA 能量 ：<?php echo isset($list['aanl']) ? $list['aanl'] :  ''; ?>  15%</label>
        </div>
         <div class="row cl">
           <label class="form-label col-xs-3 col-sm-3">体重：<?php echo isset($list['tizhong']) ? $list['tizhong'] :  ''; ?> kg </label>
           <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key4']) ? $list['key4'] :  ''; ?> 水溶性维生素注射液：<?php echo isset($list['val4']) ? $list['val4'] :  ''; ?> ml </label>
           <label class="form-label col-xs-3 col-sm-3">FAT能量：<?php echo isset($list['fatnl']) ? $list['fatnl'] :  ''; ?>  35-45%  <!-- 应<60%总热卡 --></label>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key1']) ? $list['key1'] :  ''; ?>：<?php echo isset($list['val1']) ? $list['val1'] :  ''; ?> ml/次  <?php echo isset($list['val11']) ? $list['val11'] :  ''; ?> </label>
            <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key5']) ? $list['key5'] :  ''; ?>脂溶性维生素注射液：<?php echo isset($list['val5']) ? $list['val5'] :  ''; ?> ml </label>
            <label class="form-label col-xs-3 col-sm-3"> 奶 能 量 ：<?php echo isset($list['nainl']) ? $list['nainl'] :  ''; ?> Kcal </label>
        </div>
       
         <div class="row cl">
         
            <label class="form-label col-xs-3 col-sm-3">全天总液量：<?php echo isset($list['allday']) ? $list['allday'] :  ''; ?>ml/kg </label>
            <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key6']) ? $list['key6'] :  ''; ?> 小儿复方氨基酸注射：<?php echo isset($list['val6']) ? $list['val6'] :  ''; ?> ml </label>
            <label class="form-label col-xs-3 col-sm-3">PN能 量 ：<?php echo isset($list['pnnl']) ? $list['pnnl'] :  ''; ?> Kcal</label>
         
          
        </div>
       
           <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">非PN液量：<?php echo isset($list['notpn']) ? $list['notpn'] :  ''; ?> ml </label>
            <label class="form-label col-xs-3 col-sm-3"><?php echo isset($list['key7']) ? $list['key7'] :  ''; ?>脂肪乳注射液：<?php echo isset($list['val7']) ? $list['val7'] :  ''; ?> ml  </label>
            <label class="form-label col-xs-3 col-sm-3">总 能 量：<?php echo isset($list['zongnl']) ? $list['zongnl'] :  ''; ?> Kcal</label>
           
          
        </div>
          <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">PN液量：<?php echo isset($list['pn']) ? $list['pn'] :  ''; ?> ml <?php echo isset($list['key5']) ? $list['key5'] :  ''; ?>脂溶性维生素注射液：<?php echo isset($list['vel5']) ? $list['vel5'] :  ''; ?> ml</label>
            <label class="form-label col-xs-3 col-sm-3">10%氯化钠注射液 ：<?php echo isset($list['lvna']) ? $list['lvna'] :  ''; ?>  ml</label>
            <label class="form-label col-xs-3 col-sm-3">渗 透 压 ：<?php echo isset($list['shentouya']) ? $list['shentouya'] :  ''; ?> mOsm/L</label>
          
        </div>
         <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">氨基酸：<?php echo isset($list['anjisuan']) ? $list['anjisuan'] :  ''; ?> ml </label>
            <label class="form-label col-xs-3 col-sm-3">10%氯化钾注射液 ：<?php echo isset($list['lvk']) ? $list['lvk'] :  ''; ?> ml</label>
            <label class="form-label col-xs-3 col-sm-3">糖 浓 度 ：<?php echo isset($list['tangnudu']) ? $list['tangnudu'] :  ''; ?> % <!-- <12.5% --></label>
          
        </div>
        
         <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">脂肪乳：<?php echo isset($list['zhifangru']) ? $list['zhifangru'] :  ''; ?> g/(kg.d) </label>
            <label class="form-label col-xs-3 col-sm-3"> 10%葡萄糖酸钙针 ：<?php echo isset($list['te20']) ? $list['te20'] :  ''; ?> ml</label>
            <label class="form-label col-xs-3 col-sm-3">张力：<?php echo isset($list['zhangli']) ? $list['zhangli'] :  ''; ?> 张<!--   <1/3张 --></label>
          
        </div>
        
           <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">PN中纳量：<?php echo isset($list['pnna']) ? $list['pnna'] :  ''; ?>  g/(kg.d)   <!--40-50%  应<60%总热卡 --></label>
            <label class="form-label col-xs-3 col-sm-3">  甘油磷酸钠针 ：<?php echo isset($list['te21']) ? $list['te21'] :  ''; ?> ml </label>
            <label class="form-label col-xs-3 col-sm-3">氨 基 酸 ：<?php echo isset($list['anjisuan1']) ? $list['anjisuan1'] :  ''; ?> g/(kg·d)</label>
          
        </div>
        
           <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">PN中钾量：<?php echo isset($list['pnk']) ? $list['pnk'] :  ''; ?>  mmol/(kg.d) <!-- 转化期60-80Kcal/(kg·d) --></label>
            <label class="form-label col-xs-3 col-sm-3">微量元素针 ：<?php echo isset($list['te22']) ? $list['te22'] :  ''; ?> ml  <!-- 稳定生长期105-115Kcal/(kg·d) --></label>
            <label class="form-label col-xs-3 col-sm-3">脂 肪 乳 ：<?php echo isset($list['zhifangru1']) ? $list['zhifangru1'] :  ''; ?> g/(kg·d) </label>
          
        </div>
        
           <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">PN时间：<?php echo isset($list['pntime']) ? $list['pntime'] :  ''; ?> 小时  <!-- 渗透压<800mOsm/L --></label>
            <label class="form-label col-xs-3 col-sm-3">肝素针：<?php echo isset($list['te23']) ? $list['te23'] :  ''; ?> ml  </label>
          
        </div>
        
               <div class="row cl">
         
           <label class="form-label col-xs-3 col-sm-3">PN泵速：<?php echo isset($list['pnsudu']) ? $list['pnsudu'] :  ''; ?> ml/h  <!-- ≤4.0/(kg·d) --></label>
                  <label class="form-label col-xs-3 col-sm-3">创建IP：<?php echo isset($list['ip']) ? $list['ip'] :  '未知'; ?></label>
      
        </div>
        
          <div class="row cl">
         <label class="form-label col-xs-3 col-sm-3">PN糖速：<?php echo isset($list['pntangsu']) ? $list['pntangsu'] :  ''; ?> ml/h</label>
                           <label class="form-label col-xs-3 col-sm-3">创建地址：<?php echo isset($list['city']) ? $list['city'] :  '未知'; ?></label>
         
          
        </div>
    </form>
</div>

<script type="text/javascript" src="__LIB__/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="__LIB__/layer/2.4/layer.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui/js/H-ui.js"></script>
<script type="text/javascript" src="__STATIC__/h-ui.admin/js/H-ui.admin.js"></script>
<script type="text/javascript" src="__STATIC__/js/app.js"></script>
<script type="text/javascript" src="__LIB__/icheck/jquery.icheck.min.js"></script>

<script type="text/javascript" src="__LIB__/Validform/5.3.2/Validform.min.js"></script>
<script>
    $(function () {
        $("[name='status'][value='<?php echo isset($list['status']) ? $list['status'] :  '1'; ?>']").attr("checked",true);

        $('.skin-minimal input').iCheck({
            checkboxClass: 'icheckbox-blue',
            radioClass: 'iradio-blue',
            increaseArea: '20%'
        });

        $("#form").Validform({
            tiptype:2,
            ajaxPost:true,
            showAllError:true,
            callback:function(ret){
                ajax_progress(ret);
            }
        });
    })
</script>

</body>
</html>