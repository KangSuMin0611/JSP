<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert</title>
</head>
<body>

<form action="DB.jsp" method="post">
<table>
<tr>
	<td>아이디 : </td>
	<td>admin</td>
</tr>
<tr>
	<td>비밀번호 : </td>
	<td><input type="password" name="pw"></td>
</tr>
<tr>
	<td>이름 : </td>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<td>생년월일 : </td>
	<td><input type="date" name="birth"></td>
</tr>
<tr>
	<td>전화번호 : </td>
	<td><input type="text" name="tel" placeholder="010-0000-0000의 형태로 입력"></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="수정하기"></td>
</tr>
</table>

</form>

</body>
</html>
