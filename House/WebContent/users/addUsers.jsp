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
<title>用户注册</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>

<body>
<div class="panel admin-panel">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>用户注册</strong></div>
  <div class="body-content">
    <form:form method="post" class="form-x" action="addUsers" modelAttribute="users">  
      <div class="form-group">
        <div class="label">
          <label>账号：</label>
        </div>
        <div class="field">
          <form:input type="text" class="input"   path="uname"  />
          <form:errors path="uname"></form:errors>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <form:input type="text" class="input"   path="upass"  />
          <form:errors path="upass"></form:errors>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>等级：</label>
        </div>
        <div class="field" disabled>
          <form:input  type="text" class="input"   path="usercate" readonly="true"  value="common"/>
          <form:errors path="usercate"></form:errors>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <form:input type="text" class="input"   path="telephone"  />
          <form:errors path="telephone"></form:errors>
          <div class="tips"></div>
        </div>
      </div>
      
     
        <div style="padding-left: 40%;" class="field">
          <button class="button bg-main icon-check-square-o" type="submit">注册</button>
          <button class="button bg-main icon-check-square-o" type="reset"> 取消</button>
        </div>
      </div>
    </form:form>
  </div>

      
</body>
</html>