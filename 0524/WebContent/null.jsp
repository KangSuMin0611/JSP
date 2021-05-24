<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.print("여기는 두번째 페이지 입니다. <br>"); %>
	두번째 페이지 의 subject 파라미터의 값 : <%=request.getParameter("subject") %>
</body>
</html>