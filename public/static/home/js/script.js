

var showlayer=function(obj){
	
	if($(".popup-showlayer").length==0){
		
		var localStorage = window.localStorage;
		var isflag       = localStorage.getItem("isflag");
		if(isflag==1){
			return true;
		}
		var html='<div class="popup-showlayer"><div><i class="left"></i><span>左右滑动页面<br>查看更多内容</span><i class="right"></i></div><a class="popup-close">点击继续</a></div>';
	    if($(".popup-bg").length==0){
	    	html+='<div class="popup-bg"></div>';
	    }
	    $('body').append(html);
		$(".popup-bg").show();
	    $(".popup-close").click(function(){
	    	localStorage.setItem("isflag",1);
			$(".popup-bg").hide();	
			$(".popup-showlayer").hide();
		});
	}else{
		$(".popup-bg").show();
		$(".popup-showlayer").show();
	}

	
}
$(".ans").click(function(){
	$(".popup-mess").show();
	$(".popup-bg").show();
})
$(".popup-mess .popup-close,.popup-btn a").click(function(){
	$(".popup-mess").hide();
	$(".popup-bg").hide();
})
if($(".warp").length>0){
	showlayer();
}

$(".operation-container .calculator-btn a.btn-02").click(function(){

	$(".popup-mess").show();
	$(".popup-bg").show();
})


	