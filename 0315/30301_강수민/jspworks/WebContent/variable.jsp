<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ���</title>
</head>
<body>
	<% 
		int a = 3;
		int b = 2;
	   
	    out.println(a+"<br/>");
	    out.println(b+"<br/>");
	   
	    a = b;   		//�ּ� �������̴�.. 
	    b = 10;			/* ctrl+shift+/ ����Ű! */
	   
	    out.println(a + "<br/>");
	    out.println(b + "<br/>");
	  %>
</body>
</html>