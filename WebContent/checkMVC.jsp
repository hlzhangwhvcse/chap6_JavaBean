<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="bean.*"%>
<%@ page import="java.util.*"%>
<html>
	<head>
		<title>结账</title>
		<SCRIPT type="text/javascript">
        function confirmDialog()
        {
            if(confirm("确定要删除本商品吗?"))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    </SCRIPT>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8");
		%>		
		<jsp:useBean id="shopping" class="bean.ShoppingInfo" scope="session" />
		<table align="center" border="1">
		 	<tr>
                <th colspan="5">已选商品清单</th>
            </tr>
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
				<th width="100" height="30">
					操作
				</th>
			</tr>
			<%				
				Vector items = shopping.getItems();
				for (int i = 0; i < items.size(); i++) 
				{
					ItemShopping itemSh = (ItemShopping) items.get(i);
			%>
			<tr align="center">
				<td width="100" height="30"><%=itemSh.getId()%></td>
				<td width="100" height="30"><%=itemSh.getName()%></td>
				<td width="100" height="30"><%=itemSh.getPrice()%></td>
				<td width="100" height="30"><%=itemSh.getAmount()%></td>
				<td width="100" height="30"><a href="ConServlet?method=delete&id=<%=itemSh.getId()%>" onclick="return confirmDialog();">删除</a></td>
			</tr>
			<%
				}
			%>
			<tr>
				<th colspan="3">
					合计金额
				</th>
				<th><%=shopping.getTotalPrice()%></th>
			</tr>
		</table>
		<center>
			<a href="input.jsp">新增商品</a> <!-- 前端页面与用户的交互设计，改进用户操作体验 -->
			<a href="">前去结账</a>
		</center>
	</body>
</html>
