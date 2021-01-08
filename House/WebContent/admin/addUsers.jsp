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
<title>增加用户</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>

</head>
<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加用户</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="addUsers2" enctype="multipart/form-data">  
     
      <div class="form-group">
        <div class="label">
          <label>用户名：</label>
        </div>
        <div class="field">
          <input type="text" class="input"  value="" name="uname" path="uname"   />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户密码：</label>
        </div>
        <div class="field">
          <input type="password" class="input"  value="" name="upass" path="upass"  />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>用户等级：</label>
        </div>
         <div class="field">
          <select path="usercate" name="usercate" >
		  <option value ="common">普通用户</option>
		  <option value ="vip">VIP用户</option>
		</select>
        <div class="tips"></div>
      </div>
        </div>
      <div class="form-group">
        <div class="label">
          <label>用户电话：</label>
        </div>
        <div class="field">
        
          <input type="text" class="input"  value="" name="telephone"  />
          <div class="tips"></div>
        </div>
      </div>
     
   
        <div style="padding-left: 40%;" class="field">
          <button class="button bg-main icon-check-square-o" type="submit">保存</button>
          <button class="button bg-main icon-check-square-o" type="reset"> 取消</button>
        </div>
      </div>
    </form>
  </div>
</body>
</html>