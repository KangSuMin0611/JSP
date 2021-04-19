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
	
	String username=request.getParameter("redirect");
	out.print( "넘어온 값은 " + username);
	
	%>
</body>
</html>