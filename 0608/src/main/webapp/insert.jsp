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
				<td>아이디 :</td>
				<td><%=rs.getString(1)%></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="password" name="pw"
					value=<%=rs.getString(2)%>></td>
			</tr>
			<tr>
				<td>이름 :</td>
				<td><input type="text" name="name" value=<%=rs.getString(3)%>></td>
			</tr>
			<tr>
				<td>생년월일 :</td>
				<td><input type="date" name="birth"
					value=<%=rs.getString(4)%>></td>
			</tr>
			<tr>
				<td>전화번호 :</td>
				<td><input type="text" name="tel" value=<%=rs.getString(5)%>></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="수정하기"></td>
			</tr>
		</table>

	</form>

</body>
</html>
