<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>String 메소드 예시</title>
</head>
<body>
	<% 
		String str1 = "Happy Monday";
		
		out.println(str1.length() + "<br>");
		out.println(str1.charAt(6) + "<br>");
		out.println(str1.indexOf("Monday") + "<br>");
		out.println(str1.substring(0,5) + "<br>");
	%>
</body>
</html>