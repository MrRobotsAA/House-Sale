<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title>公告详情</title>
</head>
<body>
   
	         
	                   <div style="width: 1100px;height:40px;margin-top: 5px;text-align:center;background-color: white;margin-left: 100px;line-height: 40px" >                     
	                            <b style="font-family:宋体;font-size: 45px">${Notice.headings}</b>
	                   </div>
	                    <div style="width: 1100px;height:40px;margin-top: 5px;text-align:center;margin-left: 100px;line-height: 40px" >                     
	                            <b style="font-family:宋体;font-size:18px">${Notice.ntimes}</b>
	                   </div>
	                    <div style="width: 1100px;margin-top: 5px;text-align:left;background-color: white;margin-left: 100px;line-height: 40px" >                     
	                            <b style="font-family:宋体;font-size: 20px">${Notice.mess}</b>
	                   </div>
	                   
	                

</body>
</html>