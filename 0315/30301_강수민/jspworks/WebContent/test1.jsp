<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ������</title>
</head>
<body>
 <%
 	int a = 255;
 	out.print(((a % 2 == 0) ? "a�� ���� ¦���Դϴ�." : "a�� ���� Ȧ���Դϴ�."));
 %>
</body>
</html>