<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看我的文件</title>
<style>
#myTab {
	margin-left: 220px;
	margin-top: -550px;
	width: 700px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<table id="myTab" border="1px">
		<tr style="background-color: #0000FF; color: yellow;">
			<td style="width:80px;">文件标题</td>
			<td style="width:80px;">文件名称</td>
			<td style="width:80px;">文件类型</td>
			<td style="width:80px;">存储路径</td>
		</tr>
		<%
			Bean bean = new Bean();
			String username = (String) request.getSession().getAttribute(
					"username");
			String sql = "select * from file where username='" + username + "'";
			ResultSet rs = bean.query(sql);
			while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>