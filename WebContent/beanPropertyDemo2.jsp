<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<html>
	<head>
		<title>JavaBean演示:beanPropertyDemo2</title>
	</head>
	<body>
	    scope参数的应用范围：
	    <br>
	    counter1：<br>
		指定scope为application,<jsp:useBean id="counter1" class="bean.Counter" scope="application" />
		执行getCount()后count取值为:<jsp:getProperty name="counter1" property="count" />
		<br>
		
		counter2：<br>
		指定scope为request,<jsp:useBean id="counter2" class="bean.Counter" scope="request" />
		执行getCount()后count取值为:<jsp:getProperty name="counter2" property="count" />
		<br>

		
		counter3：<br>
		指定scope为session,<jsp:useBean id="counter3" class="bean.Counter" scope="session" />
		执行getCount()后count取值为:<jsp:getProperty name="counter3" property="count" />
		<br>
		
		counter4：<br>
		指定scope为为page,<jsp:useBean id="counter4" class="bean.Counter" scope="page"/>
		执行getCount()后count取值为:<jsp:getProperty name="counter4" property="count" />
		<br>
		
		counter5：<br>
		不指定则默认scope为page,<jsp:useBean id="counter5" class="bean.Counter" />
		执行getCount()后count取值为:<jsp:getProperty name="counter5" property="count" />
		<br>
		scope为page,先执行setCount(100),<jsp:setProperty name="counter5" property="count" value='100' />
		再执行getCount()后count取值为:<jsp:getProperty name="counter5" property="count" />
		
		<br>说明：beanPropertyDemo1.jsp页面执行forward标签跳转到beanPropertyDemo2.jsp页面后，仍是同一个application、同一个session，同一个request，但是不同的页面
	</body>
</html>