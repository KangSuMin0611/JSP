<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	String move = request.getParameter("move");
	
	if(move.equals("a")){
	response.sendRedirect("http://localhost:8090/1234/ddd.jsp");
	}
	else if(move.equals("b")){
	pageContext.forward("aaa.jsp");
	}
	 %>
	
		
</body>
</html>