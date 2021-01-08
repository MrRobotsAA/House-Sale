<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>需要登录</title>
<script type="text/javascript">
  function error(){
	  alert("请登录");
	  window.history.back(-1);
  }
</script>
</head>
<body onload="error()">
</body>
</html>