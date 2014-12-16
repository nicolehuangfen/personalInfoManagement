<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除文件</title>
<script type="text/javascript">
	function changeSubmit() {
		var form = document.forms[0];
		form.action = "../file/delete";
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
	<s:form action="/file/inputTitle" method="post">
		<div id="updateDiv">
			<span id="a">请输入要删除的文件：</span><input type="text" id="updateInp"
				name="inputTitle" /> <input id="submitInp" type="submit"
				value="提交">
		</div>
		<%
			Bean bean = new Bean();
		String username = (String)request.getSession().getAttribute("username");
		String title = request.getParameter("inputTitle");
		String sql = "select * from file where username='"+username+"' and title='"+title+"'";
		ResultSet rs = bean.query(sql);
		if(rs.next()){
		%>
		<table id="myTab" border="1px">
			<tr>
				<td colspan="5"
					style="padding-left: 200px; background-color: #0000FF; color: yellow">删除文件</td>
			</tr>
			<tr>
				<tr style="background-color: #0000FF; color: yellow;">
				<td style="width:80px;">文件标题</td>
				<td style="width:80px;">文件名字</td>
				<td style="width:80px;">文件类型</td>
				<td style="width:80px;">保存路径</td>
				<td style="width:80px;">删除操作</td>
			</tr>
			<tr>
				<td><input style="background-color:#EEE8CD" type="text" name="title" value="<%=rs.getString(2)%>" size="8" readonly> </td>
				<td><%=rs.getString(3)%> </td>
				<td><%=rs.getString(4)%> </td>
				<td><%=rs.getString(5)%> </td>
				<td><input type="button" value="确定删除" onclick="changeSubmit()" /></td>
			</tr>
		<%} %>
		</table>
	</s:form>
</body>
</html>