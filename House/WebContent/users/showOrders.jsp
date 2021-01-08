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
<title>销售记录</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel-head"><strong class="icon-reorder"> 销售记录</strong></div>
  <table class="table table-hover text-center" style="width: 100%">
    <tr>
      <th>房屋名称</th>
      <th>房屋图片</th>
      <th>所在小区</th>
      <th>销售价钱</th>
      <th>交易时间</th>
      <th>分期月数</th>
      <th>审核状态</th>
      
    </tr>
      <c:forEach items="${orders}" var="o">
	         <tr>
	            <td>${o.hname }</td>  
	            <td><img src='images/${o.photo }' style="width: 100px;height: 100px"></td> 
	           <td>${o.village }</td>   
	            <td>${o.price }</td>    
	            <td>${o.wj }</td>  
	            <td>${o.nums }</td>    
	            <td>${o.status1 }</td>                        
	             <%-- <td><div class="button-group"><a href="deleteOrdersByID?oid=${o.oid}" onclick="return confirm('确定要删除吗！')" class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>
	          --%>
	         </tr>
	    </c:forEach>
    </table>

</body>
</html>
