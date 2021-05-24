<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	인클루드 페이지 확인 <hr>
	<jsp:include page="param2.jsp">
		<jsp:param value="hello" name="a"/>
		<jsp:param value="param" name="b"/>
	</jsp:include>
</body>
</html>