<%@page import="cn.domain.Stud"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.tb {
	border-collapse: collapse;
	border: 1px solid black;
	width: 500px;
}

.tb td {
	border: 1px solid black;
	padding: 5px;
}
</style>
</head>
<body>
	<p>以下是所有学生信息</p>
	<div>
		<button>删除</button>
	</div>
	<table class="tb">
		<tr>
			<td>
				<input type="checkbox">
			</td>
			<td>姓名</td>
			<td>年龄</td>
			<td>性别</td>
			<td>编辑</td>
		</tr>
		<%
			List<Stud> list = (List<Stud>) request.getAttribute("studs");
			for (Stud stud : list) {
		%>
		<tr>
			<td>
				<input name="id" value="<%=stud.getId()%>" type="checkbox">
			</td>
			<td><%=stud.getName()%></td>
			<td><%=stud.getSex().equals("1") ? "男" : "女"%></td>
			<td><%=stud.getAge()%></td>
			<td>
				<a href="#">修改</a>
			</td>
		</tr>
		<%
			}
		%>
	</table>
</body>
</html>