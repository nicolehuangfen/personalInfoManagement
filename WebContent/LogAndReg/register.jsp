<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
<style>
body {
	text-align: center;
	background: url(../images/1.jpg);
}
</style>
</head>
<body>
	<h2>欢迎来到注册页面</h2>
	<hr>
	<center>
		<s:form action="/a/register" method="post">
			<table align="center" border="2" width="500px"
				style="background-color: #AEEEEE">
				<tr>

					<td colspan="2" style="background-color: #104E8B"><font
						color="yellow" size="5px">-----请填写以下注册信息-----</font></td>
				</tr>
				<tr>
					<td><s:textfield name="username" label="用户名" /></td>
				</tr>
				<tr>
					<td><s:textfield name="password" label="密码" /></td>
				</tr>
				<tr>
					<td><s:textfield name="repassword" label="再次输入密码" /></td>
				</tr>
				<tr>
					<td><s:textfield name="name" label="真实姓名" /></td>
				</tr>
				<tr>
					<td><s:text name="用户性别:"></s:text></td>
					<td><input type="radio" name="sex" value="男" checked />男 <input
						type="radio" name="sex" value="女" />女</td>
				</tr>
				<tr>
					<td><s:textfield name="birthday" label="生日" /></td>
				</tr>
				<tr>
					<td><s:textfield name="nation" label="民族" /></td>
				</tr>
				<tr>
					<td><s:select name="edu" label="学历" headerValue="==请选择=="
							headerKey="1" list="{'博士','硕士','本科','专科','高中','初中','小学','其他'}">
						</s:select></td>
				</tr>
				<tr>
					<td><s:select name="work" label="工作" headerValue="==请选择=="
							headerKey="1"
							list="{'Java工程师','web前端工程师','软件开发工程师','教师','学生','公务员','项目经理','其他'}">
						</s:select></td>
				</tr>
				<tr>
					<td><s:textfield name="telephone" label="联系电话" /></td>
				</tr>
				<tr>
					<td><s:textfield name="address" label="家庭住址" /></td>
				</tr>
				<tr>
					<td><s:textfield name="email" label="邮箱" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="注册" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="reset" value="清空" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="../LogAndReg/login.jsp">返回</a></td>
				</tr>
			</table>
		</s:form>
	</center>
</body>
</html>