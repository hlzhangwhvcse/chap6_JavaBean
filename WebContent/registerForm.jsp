<%@ page import="bean.Introspection" pageEncoding="utf-8"%>

<html>
  <head>
    <title>JavaBean自省机制</title>
  </head>
  <body>
  <form action="" method="post">
  用户姓名：
  <input type="text" name="username">
  用户密码：
  <input type="password" name="password">
    用户地址：
  <input type="text" name="address">
     用户电话：
  <input type="text" name="phone">
  <input type="submit" value="注册">
  </form>
  
  <jsp:useBean id="introspection" class="bean.Introspection" scope="page">
  <jsp:setProperty name="introspection" property="*"/>
<!-- <jsp:setProperty name="introspection" property="username"/>  -->
  欢迎您！
  您的用户名是：
  <jsp:getProperty name="introspection" property="username"/>
  您的密码是：
  <jsp:getProperty name="introspection" property="password"/>
    您的地址是：
  <jsp:getProperty name="introspection" property="address"/>
  </jsp:useBean>
   <br>JavaBean应用在JSP中的一个很重要机制：自省（introspection）；所谓的自省机制是指当服务器接收到请求时，它根据请求参数的名称，自动设定与JavaBean相同属性名称的值。这样一来，我们就不需要用request对象接收参数，并向对象一一赋值了
  </body>
</html>
