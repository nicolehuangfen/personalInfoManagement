<%@ page language="java" contentType="text/html; charset=UTF-8" import="com.cn.hf.bean.*,java.sql.ResultSet"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看页面</title>
<style>
#myTab {
	margin-left: 300px;
	margin-top: -400px;
	padding: 0px;
	width:600px;
/* 	height: 200px; */
}
</style>
</head>
<body>
	<form action="" method="post">
		<table id="myTab" border="1px">
			<tr style="background-color: #0000FF; color: yellow;">
				<td>日程日期</td>
				<td>日程内容</td>
			</tr>
			<%
				Bean bean = new Bean();
				String username = (String)request.getSession().getAttribute("username");
				String sql = "select * from date where username='"+username+"'";
				ResultSet rs = bean.query(sql);
				while(rs.next()){
			%>
			<tr>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			</tr>
			<%} %>
		</table>
	</form>
</body>
</html>