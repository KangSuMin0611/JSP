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
		pageContext.setAttribute("page", "page value" );
		session.setAttribute("session", "session value" );
		application.setAttribute("app", "app value");
	%>
	
	페이지 파라미터 값 : <%= pageContext.getAttribute("page") %>
	세션 파라미터 값 : <%=session.getAttribute("session") %>
	애플리케이션 파라미터 값: <%=application.getAttribute("app") %>
	
	
</body>
</html>