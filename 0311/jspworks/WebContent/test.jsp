<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>명시적 형변환</title>
</head>
<body>
	<% 
		/* 작은것을 크게 늘릴때 명시적 형변환을 활용. */
		
		double doubleNum = 3.14159265358979323846;
		out.println("double : " + doubleNum + "<br>");
		
		float floatNum = (float) doubleNum;
		out.println("float : " + floatNum + "<br>");
		
		long longNum = (long) floatNum;
		out.println("long : " + longNum + "<br>");
		
		int intNum = (int) longNum;
		out.println("int : " + intNum + "<br>");
	%>
</body>
</html>