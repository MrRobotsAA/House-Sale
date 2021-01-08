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
<title>用户信息管理</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel-head"><strong class="icon-reorder"> 用户信息管理</strong></div>
  <table class="table table-hover text-center" style="width: 100%">
    <tr>
      <th>用户ID</th>
      <th>用户账号</th>
      <th>用户密码</th>
      <th>用户等级</th>
      <th>用户电话</th>
      <th>操作</th>
    </tr>
      <c:forEach items="${Users}" var="u">
	         <tr>
	            <td>${u.uid }</td>
	            <td>${u.uname }</td>  
	            <td>${u.upass }</td>   
	            <td>${u.usercate }</td>   
	            <td>${u.telephone }</td>          
	             <td><div class="button-group"><a href="deleteUsersByID?uid=${u.uid}" onclick="return confirm('确定要删除吗！')" class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>
	         </tr>
	    </c:forEach>
    </table>

</body>
</html>
