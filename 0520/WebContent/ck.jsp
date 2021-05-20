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
		Cookie[] cook = request.getCookies();
	
		for(int i=0;i<cook.length;i++){
			if(cook[i].getName().equals("Coo")){
	%>
	
		변경후 이름: <%= cook[i].getName()%> <br>
		변경후 값: <%=cook[i].getValue() %> <br>
	
	<%
			}
		}
	%>

</body>
</html>