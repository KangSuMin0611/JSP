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
	
		for(int i=0; i<cookies.length; i++ ){
			if(cookies[i].getName().equals("Coo")){
	%>
		
			 	변경된 이름: <%= cookies[i].getName() %> <br>
			 	변경전 값: <%= cookies[i].getValue() %> <br>
				변경전 만료시간 <%= cookies[i].getMaxAge() %> <hr>			
	
	<%
	
				cookies[i].setValue("valuechenge");
				cookies[i].setMaxAge(2*60);
				response.addCookie(cookies[i]);

	%>
	
				변경후 값: <%= cookies[i].getValue() %> <br>
				변경후 만료시간 <%= cookies[i].getMaxAge() %>

	<%	
			}
		}
	%>
	
	<form action="ck.jsp" method="post">
		<input type="submit" value="넘어가">
	</form>
</body>
</html>