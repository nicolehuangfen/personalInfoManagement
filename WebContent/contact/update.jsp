<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改联系人</title>
<script type="text/javascript">
	function changeSubmit() {
		var form = document.forms[0];
		form.action = "../contact/update";
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
	width: 500px;
	/* 	height: 300px; */
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<s:form action="/contact/inputFriendName" method="post">
		<div id="updateDiv">
			<span id="a">请输入要修改的联系人姓名：</span><input type="text" id="updateInp"
				name="inputFriendName" /> <input id="submitInp" type="submit"
				value="提交">
		</div>
		<%
			String friendName = request.getParameter("inputFriendName");
				Bean bean = new Bean();
				String sql = "select * from friends where friendName='"
						+ friendName + "'";
				ResultSet rs = bean.query(sql);
				if (rs.next()) {
		%>
		<table id="myTab" border="1px">
			<tr>
				<td colspan="2"
					style="padding-left: 200px; background-color: #0000FF; color: yellow">修改联系人</td>
			</tr>
			<tr>
				<td>联系人姓名：</td>
				<td><input type="text" name="friendName"
					value="<%=rs.getString(2)%>" readonly /></td>
			</tr>
			<tr>
				<td>联系人电话：</td>
				<td><input type="text" name="telephone"
					value="<%=rs.getString(3)%>" /></td>
			</tr>
			<tr>
				<td>邮箱：</td>
				<td><input type="text" name="email"
					value="<%=rs.getString(4)%>" /></td>
			</tr>
			<tr>
				<td>工作地点：</td>
				<td><input type="text" name="workplace"
					value="<%=rs.getString(5)%>" /></td>
			</tr>
			<tr>
				<td>家庭住址：</td>
				<td><input type="text" name="address"
					value="<%=rs.getString(6)%>" /></td>
			</tr>
			<tr>
				<td>QQ：</td>
				<td><input type="text" name="QQ" value="<%=rs.getString(7)%>" /></td>
			</tr>
			<%
				}
			%>
			<tr>
				<td colspan="2" style="padding-left:250px;"><input type="button" value="修改" onclick="changeSubmit()" /></td>
			</tr>
		</table>
	</s:form>
</body>
</html>