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
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length > 0){
			for (int i = 0; i < cookies.length; i++){
				if (cookies[i].getName().equals("DelCookie")){				
	%>
	
		<h4>
			쿠키의 이름: <%=cookies[i].getName() %> <br>
			쿠키의 값: <%=cookies[i].getValue() %> <br>
		</h4> <hr>
		
		<h3>"Delcookie" 쿠키를 삭제합니다.</h3>
		
		<%
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		%>
			<h4>삭제가 완료되었습니다.</h4>
		<%
					}
				}
			}
		%>
		
		<form action="cookieDel3.jsp">
			<input type="submit" value="다음">
		</form>
</body>
</html>