<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		포워딩 수행전 메시지 입니다.! <br>
	<% out.print("하나 <br>"); %>
	<% out.print("둘	<br>"); %>
	<% out.print("셋 <br>"); %>
	
		포워딩을 사용합니다.  <br>
		
		<jsp:forward page="forward.jsp"/>
		
		포워딩 수행후 메시지 입니다.! <br>
	<% out.print("하나 <br>"); %>
	<% out.print("둘	<br>"); %>
	<% out.print("셋 <br>"); %>
			
</body>
</html>