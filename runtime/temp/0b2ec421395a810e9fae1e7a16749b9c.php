<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:73:"D:\xampp\htdocs\tpadmin\public/../application/home\view\index\pnlist.html";i:1501209920;}*/ ?>
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
    <div class="list-container">
      <div class="search-info">
      <form action="/home/index/pnlist" >
      <input type="text" id="keyword" name="keyword" value="<?php if($keyword==''){echo '';}else{echo $keyword;}?>" placeholder="<?php if($keyword==''){echo '请输入姓名/床号进行搜索';}else{echo $keyword;}?>">
      <a id='close' class="del">X</a>
      <input type="submit" value="搜索">
      </form>
      </div>
      <div class="list">
        <ul>
        
        <?php if(is_array($list) || $list instanceof \think\Collection || $list instanceof \think\Paginator): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
        
        <li onclick="window.location='/home/index/pninfo?username=<?php echo $vo['username']; ?>'">
            <a href="/home/index/pninfo?username=<?php echo $vo['username']; ?>">
              <i>></i>
              <span>姓名/床号：<?php echo $vo['username']; ?></span><br>
              <em>保存时间：<?php echo date('Y-m-d H:i:s',$vo['add_time']); ?></em>
            </a>
          </li>

       <?php endforeach; endif; else: echo "" ;endif; ?>
        </ul>
      </div>
    </div>
</body>
    <script type="text/javascript" src="__STATIC__/js/jquery-1.7.1-min.js"></script>
<script>
$("#close").click(function(){
	$('#keyword').attr('value','');
	$('#keyword').attr('placeholder','请输入姓名/床号进行搜索');
	
	
});
</script>
</html>