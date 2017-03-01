<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
	font-size: 16px;
}

#menu {
	width: 120px;
	text-align: center;
	margin-top: 10px;
	float: left;
}

#menu table a {
	text-decoration: none;
}

#menu table td {
	padding: 3px;
}
</style>
</head>
<body style="margin: 0px;">
	<div style="height: 60px; border-bottom: 1px solid gray;">
		welcome...</div>
	<div id="menu">
		<table>
			<tr>
				<td><a href="show" target="_main">显示所有</a></td>
			</tr>
			<tr>
				<td><a href="jsps/add.jsp" target="_main">增加</a></td>
			</tr>
		</table>
	</div>
	<div id="frame" style="width:768px;height: 768px;float: left;">
		<iframe name="_main" frameborder="0" style="width: 100%; height: 100%"></iframe>
	</div>
</body>
</html>