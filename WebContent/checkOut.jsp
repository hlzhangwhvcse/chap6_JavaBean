<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="bean.*"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>结账</title>
	</head>
	<body>
		<% 
		request.setCharacterEncoding("utf-8"); //设置以utf-8编码方式获取request对象的参数值，避免产生中文乱码
		%>
		<jsp:useBean id="item" class="bean.ItemShopping" />  <!-- 在页面范围内实例化一个 ItemShopping对象-->
		<jsp:setProperty name="item" property="*" />     <!-- 自省机制，将request对象中的参数赋值给 ItemShopping对象中的同名属性，*表示全部属性-->
		<jsp:useBean id="shopping" class="bean.ShoppingInfo" scope="application" /> <!-- 在会话范围内实例化一个 ShoppingInfo对象，测试一下，如果是页面、请求、应用范围会怎么样？-->
		<table align="center" border="1">
			<tr align="center">
				<th width="100" height="30">
					商品编号
				</th>
				<th width="100" height="30">
					商品名称
				</th>
				<th width="100" height="30">
					商品单价
				</th>
				<th width="100" height="30">
					商品数量
				</th>
			</tr>
			<%
				int index = shopping.getIndex();
				item.setId(index);//给ItemShopping对象的编号属性赋值
				shopping.getItems().add(item);//把ItemShopping对象放入ShoppingInfo对象的的可变数组items中
				Vector items = shopping.getItems();
				for (int i = 0; i < items.size(); i++) //把items存放的所有temShopping对象的属性信息以表单形式显示到页面
				{
					ItemShopping itemSh = (ItemShopping) items.get(i);
			%>
					<tr align="center">
					<td width="100" height="30">
						<%=itemSh.getId()%>
					</td>
					<td width="100" height="30">
						<%=itemSh.getName()%>
					</td>
					<td width="100" height="30">
						<%=itemSh.getPrice()%>
					</td>
					<td width="100" height="30">
						<%=itemSh.getAmount()%>
					</td>
					</tr>
			<%
				}
			%>
			<tr>
				<th colspan="3">
					合计金额
				</th>
				<th>
					<%=shopping.getTotalPrice()%>
				</th>
			</tr>
		</table>
		<center>
			<a href="input.jsp">返回</a>
		</center>
	</body>
</html>

