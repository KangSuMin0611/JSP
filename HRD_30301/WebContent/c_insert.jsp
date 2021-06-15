<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="dbconnect.jsp"%>
<%
request.setCharacterEncoding("EUC-KR");
%>
<%
try {
	PreparedStatement pstmt = conn.prepareStatement("select max(saleno)+1 as saleno from tbl_salelist_01");
	ResultSet rs = pstmt.executeQuery();
	rs.next();
	String saleno = rs.getString("saleno");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title</title>
</head>
<body>
	<!-- h3왼쪽으로 되어있음 고치기 -->
	<h3>판매등록</h3>
	<form action="c_insert_post.jsp" method="post">
		<input type="hidden" name="task" value="insert">
		<table border=1>
			<tr>
				<td>비번호</td>
				<td><input type="text" name="saleno" value="<%=saleno%>"
					required></td>
			</tr>

			<tr>
				<td>상품코드</td>
				<td><input type="text" name="pcode" required></td>
			</tr>

			<tr>
				<td>판매날짜</td>
				<td><input type="date" name="saledate" required></td>
			</tr>

			<tr>
				<td>매장코드</td>
				<td><input type="text" name="scode" required></td>
			</tr>

			<tr>
				<td>판매수량</td>
				<td><input type="text" name="amount" required></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit" value="전송">
					<input type="reset" value="다시쓰기"></td>
			</tr>
		</table>
	</form>
	<%
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>