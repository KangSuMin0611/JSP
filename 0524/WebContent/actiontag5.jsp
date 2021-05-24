<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.print("여기는 첫번째 페이지 입니다. <br>"); %>
	<jsp:forward page="null.jsp"/>
		<%-- <jsp:param value="win" name="subject"/> --%>
</body>
</html>