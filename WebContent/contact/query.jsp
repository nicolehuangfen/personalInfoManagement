<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.cn.hf.bean.*,java.sql.ResultSet" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ include file="../left.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查询联系人</title>
<style>
#queryDiv {
	margin-left: 500px;
	margin-top: -450px;
	padding: 0px;
}

#submitInp {
	margin-left: 160px;
	margin-top: -20px;
}

#queryInp {
	margin-top: 10px;
}

.myTab {
	margin-left: 230px;
	margin-top: -400px;
	width: 700px;
	background-color: #EEE8CD;
	border: 2px solid blue;
}
</style>
</head>
<body>
	<s:form action="/contact/query" method="post">
		<div id="queryDiv">
			<input type="text" id="queryInp" name="queryInp" /> <input
				id="submitInp" type="submit" value="查询">
		</div>
		<table class="myTab" border="1px">
			<tr>
				<td colspan="6"
					style="padding-left: 250px; font-weight: bold; font-size: 25px;">我的联系人列表</td>
			</tr>
			<tr style="background-color: #0000FF; color: yellow;">
				<td>联系人姓名</td>
				<td>联系电话</td>
				<td>邮箱</td>
				<td>工作地点</td>
				<td>家庭住址</td>
				<td>QQ</td>
			</tr>
			<%
				Bean bean = new Bean();
					String sql = "select * from friends where username='"
							+ request.getSession().getAttribute("username") + "'";
					ResultSet rs = bean.query(sql);
					if (request.getParameter("queryInp") == null
							|| request.getParameter("queryInp") == "") {
						while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
			</tr>
			<%
				}
					} else {
						String str = request.getParameter("queryInp");
						FriendBean fb = new FriendBean();
						ResultSet rs1 = fb.queryByName(str);
						ResultSet rs2 = fb.queryByTel(str);
						if (rs1.next()) {
			%>

			<tr>
				<td><%=rs1.getString(2)%></td>
				<td><%=rs1.getString(3)%></td>
				<td><%=rs1.getString(4)%></td>
				<td><%=rs1.getString(5)%></td>
				<td><%=rs1.getString(6)%></td>
				<td><%=rs1.getString(7)%></td>
			</tr>
			<%
				} else if (rs2.next()) {
			%>

			<tr>
				<td><%=rs2.getString(2)%></td>
				<td><%=rs2.getString(3)%></td>
				<td><%=rs2.getString(4)%></td>
				<td><%=rs2.getString(5)%></td>
				<td><%=rs2.getString(6)%></td>
				<td><%=rs2.getString(7)%></td>
			</tr>
			<%
				}
					}
			%>
		</table>
	</s:form>
</body>
</html>