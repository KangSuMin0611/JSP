<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	인클루드 수행전 메시지 입니다! <br>
	<% 
		out.print("강 <br>");
		out.print("수 <br>");
		out.print("민 <br>");
	%>
	
	인클루드 사용합니다! <br>
	
	<% 
		pageContext.include("NF2.jsp");
	
		%>
	
	인클루드 수행후 메시지 입니다! <br>
	<% 
		out.print("강");
		out.print("수");
		out.print("민");
	%>
</body>
</html>