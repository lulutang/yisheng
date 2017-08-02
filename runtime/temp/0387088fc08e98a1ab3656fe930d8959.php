<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:71:"D:\xampp\htdocs\tpadmin\public/../application/home\view\index\ywjs.html";i:1500978842;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,minimal-ui" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="renderer" content="webkit" />
<meta content="telephone=no" name="format-detection" />
<title>药物速算</title>
<link rel="stylesheet" href="__STATIC__/css/common.css">
    <link rel="stylesheet" href="__STATIC__/css/style.css">
    <script src="__STATIC__/js/flexible.js"></script>
</head>
<body>
    <div class="container operation-container">
    <form action="">
      <ul>
        <li>
          <select id="YWJLSELECT" name="YWJLSELECT" onChange="updateYWSSCal();">
            <option value="多巴胺">多巴胺</option>
            <option value="肾上腺素">肾上腺素</option>
						<option value="酚妥拉明">酚妥拉明</option>
						<option value="硝酸甘油">硝酸甘油</option>
						<option value="去甲肾上腺素">去甲肾上腺素</option>
						<option value="异丙肾上腺素">异丙肾上腺素</option>
						<option value="米力农">米力农</option>
						<option value="利多卡因">利多卡因</option>
						<option value="芬太尼">芬太尼</option>
						<option value="胰岛素">胰岛素</option>
          </select>
        </li>
        <li class="hr"></li>
        <li class="info"> 
          <span class="info-01">参&nbsp;考&nbsp;维&nbsp;持&nbsp;量</span>
          <span class="info-02"><input name="Text9" type="text" id="Text9" readonly></span>
          <span class="ml20"> </span>
        </li>
        <li class="info"> 
          <span class="info-01">宝&nbsp;&nbsp;宝&nbsp;&nbsp;体&nbsp;&nbsp;重</span>
          <span class="info-02" style="background-color:#FFF"><input name="Text1" type="text" id="Text1" onKeyUp="checkAndProc();"></span>
          <span class="ml20">kg</span>
        </li>
        <li class="info"> 
          <span class="info-01" id="yylBl">多 巴 胺 原 液</span>
          <span class="info-03"><input name="Text4" type="text" id="Text4" readonly></span>
          <span class="info-04">ml=</span>
          <span class="info-05"><input name="Text8" type="text" id="Text8" readonly></span>
          <span class="ml20" id="dw1Lbl">mg</span>
        </li>
        <li class="info"> 
          <span class="info-06">时&nbsp;&nbsp;间</span>
          <span class="info-07" style="background-color:#FFF"><input name="Text2" type="text" id="Text2"  onKeyUp="checkAndProc();"></span>
          <span class="info-04">h</span>
          <span class="info-08">泵<em class="w3em"></em>速</span>
          <span class="info-09" style="background-color:#FFF"><input name="Text5" type="text" id="Text5"  onKeyUp="checkAndProc();"></span>
          <span class="ml20">ml/h</span>
        </li>
        <li class="info"> 
          <span class="info-06">延长管</span>
          <span class="info-07" style="background-color:#FFF"><input name="Text3" type="text" id="Text3" onKeyUp="checkAndProc();"></span>
          <span class="info-04">ml</span>
          <span class="info-08" id="sdlBl">多巴胺速度</span>
          <span class="info-09" style="background-color:#FFF"><input name="Text6" type="text" id="Text6" onKeyUp="checkAndProc();"></span>
          <span class="ml20" id="dw2Lbl">ug/(kg·min)</span>
        </li>
        <li class="hr"></li>
        <li class="info"> 
          <span class="info-01">5%<em class="w4em"></em>GS</span>
          <span class="info-02"><input name="Text10" type="text" id="Text10" readonly></span>
          <span class="ml20">ml</span>
        </li>
        <li class="info"> 
          <span class="info-01" id="zlBl">多&nbsp;&nbsp;巴&nbsp;&nbsp;胺&nbsp;&nbsp;针</span>
          <span class="info-02"><input name="Text11" type="text" id="Text11" readonly></span>
          <span class="ml20" id="dw3Lbl">mg</span>
        </li>
        <li class="hr"></li>
        <li class="info"> 
          <span class="info-01" id="tjlBl">多巴胺速度调节</span>
          <span class="info-02"><input name="Label4" type="text" id="Label4" readonly></span>
          <span class="ml20">ml/h </span>
        </li>
        <li class="info"> 
          <span class="info-01">调 节 后 泵 速</span>
          <span class="info-02" style="background-color:#FFF"><input name="Text7" type="text" id="Text7" onKeyUp="checkAndProc();"></span>
          <span class="ml20" id="dw4Lbl">ug/(kg·min)</span>
        </li>
      </ul>

      <div class="tc calculator-btn"><a class="btn-02">使用说明</a><input name="按钮" type="button" class="btn-02" value="清除" onClick="cleanYWSSInput();"></div>
    </form>
    </div>
    <div class="popup-mess">
      <div class="popup-head">使用说明<a class="popup-close">X</a></div>
      <div class="popup-bd"><br /><br />　　在最上面的下拉列表中，可选择对应的药物品种，根据不同药物，在上面位置输入相关参数。<br /><br />

