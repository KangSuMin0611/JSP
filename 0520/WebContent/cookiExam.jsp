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
		Cookie cookie = new Cookie("Coo", "Hello");
		response.addCookie(cookie);
	%>
	쿠키변경<br>
	<form action="cookieExam2.jsp" method="post">
		<input type="submit" value="쿠키전송">
	</form>
	
</body>
</html>