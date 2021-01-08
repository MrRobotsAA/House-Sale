<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="renderer" content="webkit">
<base href="<%=basePath%>">
<style type="text/css">

</style>
<meta charset="UTF-8">
<title>房屋销售系统后台管理界面</title>
    <link rel="stylesheet" href="css/pintuer.css">
    <link rel="stylesheet" href="css/admin.css">
    <script src="js/jquery.js"></script>   
</head>
<body style="background-color:#f1f9fd;">
<div class="header bg-main">
  <div class="logo margin-big-left fadein-top">
    <h1 >房屋销售系统后台管理界面</h1>
  </div>
  <div class="head-l"><a class="button button-little bg-green" href="admin/login.jsp" >切换账号</a> &nbsp;&nbsp;
  	<a class="button button-little bg-red" href="users/home.jsp" >
  		<span class="icon-power-off"></span> 退出登录</a> </div>
</div>
<div class="leftnav">
  <div class="leftnav-title"><strong><span class="icon-list"></span>菜单列表</strong></div>
    <h2><span class="icon-pencil-square-o"></span>房屋管理</h2>
  <ul >
    <li><a href="selectAllSort1" target="right"><span class="icon-caret-right"></span>添加房屋</a></li>
    <li><a href="selectAllHouse" target="right"><span class="icon-caret-right"></span>删除房屋</a></li>
    <li><a href="selectAllHouse1" target="right"><span class="icon-caret-right"></span>修改房屋</a></li>  
  </ul> 
  <!-- <h2><span class="icon-pencil-square-o"></span>房屋状态</h2>
    <ul>
     <li><a href="selectAllHouse3" target="right"><span class="icon-caret-right"></span>状态处理</a></li>  
  </ul>  -->
      <h2><span class="icon-pencil-square-o"></span>户型管理</h2>
 <ul>
    <li><a href="admin/addSort.jsp" target="right"><span class="icon-caret-right"></span>添加户型</a></li> 
    <li><a href="selectAllSort" target="right"><span class="icon-caret-right"></span>删除户型</a></li> 
  </ul>  
  <h2><span class="icon-pencil-square-o"></span>用户管理</h2>
    <ul>
     <li><a href="addUser" target="right"><span class="icon-caret-right"></span>添加用户</a></li>
     <li><a href="changeUsers" target="right"><span class="icon-caret-right"></span>修改用户</a></li>
     <li><a href="selectAllUsers" target="right"><span class="icon-caret-right"></span>删除用户</a></li>  
  </ul>
  <h2><span class="icon-pencil-square-o"></span>销售审核</h2>
    <ul>
     <li><a href="selectAllOrderDetail" target="right"><span class="icon-caret-right"></span>销售审核</a></li> 
     <li><a href="selectAllOrderDetail1" target="right"><span class="icon-caret-right"></span>销售记录</a></li>     
     </ul>  
     
       <h2><span class="icon-pencil-square-o"></span>公告管理</h2>
    <ul>
     <li><a href="admin/addNotice.jsp" target="right"><span class="icon-caret-right"></span>添加公告</a></li>  
     <li><a href="selectAllNotice" target="right"><span class="icon-caret-right"></span>删除公告</a></li>  
       </ul>
       <h2><span class="icon-pencil-square-o"></span>返回前台</h2>
    <ul>
     <li><a href="users/home.jsp" ><span class="icon-caret-right"></span>返回前台</a></li>  
    
       </ul>
</div>
<script type="text/javascript">
$(function(){
  $(".leftnav h2").click(function(){
	  $(this).next().slideToggle(200);	
	  $(this).toggleClass("on"); 
  })
  $(".leftnav ul li a").click(function(){
	    $("#a_leader_txt").text($(this).text());
  		$(".leftnav ul li a").removeClass("on");
		$(this).addClass("on");
  })
  
});


</script>
<ul class="bread">
  <li><a href="admin/home.jsp"  class="icon-home"> 首页</a></li> 
</ul>
<div class="admin" >
  <iframe scrolling="auto" rameborder="0" src="admin/right.jsp" name="right" width="100%" height="100%"></iframe>
</div>
<div style="text-align:center;">
</div>
</body>
</html>