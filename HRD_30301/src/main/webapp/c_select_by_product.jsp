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
	<h2>��ǰ���Ǹž�</h2>
	<%
	try {
		String sql = "select p.pcode ��ǰ�ڵ�, name, sum(cost*amount) from tbl_shop_01 s, tbl_salelist_01 sa, tbl_product_01 p where s.scode=sa.scode and sa.pcode=p.pcode group by p.pcode, name order by p.pcode";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	%>
	<table border=1>
		<tr>
			<th>��ǰ�ڵ�</th>
			<th>��ǰ�̸�</th>
			<th>��ǰ�� �Ǹž�</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
		</tr>
		<%
		}
		%>

	</table>
	<%
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>


</body>
</html>