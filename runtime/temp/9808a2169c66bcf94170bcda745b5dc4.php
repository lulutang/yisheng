<?php if (!defined('THINK_PATH')) exit(); /*a:1:{s:71:"D:\xampp\htdocs\tpadmin\public/../application/home\view\index\pnjs.html";i:1501151850;}*/ ?>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no,minimal-ui" />
<meta content="yes" name="apple-mobile-web-app-capable" />
<meta content="black" name="apple-mobile-web-app-status-bar-style" />
<meta name="renderer" content="webkit" />
<meta content="telephone=no" name="format-detection" />
<title>计算器</title>
    <link rel="stylesheet" href="__STATIC__/css/common.css">
    <link rel="stylesheet" href="__STATIC__/css/style.css">
    <script src="__STATIC__/js/flexible.js"></script>
</head>
<body>
    <div class="container calculator-container">
      <div class="calculator-con">
      <div class="warp" id="calculator">
        <div id="calculator-item">
        <form id="submit"">
          <table cellpadding="0" cellspacing="0" class="calculator-03">
            <tr>
              <td><span class="info-01">姓名/床号</span></td>
              <td><span class="info-02"><input name="Te1" type="text" id="Te1"></span></td>
              <td><span class="info-03">天数</span><span class="info-04"><select name="Combo2Day" id="Combo2Day" style="width:1rem">
