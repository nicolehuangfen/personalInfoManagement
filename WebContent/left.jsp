<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="StyleSheet" href="<%=request.getContextPath() %>/css/left.css" type="text/css" />
<title>个人信息管理</title>
<script>
function tree(){
	var link = document.getElementsByTagName("a");
	for(var i = 0; i < link.length; i++){
		link[i].onmouseover = function(){
			this.style.backgroundColor = "#1C86EE";
		}
		link[i].onmouseout = function(){
			this.style.backgroundColor = "#EEE8CD";
		}
	}
}
</script>
</head>
<body onload="tree()">
	<div id="head">
		<span id="text">欢迎来到个人信息管理系统</span><br/>
		<span id="username">欢迎您，<s:property value="#session.username"/></span>
	</div>
	<div id="left">
		<div id="personal">
		<span class="title">个人信息管理</span>
			<ul id="personal_ul">
				<li id="query"><a href="../personal/query.jsp">查看个人信息</a></li>
				<li id="updateInfo"><a href="../personal/updateInfo.jsp">修改个人信息</a></li>
				<li id="updatePsw"><a href="../personal/updatePsw.jsp">修改个人密码</a></li>
				<li id="logout"><a href="../personal/logout.jsp">退出登录</a></li>
			</ul>
		</div>
		<div id="contact">
		<span class="title">通讯录管理</span>
			<ul id="contact_ul">
				<li id="query"><a href="../contact/query.jsp">查看通讯录</a></li>
				<li id="add"><a href="../contact/add.jsp">增加联系人</a></li>
				<li id="update"><a href="../contact/update.jsp">修改联系人</a></li>
				<li id="update"><a href="../contact/delete.jsp">删除联系人</a></li>
			</ul>
		</div>
		<div id="arrangement">
		<span class="title">日程安排</span>
			<ul id="arrangement_ul">
				<li id="query"><a href="../arrangement/query.jsp">查看日程</a></li>
				<li id="add"><a href="../arrangement/add.jsp">增加日程</a></li>
				<li id="update"><a href="../arrangement/update.jsp">修改日程</a></li>
				<li id="update"><a href="../arrangement/delete.jsp">删除日程</a></li>
			</ul>
		</div>
		<div id="file">
		<span class="title">个人文件管理</span>
			<ul id="file_ul">
				<li id="query"><a href="../file/query.jsp">查看文件</a></li>
				<li id="delete"><a href="../file/delete.jsp">删除文件</a>
				<li id="list"><a href="../file/up.jsp">上传文件</a></li>
				<li id="updown"><a href="../file/down.jsp">下载文件</a></li>
			</ul>
		</div>
	</div>
</body>
</html>