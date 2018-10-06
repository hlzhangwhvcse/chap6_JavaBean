<%@ page contentType="text/html;charset=utf-8"%>
<html>
	<head>
		<title>输入购买商品信息</title>
	</head>
	<body>
		<center>
			<!--  <form action="checkOut.jsp" method="post">  -->
			<form action="ConServlet" method="post">
				商品名称：
				<input name="name" type="text" required="required" />
				<br>
				商品单价：
				<input name="price" type="number" required="required" />
				<br>
				商品数量：
				<input name="amount" type="number" required="required" />
				<br>
			<input type="submit" name="Submit" value="提交" />
			<input type="reset" name="Submit" value="重置">
			<button onclick="window.location.href='checkMVC.jsp'">返回清单</button>
			<input type="hidden" name="method" value="shop">
			</form>
		</center>
	</body>
</html> 