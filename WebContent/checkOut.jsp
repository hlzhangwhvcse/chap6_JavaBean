<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="bean.*"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>结账</title>
	</head>
	<body>
		<% 
		request.setCharacterEncoding("utf-8"); 
		%>
		<jsp:useBean id="item" class="bean.ItemShopping" />
		<jsp:setProperty name="item" property="*" />
		<jsp:useBean id="shopping" class="bean.ShoppingInfo" scope="session" />
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
				item.setId(index);
				shopping.getItems().add(item);
				Vector items = shopping.getItems();
				for (int i = 0; i < items.size(); i++) {
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