<option value="1天">1天</option>
<option value="2天">2天</option>
<option value="3天">3天</option>
<option value="4天">4天</option>
<option value="5天">5天</option>
<option value="6天">6天</option>
<option value="7天">7天</option>
</select>
              </span></td>
            </tr>
            <tr>
              <td><span class="info-01">输 注方 式</span></td>
              <td><span class="info-02 sel01">
              <select name="Combo1" id="Combo1" onChange="Combo1OnChange()">
                <option value="外周静脉">外周静脉</option>
                <option value="中心静脉">中心静脉</option>
              </select></span></td>
              <td></td>
            </tr>
            <tr>
            <td><span class="info-01">体<em class="w3em"></em>重</span></td>
              <td><span class="info-02"><input name="Te2" type="text" id="Te2" onKeyUp="checkAndProc();"></span></td>
              <td>kg</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo2" id="Combo2">
                <option value="足月儿奶">足 月 儿 奶</option>
                <option value="早产儿奶">早 产 儿 奶</option>
                <option value="母乳">母 乳</option>
              </select></span></td>
              <td><span class="info-02"><input name="Te3" type="text" id="Te3" onKeyUp="checkAndProc();"></span></td>
              <td>ml/次<span class="info-05 sel01"><select name="Combo5" id="Combo5">
                <option value="q2h">q2h</option>
                <option value="q3h" selected>q3h</option>
                <option value="q1h">q1h</option>
                <option value="q4h">q4h</option>
                <option value="q6h">q6h</option>
              </select></span></td>
            </tr>
            <tr>
              <td><span class="info-01">全天总液量</span></td>
              <td><span class="info-02"><input name="Te4" type="text" id="Te4" onKeyUp="checkAndProc();"></span></td>
              <td>ml/Kg</td>
            </tr>
            <tr>
              <td><span class="info-01">非PN液量</span></td>
              <td><span class="info-02"><input name="Te5" type="text" id="Te5" onKeyUp="checkAndProc();"></span></td>
              <td>ml</td>
            </tr>
            <tr>
              <td><span class="info-01">PN<em class="w2em"></em>液量</span></td>
              <td><span class="info-02" style="background-color: #f2f2f2;"><input name="Te6" type="text" id="Te6" readonly></span></td>
              <td>ml</td>
            </tr>
            <tr>
              <td><span class="info-01">氨&nbsp;&nbsp;&nbsp;基&nbsp;&nbsp;&nbsp;酸</span></td>
              <td><span class="info-02 sel01"><select name="Combo3" id="Combo3">
                <option value="0" selected>0</option>
                <option value="0.5">0.5</option>
                <option value="1">1</option>
                <option value="1.5">1.5</option>
                <option value="2">2</option>
                <option value="2.5">2.5</option>
                <option value="3">3</option>
                <option value="3.5">3.5</option>
                <option value="4">4</option>
              </select></span></td>
              <td>g/(kg.d)</td>
            </tr>
            <tr>
              <td><span class="info-01">脂&nbsp;&nbsp;&nbsp;肪&nbsp;&nbsp;&nbsp;乳</span></td>
              <td><span class="info-02 sel01"><select name="Combo4" id="Combo4">
                <option value="0" selected>0</option>
                <option value="0.5">0.5</option>
                <option value="1">1</option>
                <option value="1.5">1.5</option>
                <option value="2">2</option>
                <option value="2.5">2.5</option>
                <option value="3">3</option>
              </select></span></td>
              <td>g/(kg.d)</td>
            </tr>
            <tr>
              <td><span class="info-01">PN  中纳量</span></td>
              <td><span class="info-02"><input name="Te7" type="text" id="Te7" onKeyUp="checkAndProc();"></span></td>
              <td>mmol/(kg.d)</td>
            </tr>
            <tr>
              <td><span class="info-01">PN  中钾量</span></td>
              <td><span class="info-02"><input name="Te8" type="text" id="Te8" onKeyUp="checkAndProc();"></span></td>
              <td>mmol/(kg.d)</td>
            </tr>
            <tr>
              <td><span class="info-01">PN<em class="w2em"></em>时间</span></td>
              <td><span class="info-02"><input name="Te9" type="text" id="Te9" onKeyUp="checkAndProc();"></span></td>
              <td>小时</td>
            </tr>
            <tr>
              <td><span class="info-01">PN<em class="w2em"></em>泵速</span></td>
              <td><span class="info-02" style="background-color: #f2f2f2;"><input name="Te10" type="text" id="Te10" readonly></span></td>
              <td>ml/h</td>
            </tr>
            <tr>
              <td><span class="info-01">PN<em class="w2em"></em>糖速</span></td>
              <td><span class="info-02"><input name="Te11" type="text" id="Te11" onKeyUp="checkAndProc();"></span></td>
              <td>mg/(kg·min)</td>
            </tr>
          </table>
        </div>
        <div>
          <table cellpadding="0" cellspacing="0" class="calculator-01">
            <tr>
              <td><span class="info-01 sel01"><select name="Combo6" id="Combo6">
                <option value="50" selected>50%</option>
                <option value="25">25%</option>
              </select></span></td>
              <td><span class="info-02"><i>葡萄糖注射液</i></span></td>
              <td><span class="info-03"><input name="Te12" type="text" id="Te12" readonly></span>ml</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo7" id="Combo7">
                <option value="10">10%</option>
                <option value="5" selected>5%</option>
              </select></span></td>
              <td><span class="info-02"><i>葡萄糖注射液</i></span></td>
              <td><span class="info-03"><input name="Te13" type="text" id="Te13" readonly></span>ml</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo8" id="Combo8">
                <option value=""> </option>
                <option value="">无</option>
              </select></span></td>
              <td><span class="info-02"><i>水溶性维生素注射液</i></span></td>
              <td><span class="info-03"><input name="Te14" type="text" id="Te14" readonly></span>ml</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo10" id="Combo10">
                <option value=""> </option>
                <option value="">无</option>
              </select></span></td>
              <td><span class="info-02"><i>脂溶性维生素注射液</i></span></td>
              <td><span class="info-03"><input name="Te15" type="text" id="Te15" readonly></span>ml</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo12" id="Combo12">
                <option value="6" selected>6%</option>
                <option value="6.74">6.74%</option>
              </select></span></td>
              <td><span class="info-02"><i>小儿复方氨基酸注射液</i></span></td>
              <td><span class="info-03"><input name="Te16" type="text" id="Te16" readonly></span>ml</td>
            </tr>
            <tr>
              <td><span class="info-01 sel01"><select name="Combo11" id="Combo11">
                <option value="10">10%</option>
                <option value="20" selected>20%</option>
                <option value="30">30%</option>
              </select></span></td>
              <td><span class="info-02"><i>脂肪乳注射液</i></span></td>
              <td><span class="info-03"><input name="Te17" type="text" id="Te17" readonly ></span>ml</td>
            </tr>
            <tr>
              <td class="td" colspan="2"><span class="info-04"><i>10%氯化钠注射液</i></span></td>
              <td><span class="info-03"><input name="Te18" type="text" id="Te18" readonly ></span>ml</td>
            </tr>
            <tr>
              <td class="td" colspan="2"><span class="info-04"><i>10%氯化钾注射液</i></span></td>
              <td><span class="info-03"><input name="Te19" type="text" id="Te19" readonly ></span>ml</td>
            </tr>
            <tr id="pttsgz" style="display:none">
              <td class="td" colspan="2"><span class="info-04"><i>10%葡萄糖酸钙针</i></span></td>
              <td><span class="info-03"><input name="Te20" type="text" id="Te20" readonly ></span>ml</td>
            </tr>
            <tr id="gylsnz" style="display:none">
              <td class="td" colspan="2"><span class="info-04"><i>甘油磷酸钠针</i></span></td>
              <td><span class="info-03"><input name="Te21" type="text" id="Te21" readonly ></span>ml</td>
            </tr>
            <tr id="wlysz" style="display:none">
              <td class="td" colspan="2"><span class="info-04"><i>微量元素针</i></span></td>
              <td><span class="info-03"><input name="Te22" type="text" id="Te22" readonly ></span>ml</td>
            </tr>
            <tr id="gsz" style="display:none">
              <td class="td" colspan="2"><span class="info-04"><i>肝素针</i></span></td>
              <td><span class="info-03"><input name="Te23" type="text" id="Te23" readonly ></span>ml</td>
            </tr>
          </table>
        </div>

        <div>
          <table cellpadding="0" cellspacing="0" class="calculator-02">
            <tr>
              <td><span class="info-01">糖 能 量</span></td>
              <td><span class="info-02"><input name="Te26" type="text" id="Te26" readonly></span></td>
              <td>40-50%  应<60%总热卡</td>
            </tr>
            <tr>
              <td><span class="info-01">AA 能量</span></td>
              <td><span class="info-02"><input name="Te27" type="text" id="Te27" readonly></span></td>
              <td>15%</td>
            </tr>
            <tr>
              <td><span class="info-01">FAT能量</span></td>
              <td><span class="info-02"><input name="Te28" type="text" id="Te28" readonly></span></td>
              <td>35-45%  应<60%总热卡</td>
            </tr>
            <tr>
              <td><span class="info-01">奶 能 量</span></td>
              <td><span class="info-03"><input name="Te29" type="text" id="Te29" readonly></span>Kcal</td>
              <td>转化期60-80Kcal/(kg·d)</td>
            </tr>
            <tr>
              <td><span class="info-01">PN 能量</span></td>
              <td><span class="info-03"><input name="Te30" type="text" id="Te30" readonly></span>Kcal</td>
              <td>稳定生长期105-115Kcal/(kg·d)</td>
            </tr>
            <tr>
              <td><span class="info-01">总 能 量</span></td>
              <td><span class="info-03"><input name="Te31" type="text" id="Te31" readonly></span>Kcal/kg</td>
              <td></td>
            </tr>
            <tr>
              <td><span class="info-01">渗 透 压</span></td>
              <td><span class="info-03"><input name="Te32" type="text" id="Te32" readonly></span>mOsm/L</td>
              <td id="srfsSelLblsty">渗透压<800mOsm/L</td>
            </tr>
            <tr>
              <td><span class="info-01">糖 浓 度</span></td>
              <td><span class="info-03"><input name="Te33" type="text" id="Te33" readonly></span>%</td>
              <td id="srfsSelLbltnd"><12.5%</td>
            </tr>
            <tr>
              <td><span class="info-01">张<em class="w2em"></em>力</span></td>
              <td><span class="info-03"><input name="Te34" type="text" id="Te34" readonly></span>张</td>
              <td id="srfsSelLblzl"><1/3张</td>
            </tr>
            <tr>
              <td><span class="info-01">氨 基 酸</span></td>
              <td><span class="info-03"><input name="Te35" type="text" id="Te35" readonly></span>g/(kg·d)</td>
              <td>≤4.0/(kg·d)</td>
            </tr>
            <tr>
              <td valign="top"><span class="info-01">脂 肪 乳</span></td>
              <td valign="top"><span class="info-03"><input name="Te36" type="text" id="Te36" readonly></span>g/(kg·d)</td>
              <td>≤3.0/(kg·d)<br>败血症急性期、血小板减少时,<2<br>严重高胆红素血症时,<1g/(kg·d)</td>
            </tr>
          </table>
        </div>
      </div>
      </div>
      <div class="tc calculator-btn"><a class="btn-03" onClick="savePrt();">保存草稿</a><a class="btn-03" onClick="checkAndProc();">计算</a><a class="btn-03 ans">使用说明</a><span id="proingLbl" style="display:block">计算中...</span></div>
    </div>
    <div class="popup-mess">
      <div class="popup-head">使用说明<a class="popup-close">X</a></div>
      <div class="popup-bd">1.静脉营养输注方式可选择：“外周静脉”或“中心静脉”。<br />
