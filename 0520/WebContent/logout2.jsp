<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	안전하게 로그아웃 되었습니다. 이용해주셔서 감사합니다. <hr>
	다시 로그인 하시려면 
	<%
		pageContext.include("login.jsp"); /* 로그인 페이지를 띄우겠다. */
	%> <hr>
	<form action="login.jsp" method="post">
		<input type="submit" value="첫 화면으로">
	</form>
</body>
</html>