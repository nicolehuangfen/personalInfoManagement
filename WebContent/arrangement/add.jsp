<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加日程</title>
<style>
#mydiv {
	margin-left: 300px;
	margin-top: -400px;
	padding: 0px;
	height: 260px;
}
</style>
</head>
<body>
	<s:form action="/arrangement/add" method="post">
		<table id="mydiv">
			<tr>
				<td><s:textfield name="date" label="日程时间" style="background-color: #FFF68F"/></td>
			</tr>
			<tr>
				<td><s:textarea name="content" cols="36" rows="10" style="background-color: #FFF68F"/></td>
			</tr>
			<tr>
				<td><s:submit id="submit" value="添加" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>