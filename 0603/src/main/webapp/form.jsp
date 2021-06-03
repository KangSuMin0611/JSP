<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="insert.jsp" method="post">
		학번: <input type="text" name="sno"> <br>
		이름: <input type="text" name="sname"> <br>
		학년: <input type="text" name="grade"> <br>
		전화번호: <input type="text" name="phone"> <br>
		<input type="submit" value="전송">
	</form>
</body>
</html>