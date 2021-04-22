<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>페이지 이동 방식을 지점합니다.</h1>
	이동 방식을 get방식으로 지정합니다. 파라미터 이름은 'move' 입니다. <br>
	파라미터의 값은 가각 아래와 같이 지정합니다. <br>
	
	<%
		String move = request.getParameter("move");
		if(move==null){
	%>
	<hr>
	리다이렉트 : "redirect" <br>
	포워드 : "forward" <br>
	인클루드 : "include" <br>
	<hr>
	<% 
		}
		else if(move.equals("redirect")){
	 		response.sendRedirect("http://localhost:8095/0422/redirect.jsp");
		}
		else if(move.equals("forward")){
	 		pageContext.forward("forward.jsp");
		}
		else if(move.equals("include")){
 			pageContext.include("include.jsp");
		}
	%>
	 	
	<h1>PageMoving.jsp 페이지의 마지막 입니다.</h1>
	
</body>
</html>

 	