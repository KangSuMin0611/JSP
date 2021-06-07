<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="example2.jsp" method="post">
		아이디: <input type="text" name="ID"> <br>
		비번: <input type="password" name="PW"> <br>
		이름: <input type="text" name="NAME"> <br>
		생일: <input type="date" name="BIRTH"> <br>
		전화번호: <input type="text" name="PHONE"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>