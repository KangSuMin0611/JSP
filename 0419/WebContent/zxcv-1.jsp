<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<% 
		String name = "Hello";
		String value=application.getInitParameter(name);
	%>
	<%= name + "파라미터의 값: " + value + "<br>" %>
	
	
	<%
		application.setAttribute(name, "hello");
		String value1=application.getInitParameter(name);
	%>	
	<%= name + "파라미터의 값: " + value1 + "<br>" %>


	<%
		String value2 = (String)application.getAttribute(name);
	%>
	<%= name + "파라미터의 값: " + value2 + "<br>" %>

</body>
</html>