2.PN以外液量包括：全天内需输注的PN以外的其他静脉液量,不包括奶量。<br />
3.可选择足月儿奶或早产儿奶等，及喂养次数q3h、q2h、q1h、q4h、q6h。<br />
	HMF为母乳强化剂，以含能量3.47Kcal/包计算。<br />
4.氨基酸可选择：0、1、1.5、2、2.5、3、3.5、4g/(kg·d)。<br />
5.脂肪乳可选择：0、0.5、1、1.5、2、2.5、3g/(kg·d)。<br />
6.静脉营养液中的的葡萄糖，高浓度的可选择25%或50%的葡萄糖，<br />
	低浓度的可选择5%或10%的葡萄糖。<br />
7.水溶性维生素和脂溶性维生素可根据情况，若不需要可在前面绿色单元格内选<br />
	择“无”；不选择“无”时，则默认为需要。<br />
8.在用外周静脉输注营养液时，小儿复方氨基酸由系统自动设定最高浓度为3%。<br />
9.在用外周静脉输注营养液时，氯化钠由系统自动设定最高张力为1/3张。<br />
10.氯化钾在静脉营养液中由系统自动设定最高浓度为0.3%。<br />
11.10%葡萄糖酸钙注射液：按体重	2	ml/kg计算。<br />
12.甘油磷酸钠针：按体重 0.4	ml/kg计算。<br />
13.在用PICC时，当泵速≤2ml/h时，系统会自动加用肝素1U/ml,总量<20U/(kg·d)。<br /><br />
鸣谢：<br />河南南乐县人民医院新生儿科马鸿雁老师<br />复旦大学附属儿科医院	
	</div>
      <div class="popup-btn"><a>知道了</a></div>
    </div>
    
