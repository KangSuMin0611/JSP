<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert</title>
</head>
<body>

	<%
		String sql = "select * from member where ID='admin'";
		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		rs.next();
	%>
	<form action="DB.jsp" method="post">
		<table>
			<tr>
				<td>���̵� :</td>
				<td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td>��й�ȣ :</td>
				<td><input type="password" name="pw"
					value=<%=rs.getString(2)%>></td>
			</tr>
			<tr>
				<td>�̸� :</td>
				<td><input type="text" name="name" value=<%=rs.getString(3)%>></td>
			</tr>
			<tr>
				<td>������� :</td>
				<td><input type="date" name="birth"
					value=<%=rs.getString(4)%>></td>
			</tr>
			<tr>
				<td>��ȭ��ȣ :</td>
				<td><input type="text" name="tel" value=<%=rs.getString(5)%>></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="�����ϱ�"></td>
			</tr>
		</table>

	</form>

</body>
</html>
