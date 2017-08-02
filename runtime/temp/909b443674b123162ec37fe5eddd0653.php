<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:73:"D:\xampp\htdocs\tpadmin\public/../application/home\view\index\pninfo.html";i:1501039199;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,minimal-ui" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="renderer" content="webkit" />
<meta content="telephone=no" name="format-detection" />
<title>患者数据</title>
<link rel="stylesheet" href="__STATIC__/css/common.css">
    <link rel="stylesheet" href="__STATIC__/css/style.css">
    <script src="__STATIC__/js/flexible.js"></script>
</head>
<body>
    <div class="container data-container">
      <div class="data-info">
        <div>患者姓名：<?php echo $username; ?></div>
        <p>初录入时间：<?php echo date('Y-m-d H:i:s',$time); ?></p>
      </div>
      <div class="data-bd">
        <div class="data-left">
          <div class="tit">统计项目</div>
          <div>输液方式</div>
          <div>体重</div>
          <div>足月儿奶</div>
          <div>全天总液量</div>
          <div>PN液量</div>
          <div>PN中纳量</div>
          <div>PN中钾量</div>
          <div>PN时间</div>
          <div>PN泵速</div>
        </div>
        <div class="data-all">
        <div class="data-con">
          <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        
          <div class="data-day">
            <div class="tit">第<?php echo $vo['day']; ?></div>
            <div><?php echo $vo['fangshi']; ?></div>
            <div><?php echo $vo['tizhong']; ?>kg</div>
        
            <div><?php echo $vo['val1']; ?>ml/Kg</div>
            <div><?php echo $vo['allday']; ?>ml</div>
            <div><?php echo $vo['pn']; ?>mmol(kg·d)</div>
            <div><?php echo $vo['pnna']; ?>ml</div>
            <div><?php echo $vo['pnk']; ?>ml</div>
            <div><?php echo $vo['pntime']; ?>ml</div>
             <div><?php echo $vo['pnsudu']; ?>ml</div>
          </div>
          <?php endforeach; endif; else: echo "" ;endif; ?>
          
        
        </div>
        </div>
      </div>
    </div>
</body>
</html>