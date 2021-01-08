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
<title>删除公告信息</title>
<link rel="stylesheet" href="css/pintuer.css">
<link rel="stylesheet" href="css/admin.css">
<script src="js/jquery.js"></script>
<script src="js/pintuer.js"></script>
</head>
<body>
<div class="panel-head"><strong class="icon-reorder"> 删除公告信息</strong></div>
  <table class="table table-hover text-center" style="width: 100%">
    <tr>
      <th>公告ID</th>
      <th>公告标题</th>
      <th>发布时间</th>
      <th>操作</th>
    </tr>
      <c:forEach items="${Notice}" var="n">
	         <tr>
	             <td>${n.nid }</td>
	            <td>${n.headings }</td>
	            <td>${n.ntimes }</td>         
	             <td><div class="button-group"><a href="deleteNoticeByID?nid=${n.nid}" onclick="return confirm('确定要删除吗！')" class="button border-red" href="javascript:void(0)" onclick="return del(1,2)"><span class="icon-trash-o"></span> 删除</a> </div></td>
	         </tr>
	    </c:forEach>
    </table>

</body>
</html>
