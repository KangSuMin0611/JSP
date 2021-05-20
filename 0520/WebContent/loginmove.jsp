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
		session.setAttribute("id", request.getParameter("id"));
		response.sendRedirect(" http://localhost:8095/0517/logincheck.jsp");
	%>	
	<!-- 값이 넘어가는 페이지 -->
		
</body>
</html>