<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	��Ŭ��� ������ Ȯ�� <hr>
	<jsp:include page="param2.jsp">
		<jsp:param value="hello" name="a"/>
		<jsp:param value="param" name="b"/>
	</jsp:include>
</body>
</html>