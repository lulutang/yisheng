<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:72:"D:\xampp\htdocs\tpadmin\public/../application/home\view\index\login.html";i:1501213718;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,minimal-ui" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="renderer" content="webkit" />
<meta content="telephone=no" name="format-detection" />
<title>登录</title>
  <link rel="stylesheet" href="__STATIC__/css/common.css">
    <link rel="stylesheet" href="__STATIC__/css/style.css">
    <script src="__STATIC__/js/flexible.js"></script>
</head>
<body>
    <div class="container idx-container">
        <a href="javascript:;" class="logo"></a>
        <div class="form">
            <form >
                <input type="text" placeholder="请输入手机号码" id ="mobile" class="ipt-01 mb40">
                <div class="yzm"><input type="text" id="code" placeholder="输入验证码"><span id="btn" class="btn-yzm">获取验证码</span></div>
                <input type="button"   value="进入" class="btn-01" id='submit'>
            </form>
        </div>
    </div>
    <script type="text/javascript" src="__STATIC__/js/jquery-1.7.1-min.js"></script>
    <script type="text/javascript">
    
    var localStorage = window.localStorage;
	var mobile =	localStorage.getItem("mobile");
	if(mobile){
		window.location.href="/home/index/index?mobile="+mobile;

	}
    
    function invokeSettime(obj){
        var countdown=59;
        settime(obj);
        function settime(obj) {
            if (countdown == 0) {
                $(obj).attr("class",'btn-yzm');
                $(obj).html("获取验证码");
                countdown = 59;
                return;
            } else {
                $(obj).attr("disabled",true);
                $(obj).html("已发送(" + countdown + ") s ");
                countdown--;
            }
            setTimeout(function() {
                        settime(obj) }
                    ,1000)
        }
    }

    $(".btn-yzm").click(function(){
    	var mobile = $('#mobile').val();
    	 if(!(/^1(3|4|5|7|8)\d{9}$/.test(mobile))){ 
     		alert('请填写正确的手机号码');
     	    $(this).addClass("done");
    	}else{
    		$('.btn-yzm').addClass("btn-yzm-dis").text("已发送(60s)");


    		 $.ajax({ url: "/home/index/ajaxsend", data: {'mobile':mobile}, success: function(result){
    			if(result==0){

    				new invokeSettime("#btn");
                   
    			} else{
    				
    				alert('异常');
    			}
              }}); 
           
    	}
    	
    });
    
    $('#submit').click(function(){
    	var mobile = $('#mobile').val();
    	var code = $('#code').val();
     	if(!(/^1(3|4|5|7|8)\d{9}$/.test(mobile))){ 
    		alert('请填写正确的手机号码');
    	    $(this).addClass("done");
     	}else{
   		
   		$.ajax({ url: "/home/index/ajaxlogin", data: {'mobile':mobile,'code':code}, success: function(result){
			if(result==0){
				var localStorage = window.localStorage;
   				localStorage.setItem("mobile",mobile);
   				window.location.href="/home/index/index";
			}
			else if(result==1){
				alert('请使用最新验证或者验证码已使用');
			}
			else{
				alert('请使用正确的验证码');
			}
			
          }});
          
   	}
    });
    </script>
</body>
</html>