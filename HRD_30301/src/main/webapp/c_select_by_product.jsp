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
	try {
		String sql = "select s.scode �����ڵ�, s.sname �����̸�, sum(cost*amount) ���庰�Ǹž�"
		+ "from tbl_shop_01 s, tbl_salelist_01 sl, tbl_product_01 p" + "where sl.scode=s.scode and sl.pcode=p.pcode"
		+ "group by s.scode, s.sname order by s.scode;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	%>
	<table border=1>
		<tr>
			<th>�����ڵ�</th>
			<th>������</th>
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
	conn.close();
	} catch (Exception e) {
	}
	%>

</body>
</html>