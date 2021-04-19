<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
	
	String redirect = request.getParameter("redirect");
	
	if (redirect == null){
		out.println("redirect가 지정되지 않았습니다.");
	}else if(redirect.equals("okjsp")){
		response.sendRedirect("http://www.naver.com");
	}else{
		response.sendRedirect("http://localhost:8095/0415/wx2.jsp");
	}
	
	
	
	%>
</body>
</html>