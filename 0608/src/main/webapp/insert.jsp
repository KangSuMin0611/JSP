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
	<td>���̵� : </td>
	<td>admin</td>
</tr>
<tr>
	<td>��й�ȣ : </td>
	<td><input type="password" name="pw"></td>
</tr>
<tr>
	<td>�̸� : </td>
	<td><input type="text" name="name"></td>
</tr>
<tr>
	<td>������� : </td>
	<td><input type="date" name="birth"></td>
</tr>
<tr>
	<td>��ȭ��ȣ : </td>
	<td><input type="text" name="tel" placeholder="010-0000-0000�� ���·� �Է�"></td>
</tr>
<tr>
	<td colspan="2"><input type="submit" value="�����ϱ�"></td>
</tr>
</table>

</form>

</body>
</html>
