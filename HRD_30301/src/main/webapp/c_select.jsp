<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h2>판매현황</h2>
	<%
	try {
		String sql = "select s.saleno, p.pcode,"
		+" to_char(saledate,'yyyy-mm-dd'),"
		+" s.scode, p.name , s.amount,"
		+" (cost*amount)"
		+" from tbl_salelist_01 s, tbl_product_01 p where s.pcode = p.pcode";
		
		
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	%>
	<input type="submit" value="검색" onclick="search()">
	<table border=1>
		<tr>
			<th>비번호</th>
			<th>상품코드</th>
			<th>판매날짜</th>
			<th>매장코드</th>
			<th>상품명</th>
			<th>판매수량</th>
			<th>총판매액</th>
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
			window.open("popup.jsp", "검색", "width=150px;height=100px;");
		}
	</script>

</body>
</html>