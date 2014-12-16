<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除日程</title>
<script type="text/javascript">
	function changeSubmit() {
		var form = document.forms[0];
		form.action = "../arrangement/delete";
		form.submit();
	}
</script>
<style>
#updateDiv {
	margin-left: 300px;
	margin-top: -450px;
	padding: 0px;
	width: 600px;
}

#submitInp {
	margin-left: 0px;
	margin-top: -20px;
}

#updateInp {
	margin-top: 10px;
}

#a {
	color: black;
}

#myTab {
	margin-left: 230px;
	margin-top: -400px;
	width: 600px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<s:form action="/arrangement/inputDate1" method="post">
		<div id="updateDiv">
			<span id="a">请输入要删除日程日期：</span><input type="text" id="updateInp"
				name="inputDate" /> <input id="submitInp" type="submit"
				value="提交">
		</div>
		<%
			Bean bean = new Bean();
		String username = (String)request.getSession().getAttribute("username");
		String date = request.getParameter("inputDate");
		String sql = "select * from date where username='"+username+"' and date='"+date+"'";
		ResultSet rs = bean.query(sql);
		if(rs.next()){
		%>
		<table id="myTab" border="1px">
			<tr>
				<td colspan="7"
					style="padding-left: 200px; background-color: #0000FF; color: yellow">删除日程</td>
			</tr>
			<tr>
				<tr style="background-color: #0000FF; color: yellow;">
				<td>日程日期</td>
				<td>日程内容</td>
				<td>删除操作</td>
			</tr>
			<tr>
				<td><input style="background-color:#EEE8CD" type="text" name="date" value="<%=rs.getString(2) %>" size="8" readonly/></td>
				<td><%=rs.getString(3) %></td>
				<td><input type="button" value="确定删除" onclick="changeSubmit()" /></td>
			</tr>
			</table>
		<%} %>
	</s:form>
</body>
</html>