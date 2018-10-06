<%@ page contentType="text/html;charset=utf-8"%>
<jsp:useBean id="mystring" class="bean.DoString"/>
<%
  String getstr = request.getParameter("input");
  if(null == getstr)
  {
	getstr = "";
  }
  getstr = new String(getstr.getBytes("ISO-8859-1"),"utf-8");
  mystring.setGetstr(getstr);
  String unChangedStr = mystring.getGetstr();
  String ChangedStr = mystring.getCheckstr();

%>
<html>
  <head>
    <title>过滤输入字符串中的危险符号</title>
  </head>
  <body>
   转换前：<%=unChangedStr%><br>
   转换后：<%=ChangedStr%><br>
  </body>
</html>
