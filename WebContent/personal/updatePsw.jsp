<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<style>
#myTab {
	margin-left: 300px;
	margin-top: -450px;
	width: 300px;
	height: 200px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<s:form action="/personal/updatePsw" method="post">
		<table id="myTab" border="1px;">
			<tr>
				<td><s:textfield name="password" label="请输入原密码" /></td>
			</tr>
			<tr>
				<td><s:textfield name="newpassword" label="请输入新密码" /></td>
			</tr>
			<tr>
				<td><s:textfield name="renewpassword" label="请再次输入新密码" /></td>
			</tr>
			<tr>
				<td><s:submit value="修改" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>