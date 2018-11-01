<%@ page language="java" contentType="text/html;charset=utf-8" pageEncoding="utf-8" %>
<html>
<head>
<title>TestJavaBean</title>
</head>
<body>
        <!--<form action="" method="post"> -->
        <form action="testJavaBean.jsp" method="post">
          商品编号：<input type="text" name="itemId">
          商品描述：<input type="text" name="description">
          商品单价：<input type="text" name="cost">
                  <input type="submit" value="提交">
          </form>
          
          <%
			  request.setCharacterEncoding("utf-8"); //设置以utf-8编码方式获取request对象的参数值，避免产生中文乱码
		  %>
        <jsp:useBean id="item" class="edu.shop.entity.Item"/>
        <%--<jsp:useBean id="item" class="Item"/> --%>
        <%--<jsp:setProperty name="item" property = "*"/> --%>
        <jsp:setProperty name="item" property = "itemId"/>
        <jsp:setProperty name="item" property = "description"/>
        <jsp:setProperty name="item" property = "cost"/>
        
        您订的商品编号是：
          <jsp:getProperty name="item" property="itemId"/>
           您订的商品描述是：
          <jsp:getProperty name="item" property="description"/>
         您订的商品单价是：
          <jsp:getProperty name="item" property="cost"/>
         您订的商品是否有货：
          <jsp:getProperty name="item" property="empty"/>
    </body>
</html>
