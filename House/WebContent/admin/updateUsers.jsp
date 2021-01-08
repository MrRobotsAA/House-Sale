<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
        <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
    <form method="post" class="form-x" action="updateUsers2" modelAttribute="users">  
      <input type="hidden" name="uid" value="${users.uid}">
      <div class="form-group">
        <div class="label">
          <label>账号：</label>
        </div>
        <div class="field">
          <input type="text" class="input"  name="uname" value="${users.uname}" data-validate="required:请输入用户名" />
         
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>密码：</label>
        </div>
        <div class="field">
          <input type="text" class="input"   name="upass"  value="${users.upass}" data-validate="required:请输入密码" />
        
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>等级：</label>
        </div>
        <div class="field">
        
	    <select name="usercate" style="width: 900px;height: 55px">
	    <c:forEach items="${users.usercate}" var="s">
	       <c:if test="${users.usercate == 'common'}">
	       <option  selected="selected" value="common">common</option>
	       </c:if>     
	       <c:if test="${users.usercate != 'common' }">
	       <option  value="common">common</option>
	       </c:if>  
	       <c:if test="${users.usercate == 'VIP' }">
	       <option  selected="selected" value="VIP">VIP</option>
	       </c:if>
	        <c:if test="${users.usercate != 'VIP' }">
	       <option   value="vip">VIP</option>
	       </c:if>
	    
	    </c:forEach>
	    </select>
        
        
        
      <%--      <select path="usercate" name="usercate" value="" >
		      <option ${users.usercate} value ="common">common</option>
		      <option value ="vip">VIP</option>
	    	</select> --%>
        
  <!--         <input type="text"  class="input"   name="usercate" "  /> -->
        
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input"   name="telephone" value="${users.telephone}" data-validate="required:请输入联系电话" />
         
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