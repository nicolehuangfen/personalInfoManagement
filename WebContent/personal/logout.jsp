<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>退出登录</title>
<style>
#mydiv {
	margin-left: 250px;
	margin-top: -400px;
	width: 700px;
	color: #0000CD;
}
#mydiv a{
text-decoration:none;
color:blue;
border:none;
display:inline;
padding:0px;
color:red;
font-size:20px;
}
</style>
</head>
<body>
	<form action="" method="post">
		<div id="mydiv">
			退出成功！
			<%request.getSession().removeAttribute("username");
			%> 点击<a href="../LogAndReg/login.jsp">这里</a>重新登录！
		</div>
	</form>
</body>
</html>