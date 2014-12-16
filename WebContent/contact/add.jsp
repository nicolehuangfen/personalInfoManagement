<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>增加联系人</title>
<style>
#myTab {
	margin-left: 300px;
	margin-top: -450px;
	width: 500px;
	height: 300px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<s:form action="/contact/add" method="post">
		<table id="myTab" border="1px">
			<tr>
				<td colspan="2" style="padding-left:200px;background-color:#0000FF;color:yellow">添加联系人</td>
			</tr>
			<tr>
				<td><s:textfield name="friendName" label="联系人姓名" /></td>
			</tr>
			<tr>
				<td><s:textfield name="telephone" label="联系电话" /></td>
			</tr>
			<tr>
				<td><s:textfield name="email" label="邮箱" /></td>
			</tr>
			<tr>
				<td><s:textfield name="workplace" label="工作场所" /></td>
			</tr>
			<tr>
				<td><s:textfield name="address" label="家庭住址" /></td>
			</tr>
			<tr>
				<td><s:textfield name="QQ" label="QQ" /></td>
			</tr>
			<tr>
				<td><s:submit value="添加" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>