</form>

    <script type="text/javascript" src="__STATIC__/js/jquery-1.7.1-min.js"></script>
    <script type="text/javascript" src="__STATIC__/js/script.js"></script>
</body>

<script type="text/javascript" type="text/javascript">
	var myTag = 0;
	var jsonDatas = new Array();
	
	function initYWSSData(){
		Combo1OnChange();
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
	
	function Combo1OnChange(){
		var ywjlselectIndex = $("#Combo1 ").get(0).selectedIndex;

		var srfsSelChgArr = new Array();
		srfsSelChgArr[0] = "渗透压<800mOsm/L|渗透压<2000mOsm/L";
		srfsSelChgArr[1] = "<12.5%|<25%";
		srfsSelChgArr[2] = "<1/3张|";
		$("#srfsSelLblsty").html(srfsSelChgArr[0].split("|")[ywjlselectIndex]);
		$("#srfsSelLbltnd").html(srfsSelChgArr[1].split("|")[ywjlselectIndex]);
		$("#srfsSelLblzl").html(srfsSelChgArr[2].split("|")[ywjlselectIndex]);

		if (ywjlselectIndex == 0) {
			$("#pttsgz").hide();
			$("#gylsnz").hide();
			$("#wlysz").hide();
			$("#gsz").hide();
		} else {
			$("#pttsgz").show();
			$("#gylsnz").show();
			$("#wlysz").show();
			$("#gsz").show();
		}


		checkAndProc();
		
	}
	
	function setProcResult(){
		$("#Te6").val(jsonDatas[0]);
		$("#Te10").val(jsonDatas[1]);
		$("#Te12").val(jsonDatas[2]);
		$("#Te12").css("color",jsonDatas[3]);
		$("#Te13").val(jsonDatas[4]);
		$("#Te13").css("color",jsonDatas[5]);
		$("#Te14").val(jsonDatas[6]);
		$("#Te15").val(jsonDatas[7]);
		$("#Te16").val(jsonDatas[8]);
		$("#Te17").val(jsonDatas[9]);
		$("#Te18").val(jsonDatas[10]);
		$("#Te19").val(jsonDatas[11]);
		$("#Te20").val(jsonDatas[12]);
		$("#Te21").val(jsonDatas[13]);
		$("#Te22").val(jsonDatas[14]);
		$("#Te23").val(jsonDatas[15]);
		$("#Te26").val(jsonDatas[16]);
		$("#Te26").css("color",jsonDatas[17]);
		$("#Te27").val(jsonDatas[18]);
		$("#Te28").val(jsonDatas[19]);
		$("#Te28").css("color",jsonDatas[20]);
		$("#Te29").val(jsonDatas[21]);
		$("#Te30").val(jsonDatas[22]);
		$("#Te31").val(jsonDatas[23]);
		$("#Te32").val(jsonDatas[24]);
		$("#Te32").css("color",jsonDatas[25]);
		$("#Te33").val(jsonDatas[26]);
		$("#Te33").css("color",jsonDatas[27]);
		$("#Te34").val(jsonDatas[28]);
		$("#Te35").val(jsonDatas[29]);
		$("#Te35").css("color",jsonDatas[30]);
		$("#Te36").val(jsonDatas[31]);
	}
	
	function goProcCal(){
		
		
		var jsonUrl = 'http://45.121.52.57:3002/pnjsq.asp?';
		var jsonPams = 'a='+$("#Combo1").val()+'&b='+$("#Te2").val()+'&c='+$("#Combo2").val()+'&d='+$("#Te3").val()+'&e='+$("#Combo5").val()+'&f='+$("#Te4").val()+'&g='+$("#Te5").val()+'&h='+$("#Combo3").val()+'&i='+$("#Combo4").val()+'&j='+$("#Te7").val()+'&k='+$("#Te8").val()+'&l='+$("#Te9").val()+'&m='+$("#Te11").val()+'&n='+$("#Combo6").val()+'&o='+$("#Combo7").val()+'&p='+$("#Combo8").val()+'&q='+$("#Combo10").val()+'&r='+$("#Combo12").val()+'&s='+$("#Combo11").val();
		myTag = 0;
		
		$("#proingLbl").show();
		
		$.ajax({  
		     type:'post',
		     url:jsonUrl+jsonPams,
		     data:{},
		     cache:false,  
		     dataType:'JSONP',
		     jsonpCallback:"success_jsonp",
		     success:function(data){  
		     			//alert(data['datas'][0]['gs']);
		     			jsonDatas[0] = data['datas'][0]['a'];
		     			jsonDatas[1] = data['datas'][0]['b'];
		     			jsonDatas[2] = data['datas'][0]['c'];
		     			jsonDatas[3] = data['datas'][0]['d'];
		     			jsonDatas[4] = data['datas'][0]['e'];
		     			jsonDatas[5] = data['datas'][0]['f'];
		     			jsonDatas[6] = data['datas'][0]['g'];
		     			jsonDatas[7] = data['datas'][0]['h'];
		     			jsonDatas[8] = data['datas'][0]['i'];
		     			jsonDatas[9] = data['datas'][0]['j'];
		     			jsonDatas[10] = data['datas'][0]['k'];
		     			jsonDatas[11] = data['datas'][0]['l'];
		     			jsonDatas[12] = data['datas'][0]['m'];
		     			jsonDatas[13] = data['datas'][0]['n'];
		     			jsonDatas[14] = data['datas'][0]['o'];
		     			jsonDatas[15] = data['datas'][0]['p'];
		     			jsonDatas[16] = data['datas'][0]['q'];
		     			jsonDatas[17] = data['datas'][0]['r'];
		     			jsonDatas[18] = data['datas'][0]['s'];
		     			jsonDatas[19] = data['datas'][0]['t'];
		     			jsonDatas[20] = data['datas'][0]['u'];
		     			jsonDatas[21] = data['datas'][0]['v'];
		     			jsonDatas[22] = data['datas'][0]['w'];
		     			jsonDatas[23] = data['datas'][0]['x'];
		     			jsonDatas[24] = data['datas'][0]['y'];
		     			jsonDatas[25] = data['datas'][0]['z'];
		     			jsonDatas[26] = data['datas'][0]['z0'];
		     			jsonDatas[27] = data['datas'][0]['z1'];
		     			jsonDatas[28] = data['datas'][0]['z2'];
		     			jsonDatas[29] = data['datas'][0]['z3'];
		     			jsonDatas[30] = data['datas'][0]['z4'];
		     			jsonDatas[31] = data['datas'][0]['z5'];
		     			for(var i=0; i<jsonDatas.length; i++) {
		     				var tmpstr = jsonDatas[i];
		     				if (tmpstr.indexOf("(") != -1) {
		     					tmpstr = tmpstr.replace("(","");
		     					tmpstr = tmpstr.replace(")","");
		     					jsonDatas[i] = "-"+tmpstr;
		     				}
		     			}
		     			myTag = 2;
		     			setProcResult();
		     			$("#proingLbl").hide();
		      },  
		      error:function(){
		      	myTag = 1;
		      	$("#proingLbl").hide();
		      	alert('参数输入错误');
		      }
		});
	}
	
	function checkAndProc(){
		if ($("#Te2").val() != '' && $("#Te3").val() != '' && $("#Te4").val() != '' && $("#Te5").val() != '') {
				goProcCal();
		}
	}
	
	function savePrt(){
		
		
		
		
		
		if (myTag == 2) {
			//这里提交保存草稿的代码
			if($("#Te1").val() == '') {
				alert("请输入姓名/床号");
				return;
			}
			var localStorage = window.localStorage;
			var mobile       = localStorage.getItem("mobile");
			 var d = {'mobile':mobile};
			 var t = $('form').serializeArray();
			 $.each(t, function() {
			    d[this.name] = this.value;
			 });
			
			
		 	$.ajax({ url: "/home/index/savepn", data:d, success: function(result){
				if(result==0){
			
					alert("保存成功");
				}
				else{
					alert('异常');
				}
	          }});
		
		 	return;
			
		} else {
			//不符合保存草稿的要求
			alert("请计算正确的值后再保存草稿");
			return;
		}
		
	}
	
	$("#proingLbl").hide();
	
	initYWSSData();
	//alert(YWJLCalStrArr$[0]);
</script>

</html>