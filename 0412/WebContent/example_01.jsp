<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 메소드 사용법 </title>
</head>
<body>
	
	프로토콜:	<%= request.getProtocol() %> <br>
	전송방식:	<%= request.getMethod() %> <br>
	URL:	<%= request.getRequestURL() %> <br>
	쿼리: 	<%= request.getQueryString() %> <br>
	호스트:	<%= request.getRemoteHost() %> <br>
	IP:	<%= request.getRemoteAddr() %> <br>
	포트번호: 	<%= request.getServerPort() %> <br>

</body>
</html>