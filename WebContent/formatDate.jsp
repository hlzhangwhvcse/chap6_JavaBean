<%@ page language="java" import="bean.FormatDate" pageEncoding="utf-8"%>

<html>
  <head>   
    <title>显示当前时间</title>
  </head>
  
  <body>
  <%
  		FormatDate formatdate = new FormatDate();
  		String nowtime = formatdate.getNowtime();
   %>
  当前时间为：<%=nowtime%> 
  
  </body>
</html>