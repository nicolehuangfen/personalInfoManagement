<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载文件</title>
<style>
#myTab {
	margin-left: 250px;
	margin-top: -550px;
	width: 700px;
	background-color: #EEE8CD;
}

#aa {
	text-decoration: none;
	display: inline;
}
</style>
</head>
<body>
	<s:form action="/file/fileDownload">
		<table id="myTab">
			<tr>
				<td style="color: blue">文件下载</td>
			</tr>
			<tr>
				<!-- 			<td><a id="aa" href="fileDownload.action">单击此处下载图片</a></td> -->
				<td>请输入文件要下载的文件标题</td>
				<td><input type="text" name="title" /><input type="submit" value="下载"></td>
			</tr>
		</table>
	</s:form>
</body>
</html>