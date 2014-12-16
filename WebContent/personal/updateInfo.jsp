<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="StyleSheet" href="<%=request.getContextPath()%>/css/left.css"
	type="text/css" />
<title>修改个人信息</title>
<style>
#queryTab {
	margin-left: 300px;
	margin-top: -450px;
	width: 500px;
	height: 300px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}

input {
	background-color: #E8E8E8;
	color: blue;
}
</style>
</head>
<body>
	<s:form action="/personal/update" method="post">
	<%
		Bean bean = new Bean();
		String sql = "select * from user where username='"
				+ request.getSession().getAttribute("username") + "'";
		ResultSet rs = bean.query(sql);
		if (rs.next()) {
	%>
		<table id="queryTab" border="1px">
			<tr style="background-color: #0000FF">
				<td colspan="2"><span
					style="font-size: 20px; color: yellow; padding-left: 200px;">个人详细信息</span>
				</td>
			</tr>
			<tr>
				<td>用户姓名</td>
				<td><input type="text" name="name" value=<%=rs.getString(3)%> /></td>
			</tr>
			<tr>
				<td>用户性别</td>
				<td><input type="text" name="sex" value=<%=rs.getString(4)%> /></td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td><input type="text" name="birthday" value=<%=rs.getString(5)%> /></td>
			</tr>
			<tr>
				<td>用户民族</td>
				<td><input type="text" name="nation" value=<%=rs.getString(6)%> /></td>
			</tr>
			<tr>
				<td>用户学历</td>
				<td><input type="text" name="edu" value=<%=rs.getString(7)%> /></td>
			</tr>
			<tr>
				<td>用户职称</td>
				<td><input type="text" name="work" value=<%=rs.getString(8)%> /></td>
			</tr>
			<tr>
				<td>用户电话</td>
				<td><input type="text" name="telephone" value=<%=rs.getString(9)%> /></td>
			</tr>
			<tr>
				<td>家庭住址</td>
				<td><input type="text" name="address" value=<%=rs.getString(10)%> /></td>
			</tr>
			<tr>
				<td>用户邮箱</td>
				<td><input type="text" name="email" value=<%=rs.getString(11)%> /></td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="修改"></td>
			</tr>
		</table>
			<%
		}
	%>
	</s:form>
</body>
</html>