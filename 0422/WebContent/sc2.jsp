<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	페이지 파라미터 값 : <%= pageContext.getAttribute("page") %> <br>
	세션 파라미터 값 : <%=session.getAttribute("session") %> <br>
	애플리케이션 파라미터 값: <%=application.getAttribute("app") %> <br>
</body>
</html>