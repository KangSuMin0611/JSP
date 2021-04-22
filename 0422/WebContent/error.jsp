<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="errorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%

	String abc= request.getParameter("ABC");
	out.print(abc.length());
	
	%>
	의도된 에러 페이지
	
</body>
</html>