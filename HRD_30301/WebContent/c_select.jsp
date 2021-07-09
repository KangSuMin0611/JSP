<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<%
request.setCharacterEncoding("UTF-8");
String namev = request.getParameter("name_v");
String saledate = request.getParameter("saledate");
String salenov = request.getParameter("saleno_v");
%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h2>�Ǹ���Ȳ</h2>
	<input type="submit" value="�˻�" onclick="search()">
	<%
	try {

		String sql = "select s.saleno, p.pcode,"
				+ " to_char(saledate,'yyyy-mm-dd')," 
				+ " s.scode, p.name , s.amount,"
				+ " (cost*amount)" 
				+ " from tbl_salelist_01 s, tbl_product_01 p where s.pcode = p.pcode ";

		if (namev != null)
			sql += "and name like '%" + namev + "%' ";
		
		if (saledate != null) {
			String str[] = saledate.trim().split(":"); /* split() = :�� �������� ������. */
			sql += "and saledate >= to_date('" + str[0] + "', 'yyyy-mm-dd') ";
			sql += "and saledate <= to_date('" + str[1] + "', '(yyyy-mm-dd') ";
		}
		
		if (salenov != null)
			sql += "and tsl.saleno=" + salenov + " ";
		sql += "order by saleno";

		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
	%>
	<table border=1>
		<tr>
			<th>���ȣ</th>
			<th>��ǰ�ڵ�</th>
			<th>�Ǹų�¥</th>
			<th>�����ڵ�</th>
			<th>��ǰ��</th>
			<th>�Ǹż���</th>
			<th>���Ǹž�</th>
		</tr>
		<%
		while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getInt(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td><%=rs.getString(5)%></td>
			<td><%=rs.getInt(6)%></td>
			<td><%=rs.getString(7)%></td>
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
	<script type="text/javascript">
		function search() {
			window.open("popup.jsp", "�˻�", "width=150px;height=100px;");
		}
	</script>

</body>
</html>