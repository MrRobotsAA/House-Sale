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
<title>删除房屋户型</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel-head"><strong class="icon-reorder"> 删除房屋户型</strong></div>
  <table class="table table-hover text-center" style="width: 100%">
    <tr>
      <th >户型ID</th>
      <th>户型名称</th>
      <th>操作</th>
    </tr>
      <c:forEach items="${Sort}" var="s">
	         <tr>
	            <td>${s.sid }</td>
	            <td>${s.sname }</td>         
	             <td><div class="button-group"><a href="deleteSortByID?sid=${s.sid}" onclick="return confirm('确定要删除吗！')" class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>
	         </tr>
	    </c:forEach>
    </table>

</body>
</html>
