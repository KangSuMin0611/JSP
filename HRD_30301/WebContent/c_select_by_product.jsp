<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	String sql = "select * from tbl_shop_01";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	ResultSet rs = pstmt.executeQuery();
	%>
	<table border=1>
		<tr>
			<th>�����ڵ�</th>
			<th>������</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>

			<td><%=rs.getString(2)%></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	conn.close();
	%>
</body>
</html>