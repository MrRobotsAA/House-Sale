<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>房屋收回</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel-head"><strong class="icon-reorder"> 房屋状态修改</strong></div>
  <table class="table table-hover text-center" style="width: 100%">
    <tr>
      <th>房屋ID</th>
      <th>房屋图片</th>
      <th>房屋名称</th>
      <th>房屋面积</th>
      <th>出售状态</th>
      <th>操作</th>
    </tr>
      <c:forEach items="${House}" var="h">
	         <tr>
	            <td>${h.hid }</td>
	            <td><img src='images/${h.photo }' style="width: 100px;height: 100px"></td> 
	            <td>${h.hname }</td>  
	            <td>${h.housearea }</td>   
	            <td>${h.state }</td>                
	             <td><div class="button-group">
	             <a class="button border-main" href="updateHouseByID2?hid=${h.hid}" onclick="return confirm('确定将状态修改为未售出吗！')"><span class="icon-edit"></span>修改</a>
	            </div></td>
	         </tr>
	    </c:forEach>
    </table>

</body>
</html>
