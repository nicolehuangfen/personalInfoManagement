<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>上传文件</title>
<style>
#myTab {
	margin-left: 300px;
	margin-top: -450px;
	padding: 0px;
}
</style>
</head>
<body>
	<s:form action="/file/up" enctype="multipart/form-data">
		<table id="myTab">
			<tr>
				<td><s:textfield name="title" label="文件标题" /></td>
			</tr>
			<tr>
				<td><s:file name="upload" label="选择文件" /></td>
			</tr>
			<tr>
				<td colspan="2"><s:submit value="上传" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>