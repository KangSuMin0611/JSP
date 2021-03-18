<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>변수 사용</title>
</head>
<body>
	<% 
		int a = 3;
		int b = 2;
	   
	    out.println(a+"<br/>");
	    out.println(b+"<br/>");
	   
	    a = b;   		//주석 오랜만이다.. 
	    b = 10;			/* ctrl+shift+/ 단축키! */
	   
	    out.println(a + "<br/>");
	    out.println(b + "<br/>");
	  %>
</body>
</html>