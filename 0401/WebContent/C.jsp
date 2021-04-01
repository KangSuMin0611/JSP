<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>include 속성 예제</title>
</head>
<body>
	<%@ include file="A.html" %>
	<h1>난  원래 있는 페이지의 내용입니다.</h1>
	<hr>
	<%@ include file="B.jsp" %>
</body>
</html>