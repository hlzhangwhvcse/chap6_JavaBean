<%@ page language="java" import="business.UserDoRegist" pageEncoding="utf-8"%>

<html>
  <head>   
    <title>测试注册新用户页面:UserDoRegist</title>
  </head>
  
  <body>
   	<form action="" method="post">
  	请输入新用户姓名：
  		<input type="text" name="username">
  		<br>
  	请输入新用户密码：
  	<input type="password" name="password">
  	<br>
  	<input type="submit" value="注册">
  </form>
  <%
  		request.setCharacterEncoding("utf-8"); //设置以utf-8编码方式获取request对象的参数值，避免产生中文乱码
  		String username = "";
  		String password = "";
  		String message = "";
 		
  		username = request.getParameter("username");
  		password = request.getParameter("password");
  		
  		if(username != null && password != null)
  		{
  			if(username != "" && password != "")
  	  		{
  				UserDoRegist userDoRegist = new UserDoRegist();
  				userDoRegist.setUsername(username);
  				userDoRegist.setPassword(password);
  				message = userDoRegist.doRegist();
  	  		}
  			else
  			{
  				message = "用户名和密码都不能为空";
  			}
  		}
        //out.println(message);
   %>
   <br>
   <%=message%> 
  
  </body>
</html>