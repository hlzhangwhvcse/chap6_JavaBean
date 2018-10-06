<%@ page contentType="text/html;charset=utf-8"%>
<html>
  <head>
    <title>过滤输入字符串中的危险符号</title>
  </head>
  <body>
   <center>
    <form action="check.jsp">
     <table>
      <tr height="25">
        <td align="center">过滤输入字符串中的危险符号</td>
      </tr>
      <tr>
        <td align="center">输入字符串:
            <input type="text" name="input" size="35">
            <input type="submit" name="check" value="过滤">
        </td>
      </tr>
    </table>
    </form>
   </center>
  </body>
</html>
