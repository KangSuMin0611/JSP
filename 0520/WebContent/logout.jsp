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
		if(session != null)
			session.invalidate(); /* 세션 값을 없애는거 */
		response.sendRedirect("http://localhost:8095/0517/logout2.jsp");
	%>
</body>
</html>