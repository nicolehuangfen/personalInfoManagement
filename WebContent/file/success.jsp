<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>成功页面</title>
<style>
#myTab {
	margin-left: 230px;
	margin-top: -550px;
	padding: 0px;
	height: 260px;
}
</style>
</head>
<body>
	<table id="myTab">
	<tr><td style="color:blue">文件上传成功！</td></tr>
		<tr>
			<td>文件标题：<s:property value="title" />
			</td>
		</tr>
		<tr>
			<td><img src="<s:property value="'../save/'+uploadFileName"/>" /></td>
		</tr>
	</table>
</body>
</html>