<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" errorPage="ErrorHandling.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>의도된 에러페이지</title>
</head>
<body>
	<%= 100/0 %> <br>
	위 코드는 의도된 에러코드 입니다. <br>
</body>
</html>