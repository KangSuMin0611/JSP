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
		String sql = "select s.scode 매장코드, s.sname 매장이름, sum(cost*amount) 매장별판매액"
		+ "from tbl_shop_01 s, tbl_salelist_01 sl, tbl_product_01 p" + "where sl.scode=s.scode and sl.pcode=p.pcode"
		+ "group by s.scode, s.sname order by s.scode;";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
	%>
	<table border=1>
		<tr>
			<th>상점코드</th>
			<th>상점명</th>
			<th>상품별 판매액</th>
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