　　参考维持量显示不同药物的参考数值，同时填入已知条件，如：体重、时间、泵速等，输入完整相关参数后，计算器会自动计算结果并显示出来。<br /><br />

　　最后还可以在底部的调节后泵速的输入框内输入不同的参数，来调整显示对应药物的速度调节参数。</div>
      <div class="popup-btn"><a>知道了</a></div>
    </div>
    <div class="popup-bg"></div>
    <script type="text/javascript" src="__STATIC__/js/jquery-1.7.1-min.js"></script>
    <script type="text/javascript" src="__STATIC__/js/script.js"></script>
</body>
<script type="text/javascript" type="text/javascript">
	var myTag = 0;
	var jsonDatas = new Array();
	
	function initYWSSData(){
		updateYWSSCal();
	}
	
	function cleanYWSSInput(){
		$("#Text1").val('');
		$("#Text2").val('');
		$("#Text5").val('');
		$("#Text3").val('');
		$("#Text6").val('');
		$("#Text7").val('');
		$("#Text10").val('');
		$("#Text11").val('');
		$("#Label4").val('');
	}
	
	function updateYWSSCal(){
		var ywjlselectIndex = $("#YWJLSELECT ").get(0).selectedIndex;
		
		var YWJLCalStrArr = new Array();
		YWJLCalStrArr[0] = "2~15ug/(kg.min)";
		YWJLCalStrArr[1] = "0.1~1ug/(kg.min)";
		YWJLCalStrArr[2] = "1~15ug/(kg.min)";
		YWJLCalStrArr[3] = "0.5~2.5ug/(kg.min)";
		YWJLCalStrArr[4] = "0.01~0.1ug/(kg.min)";
		YWJLCalStrArr[5] = "0.05~0.5ug/(kg.min)";
		YWJLCalStrArr[6] = "0.25~0.75ug/(kg.min)";
		YWJLCalStrArr[7] = "10~50ug/(kg.min)";
		YWJLCalStrArr[8] = "1~5ug/(kg.h)";
		YWJLCalStrArr[9] = "0.01~0.1IU/(kg.h)";
		
		var YWJLCalYYStrArr = new Array();
		YWJLCalYYStrArr[0] = "2|20";
		YWJLCalYYStrArr[1] = "1|1";
		YWJLCalYYStrArr[2] = "1|5";
		YWJLCalYYStrArr[3] = "1|5";
		YWJLCalYYStrArr[4] = "1|2";
		YWJLCalYYStrArr[5] = "2|1";
		YWJLCalYYStrArr[6] = "5|5";
		YWJLCalYYStrArr[7] = "5|100";
		YWJLCalYYStrArr[8] = "2|100";
		YWJLCalYYStrArr[9] = "10|400";
		
		var YWJLCalStrLbl = new Array();
		YWJLCalStrLbl[0] = "多 巴 胺 原 液|多巴胺速度|多&nbsp;&nbsp;巴&nbsp;&nbsp;胺&nbsp;&nbsp;针|多巴胺速度调节";
		YWJLCalStrLbl[1] = "肾上腺素原液|<font size='0.9em'>肾上腺素速度</font>|肾 上 腺 素 针|肾上腺素速度调节";
		YWJLCalStrLbl[2] = "酚妥拉明原液|<font size='0.9em'>酚妥拉明速度</font>|酚 妥 拉 明 针|酚妥拉明速度调节";
		YWJLCalStrLbl[3] = "硝酸甘油原液|<font size='0.9em'>硝酸甘油速度</font>|硝 酸 甘 油 针|硝酸甘油速度调节";
		YWJLCalStrLbl[4] = "去甲肾上腺素原液|<font size='0.9em'>去甲肾上腺素速度</font>|去甲肾上腺素针|去甲肾上腺素速度调节";
		YWJLCalStrLbl[5] = "异丙肾上腺素原液|<font size='0.9em'>异丙肾上腺素速度</font>|异丙肾上腺素针|异丙肾上腺素速度调节";
		YWJLCalStrLbl[6] = "米力农原液|<font size='0.9em'>米力农速度</font>|米 力 农 针|米力农速度调节";
		YWJLCalStrLbl[7] = "利多卡因原液|<font size='0.9em'>利多卡因速度</font>|利 多 卡 因 针|利多卡因速度调节";
		YWJLCalStrLbl[8] = "芬太尼原液|<font size='0.9em'>芬太尼速度</font>|芬 太 尼 针|芬太尼速度调节";
		YWJLCalStrLbl[9] = "胰岛素原液|<font size='0.9em'>胰岛素速度</font>|胰 岛 素 针|胰岛素速度调节";
		
		var dwArrLbl = new Array();
		dwArrLbl[0] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[1] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[2] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[3] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[4] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[5] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[6] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[7] = "mg|ug/(kg·min)|mg|ug/(kg·min)";
		dwArrLbl[8] = "ug|ug/(kg·h)|ug|ug/(kg·h)";
		dwArrLbl[9] = "IU|IU/(kg·h)|IU|IU/(kg·h)";
		
		
		 $("#Text9").val(YWJLCalStrArr[ywjlselectIndex]);
		 //设置原液的两个字符串
		 var YWJLCalYYStrArrSplit = YWJLCalYYStrArr[ywjlselectIndex].split("|");
		 $("#Text4").val(YWJLCalYYStrArrSplit[0]);
		 $("#Text8").val(YWJLCalYYStrArrSplit[1]);
		
		var YWJLCalStrLblSplit = YWJLCalStrLbl[ywjlselectIndex].split("|");
		$("#yylBl").html(YWJLCalStrLblSplit[0]);
		$("#sdlBl").html(YWJLCalStrLblSplit[1]);
		$("#zlBl").html(YWJLCalStrLblSplit[2]);
		$("#tjlBl").html(YWJLCalStrLblSplit[3]);

		var dwArrLblSplit = dwArrLbl[ywjlselectIndex].split("|");
		$("#dw1Lbl").html(dwArrLblSplit[0]);
		$("#dw2Lbl").html(dwArrLblSplit[1]);
		$("#dw3Lbl").html(dwArrLblSplit[2]);
		$("#dw4Lbl").html(dwArrLblSplit[3]);

		checkAndProc();
		
	}
	
	function setProcResult(){
		$("#Text10").val(jsonDatas[0]);
		$("#Text11").val(jsonDatas[1]);
		$("#Label4").val(jsonDatas[2]);
	}
	
	function goProcCal(){
		
		
		var jsonUrl = 'http://45.121.52.57:3002/ywjl.asp?';
		var jsonPams = 't0='+$("#YWJLSELECT").val()+'&t1='+$("#Text1").val()+'&t2='+$("#Text4").val()+'&t3='+$("#Text8").val()+'&t4='+$("#Text2").val()+'&t5='+$("#Text5").val()+'&t6='+$("#Text3").val()+'&t7='+$("#Text6").val()+'&t8='+$("#Text7").val();
		
		$.ajax({  
		     type:'post',
		     url:jsonUrl+jsonPams,
		     data:{},
		     cache:false,  
		     dataType:'JSONP',
		     jsonpCallback:"success_jsonp",
		     success:function(data){  
		     			//alert(data['datas'][0]['gs']);
		     			jsonDatas[0] = data['datas'][0]['gs'];
		     			jsonDatas[1] = data['datas'][0]['zhen'];
		     			jsonDatas[2] = data['datas'][0]['tiaojie'];
		     			myTag = 0;
		     			setProcResult();
		      },  
		      error:function(){
		      	myTag = 1;
		      	alert('参数输入错误');
		      }
		});
	}
	
	function checkAndProc(){
		if ($("#Text1").val() != '' && $("#Text2").val() != '' && $("#Text5").val() != '' && $("#Text3").val() != '' && $("#Text6").val() != '') {
				goProcCal();
		}
	}
	

	
	
	initYWSSData();
	//alert(YWJLCalStrArr$[0]);
</script>
</html>