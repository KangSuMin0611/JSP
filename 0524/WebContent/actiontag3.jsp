<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:forward page="param.jsp">
		<jsp:param value="hello" name="a"/>
		<jsp:param value="param" name="b"/>
	</jsp:forward>

</body>
</html>