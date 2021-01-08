<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="UTF-8">
<title>更新用户信息</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>

<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>更新用户信息</strong></div>
  <div class="body-content">
    <form method="post" class="form-x" action="updateUsers1" modelAttribute="users">  
      <input type="hidden" name="uid" value="${users.uid}">
      <div class="form-group">
        <div class="label">
          <label>账号：</label>
        </div>
        <div class="field">
          <input type="text" class="input"  disabled="disabled"  name="uname" value="${users.uname}"  />
         
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input"   name="upass"  value="${users.upass}" />
        
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>等级：</label>
        </div>
        <div class="field">
          <input type="text" disabled ="disabled" class="input"   name="usercate" value="${users.usercate}"  />
        
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input"   name="telephone" value="${users.telephone}" />
         
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