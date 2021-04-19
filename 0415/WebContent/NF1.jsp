<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	포워딩 수행전 메시지 입니다! <br>
	<% 
		out.print("강");
		out.print("수");
		out.print("민");
	%>
	
	포워딩 사용합니다! <br>
	
	<% pageContext.forward("NF2.jsp"); %>
	
	포워딩 수행후 메시지 입니다! <br>
	<% 
		out.print("강");
		out.print("수");
		out.print("민");
	%>
</body>
</html>