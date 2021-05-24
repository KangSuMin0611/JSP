<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		인클루드 수행전 메시지 입니다.! <br>
	<% out.print("하나 <br>"); %>
	<% out.print("둘	<br>"); %>
	<% out.print("셋 <br>"); %>
	
		포워딩을 사용합니다.  <br>
		
	<jsp:include page="include.jsp"></jsp:include>	
			
		내가 사라져볼게~ <br>
	<% out.print("하나 <br>"); %>
	<% out.print("둘	<br>"); %>
	<% out.print("셋 <br>"); %>
	<% out.print("얍! <br>"); %>
			
</body>
</html>