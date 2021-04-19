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
	
		if(session.isNew()){
			out.print("<script> alert('세션 생성') </script>");
			session.setAttribute("login", "강수민");
		}
	
	%>
	
	<%= session.getAttribute("login") %> 님 환영합니다! <br>
	1. 세션 ID: <%=session.getId() %> <br>
	2. 세션 유지기간 <%=session.getMaxInactiveInterval() %> <br> 
		
	
	
</body>
</html>