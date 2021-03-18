<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>삼항 연산자</title>
</head>
<body>
 <%
 	int a = 255;
 	out.print(((a % 2 == 0) ? "a의 값은 짝수입니다." : "a의 값은 홀수입니다."));
 %>
</body>
</html>