<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>

<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>房屋详情</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
	         
	                   <div style="width: 1100px;margin-top: 5px;text-align:center;background-color: white;margin-left: 100px" >
	                     
	                      <img src='images/${House.photo}' style="width: 300px;height: 230px;float: left;"><br>
	                      <div style="width: 800px;height: 220px;float: left;">
	                      
	                      <b style="font-family: 宋体;color:red">${House.price}元/平米</b><br><br>
	                      <b style="font-family: 宋体;">${House.hname}</b><br><br>
	                      <b style="font-family: 宋体;">面积：${House.housearea}</b>&nbsp;&nbsp;&nbsp;
	                      <b style="font-family: 宋体;">分期月数：${House.housezlc}</b>&nbsp;&nbsp;&nbsp;
	                      <b style="font-family: 宋体;">所在楼层：${House.houseszlc}</b><br><br>
	                      <b style="font-family:宋体">小区名称：${House.village}</b><br><br>
	                      <b style="font-family:宋体">小区地址：${House.address}</b><br><br>
	                      <b style="font-family:宋体">房源介绍：${House.introd}</b><br><br>
	                      
	                       </div>
	                   </div>
<div class="panel admin-panel" style="clear: left; ">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>购买</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" id="sysManager-tel-save-submit" onsubmit="return cheack();" action="addOrders"  > 
    <input type="hidden" class="input"  name="price" value='${House.price}'   />
    <input type="hidden" class="input"  name="hid"  value='${House.hid}' />
      <div class="form-group">
        <div class="label">
          <label>联系人：</label>
        </div>
        <div class="field">
          <input type="text" class="input"  name="username"  data-validate="required:请输入联系人" />
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>联系电话：</label>
        </div>
        <div class="field">
          <input type="number" class="input" id="telephone" name="telephone" data-validate="required:请输入联系电话"  />
        <span id="telephonespan" style= "display: none; color: red;" >请输入有效的联系电话！</span>
        </div>
      </div>
       <div class="form-group">
        <div class="label">
          <label>身份证号：</label>
        </div>
        
        <div class="field">
          <input type="text" id="sysManager-user-RealNameInfo-add-tel"  class="input"  name="idcard"  />
       	<span id="phonespan" style= "display: none; color: red;" >请输入有效的身份证号码！</span>
        </div>
   </div>
      <c:set  var="temp"></c:set>
  

      <div class="form-group">
        <div class="label">
          <label>分期月数：</label>
        </div>
        <div class="field">
        <c:if test= "${users.usercate=='VIP'}" > <input type="text" class="input"   onfocus="this.blur()" name="nums" value = ${House.housezlc-1} data-validate="required:请输入分期月数1"  /></c:if>
        <c:if test= "${users.usercate!='VIP'}" > <input type="text" class="input"   onfocus="this.blur()" name="nums" value = ${House.housezlc} data-validate="required:请输入分期月数2"  /></c:if>
        </div>
      </div>
      
        <div style="padding-left: 40%;" class="field">
          <button class="button bg-main icon-check-square-o" type="submit">确定</button>
          <button class="button bg-main icon-check-square-o" type="reset"> 取消</button>
        </div>
 
 
   </form>
 </div>
 
 </div>
 <script type="text/javascript">
//身份证号码的验证方法
function checkNumber(idNumber){
//验证身份证号码的正则表达式
 var Reg =/(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;	
	var res = Reg.test(idNumber);
	return res;
}
function checkPhone(){ 
    var phone = document.getElementById('telephone').value;
    if(!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(phone))){ 
        alert("手机号码有误，请重填");  
        return false; 
    } 
}
//验证身份证号码
function idCard() {
	var idNumberEle =$("#sysManager-user-RealNameInfo-add-tel").val();
	/* alert(idNumberEle); */
	var res = checkNumber(idNumberEle);
	if(res){
		$("#phonespan").hide();		
	}else{
		$("#phonespan").show();			
	}	
}
function IdentityCodeValid(code) {
    var city={11:"北京",12:"天津",13:"河北",14:"山西",15:"内蒙古",21:"辽宁",22:"吉林",23:"黑龙江 ",31:"上海",32:"江苏",33:"浙江",34:"安徽",35:"福建",36:"江西",37:"山东",41:"河南",42:"湖北 ",43:"湖南",44:"广东",45:"广西",46:"海南",50:"重庆",51:"四川",52:"贵州",53:"云南",54:"西藏 ",61:"陕西",62:"甘肃",63:"青海",64:"宁夏",65:"新疆",71:"台湾",81:"香港",82:"澳门",91:"国外 "};
    var tip = "";
    var pass= true;

    if(!code || !/^\d{6}(18|19|20)?\d{2}(0[1-9]|1[012])(0[1-9]|[12]\d|3[01])\d{3}(\d|X)$/i.test(code)){
        tip = "身份证号格式错误";
        pass = false;
    }

   else if(!city[code.substr(0,2)]){
        tip = "地址编码错误";
        pass = false;
    }
    else{
        //18位身份证需要验证最后一位校验位
        if(code.length == 18){
            code = code.split('');
            //∑(ai×Wi)(mod 11)
            //加权因子
            var factor = [ 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2 ];
            //校验位
            var parity = [ 1, 0, 'X', 9, 8, 7, 6, 5, 4, 3, 2 ];
            var sum = 0;
            var ai = 0;
            var wi = 0;
            for (var i = 0; i < 17; i++)
            {
                ai = code[i];
                wi = factor[i];
                sum += ai * wi;
            }
            var last = parity[sum % 11];
            if(parity[sum % 11] != code[17]){
                tip = "校验位错误";
                pass =false;
            }
        }
    }
    if(!pass) alert(tip);
    return pass;
}
//身份证号码不合法不能提交
function cheack() {
	//alert("11");
	var idNumberEle =$("#sysManager-user-RealNameInfo-add-tel").val();
/* 	var res = checkNumber(idNumberEle); */
	 var res= IdentityCodeValid(idNumberEle);
/* 	alter(idNumberEle); */
	var res2 = checkPhone();
	if(res && res2){	
	 	alert('验证成功'); 
		$("#phonespan").hide();
		$("#telephonespan").hide();
		return res;	
	}else{
		/* alert('输入错误!'); */
		if(!res)
		$("#phonespan").show();	
		if(!res2)
		$("#telephonespan").show();	
		return res&&res2;
	}
	
}
 
</script>
</body>
</html>