<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="StyleSheet" href="<%=request.getContextPath() %>/css/LogAndReg.css" type="text/css" />
<title>用户登录界面</title>
</head>
<body>
	<s:form action="/a/login" method="post">
		<div id="head">个人信息管理系统<hr></div>
		<table id="loginTab">
			<tr>
				<td><s:textfield name="username" label="用户名" size="18" /></td>
			</tr>
			<tr>
				<td><s:password name="password" label="密           码" size="19" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="登录" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					type="reset" value="重置" />
				</td>
			</tr>
			<tr>
				<td colspan="2"><s:a href="LogAndReg/register.jsp">注册</s:a></td>
			</tr>
		</table>
	</s:form>
</body>
</html>
