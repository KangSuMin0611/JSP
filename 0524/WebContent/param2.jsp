<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	param2.jsp 페이지 입니다. <br>	
	넘어온 데이터를 확인 힙니다. <hr>	
	
	<%= request.getParameter("a")%> <br>
	<%= request.getParameter("b")%>
	
</body>
</html>