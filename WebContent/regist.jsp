<%@ page language="java" pageEncoding="utf-8"%>

<html>
	<head>注册页面</head>
	<body>
		<form name="form" action="RegisterServlet" method="post">
			姓 名：
			<Input type="text" name="name" required="required">
			密 码：
			<Input type="password" name="password"required="required" >
			<Input type="submit" value="提交">
			<Input type="reset" value="复位">
		</form>
	</body>
</html>
