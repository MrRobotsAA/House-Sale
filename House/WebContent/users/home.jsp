<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
     <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
 <style type="text/css">
  a{
  text-decoration: none
  }
  </style>
<meta charset="UTF-8">
<title>用户主界面</title>

</head>

<div style="width: 100%;height: 50px;background-color: #fed243;line-height: 50px;font-family: 宋体;text-align:center;">
   <a href="users/home.jsp" style="color:black"><spring:message code="title1"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="updateUsers" target="right" style="color:black"><spring:message code="title2"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="selectAllNotice1" target="right"  style="color:black" ><spring:message code="title3"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="selectOrdersByUid" target="right" style="color:black"><spring:message code="title4"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="users/login.jsp" style="color:black"><spring:message code="title5"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="admin/login.jsp" style="color:black"><spring:message code="title6"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="addUsers1" target="right" style="color:black"><spring:message code="title7"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="tuichu" target="right" style="color:black"><spring:message code="title8"></spring:message></a>&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<div style="width:100%;text-align: center;text-align: right ;">
  <a href="i18n?locale=en_US"><b style="font-family:宋体;color:#000000">[<spring:message code="english"></spring:message>]</b></a>
  <a href="i18n?locale=zh_CN"><b style="font-family:宋体;color:#000000">[<spring:message code="chinese"></spring:message>]</b></a>
</div>
<body style="background-color: #f7f7f7">
<div style="width: 100%;height: 150px;background-color: white">
      <form action="selectHouseByHname" method="post" target="right" style="float: left;margin-left: 50px;margin-top: 10px">
          <input type="text"  placeholder="房屋名称搜索  " name="hname" style="width: 250px;height: 50px;border:1px solid #f1f1f1">
          <input type="submit" value="搜索" style="width: 150px;height: 50px;background-color: #fed243">
      </form>
      <form action="selectHouseByPosition" method="post" target="right" style="float: left;margin-left: 58px;margin-top: 10px">
          <input type="text"  placeholder="地理位置搜索  " name="hname" style="width: 250px;height: 50px;border:1px solid #f1f1f1">
          <input type="submit" value="搜索" style="width: 150px;height: 50px;background-color: #fed243">
      </form>
      <form action="selectHouseByPrice" method="post" target="right" style="float: left;margin-left: 50px;margin-top: 10px">
          <input type="text"  placeholder="价格区间搜索  " name="hname" style="width: 250px;height: 50px;border:1px solid #f1f1f1">
          <input type="submit" value="搜索" style="width: 150px;height: 50px;background-color: #fed243">
      </form>
       <iframe style="width:630px;margin:0 auto;height:80px;margin-left: 50px;margin-top: -10px"  frameborder="0" src="selectAllSort2" ></iframe>
</div>
<div style="width:1300px;margin: 0 auto;margin-top: 5px;">
   <iframe name="right" src="selectAllHouse2" frameborder="0"  width="100%" height="1500" ></iframe>
</div>
</body>
</html>