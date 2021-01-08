<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>

<base href="<%=basePath%>">
<meta charset="UTF-8">
<title>房源信息</title>
</head>
<body>
    <c:forEach items="${House}" var="h">
	         
	                   <div style="width: 1100px;height:240px;margin-top: 5px;text-align:center;background-color: white;margin-left: 100px" >
	                     
	                      <img src='images/${h.photo}' style="width: 300px;height: 230px;float: left;"><br>
	                      <div style="width: 800px;height: 220px;float: left;">
	                      
	                      <b style="font-family: 宋体;color:red">${h.price}元/平米</b><br><br>
	                      <b style="font-family: 宋体;">${h.hname}</b><br><br>
	                      <b style="font-family: 宋体;">面积：${h.housearea}</b>&nbsp;&nbsp;&nbsp;
	                      <b style="font-family: 宋体;">分：${h.housezlc}</b>&nbsp;&nbsp;&nbsp;
	                      <b style="font-family: 宋体;">所在楼层：${h.houseszlc}</b><br><br>
	                      <b style="font-family:宋体">小区名称：${h.village}</b><br><br>
	                       <a href="selectHouseByID1?hid=${h.hid}"  style="display:block;width:800px;height:40px;background-color:#fed243;font-family: 黑体;text-decoration: none;text-align: center;line-height: 40px;color:#000000">
	                             详情
	                        </a>
	                       </div>
	                   </div>
	                
	            
	    </c:forEach>
</body>
</html>