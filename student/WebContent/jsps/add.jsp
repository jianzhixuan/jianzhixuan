<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../save" method="post">
		Name:<input type="text" name="name"><br> Age:<input
			type="number" name="age"><br> Sex:<input type="radio"
			name="sex" value="1">男 <input type="radio" name="sex"
			value="0">女 <br> <input type="submit" value="保存">
	</form>
</body>
</html>