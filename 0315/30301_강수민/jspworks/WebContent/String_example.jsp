<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>new String 예시</title>
</head>
<body>
	<% 
		String str1 = "String Test";
		String str2 = "String Test";
		String str3 = new String("String Test");
		String str4 = new String("String Test");
		
		out.println("str1 : " + str1 + " <br");
		out.println("str2 : " + str2 + " <br");
		out.println("str3 : " + str3 + " <br");
		out.println("str4 : " + str4 + " <br");
		
		out.println("str1 == str2 : " + (str1 == str2) + "<br> ");
		out.println("str1 == str3 : " + (str1 == str3) + "<br> ");
		out.println("str3 == str4 : " + (str3 == str4) + "<br> ");
		
		out.println("str1.equals(st2) : "+ str1.equals(str2)+ " <br> ");
		out.println("str1.equals(st3) : "+ str1.equals(str3)+ " <br> ");
		out.println("str3.equals(st4) : "+ str3.equals(str4)+ " <br> ");
		
	%>
</body>
</html>