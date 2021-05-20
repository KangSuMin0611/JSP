<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
쿠키값 확인 <br>
<%
	Cookie[] cookie = request.getCookies(); /* get으로 쿠키값 갖고 오기 */
	if(cookie != null && cookie.length>0){
		for(int i=0; i<cookie.length;i++){
			if(cookie[i].getName().equals("Coo")) {
%>
	쿠키이름: <%=cookie[i].getName()%> <br>
	쿠키값: <%=cookie[i].getValue() %> <br>
	기본만료시간: <%= cookie[i].getMaxAge() %>
<%	
			}
		}
	}
%>
</body>
</html>