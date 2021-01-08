<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>操作失败</title>
<script type="text/javascript">
  function error(){
	  alert("操作失败");
	  window.history.back(-1);
  }
</script>
</head>
<body onload="error()">
</body>
</html>