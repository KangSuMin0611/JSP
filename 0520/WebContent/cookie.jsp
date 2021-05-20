<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	쿠키 생성
	<%
		Cookie ck = new Cookie("Coo", "Hello");
		response.addCookie(ck);
	%>
쿠키 생성 완료 <br>
<form action="cookiecheck.jsp" method="post">
	<input type="submit" value="쿠키확인">
</form>

</body>
</html>