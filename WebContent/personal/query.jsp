<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.cn.hf.bean.*,java.sql.ResultSet"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="StyleSheet" href="<%=request.getContextPath() %>/css/left.css" type="text/css" />
<title>查看个人信息</title>
<style>
#queryTab{
	margin-left:300px;
	margin-top:-450px;
	width:500px;
	height:300px;
	background-color:#EEE8CD;
	border:2px solid blue;
}
</style>

</head>
<body>
	<form action="" method="post">
	<%
	 Bean bean = new Bean();
	String sql = "select * from user where username='"+request.getSession().getAttribute("username")+"'";
	ResultSet rs = bean.query(sql);
	if(rs.next()){
	%>
		<table id="queryTab" border="1px">
		<tr style=" background-color:#0000FF">
		<td colspan="2">
		<span style="font-size:20px;color:yellow;padding-left:200px;">个人详细信息</span>
		</td>
		</tr>
			<tr>
				<td>用户姓名</td>
				<td><%=rs.getString(3) %></td>
			</tr>
			<tr>
				<td>用户性别</td>
				<td><%=rs.getString(4) %></td>
			</tr>
			<tr>
				<td>出生日期</td>
				<td><%=rs.getString(5) %></td>
			</tr>
			<tr>
				<td>用户民族</td>
				<td><%=rs.getString(6) %></td>
			</tr>
			<tr>
				<td>用户学历</td>
				<td><%=rs.getString(7) %></td>
			</tr>
			<tr>
				<td>用户职称</td>
				<td><%=rs.getString(8) %></td>
			</tr>
			<tr>
				<td>用户电话</td>
				<td><%=rs.getString(9) %></td>
			</tr>
			<tr>
				<td>家庭住址</td>
				<td><%=rs.getString(10) %></td>
			</tr>
			<tr>
				<td>用户邮箱</td>
				<td><%=rs.getString(11) %></td>
			</tr>

		</table>
		<%} %>
	</form>
</body>
</html>