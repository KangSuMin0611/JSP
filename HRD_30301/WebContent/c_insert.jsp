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
</head>
<body>
	<h3>판매등록</h3>
	<form name="form1" action="c_insert_post2.jsp" method="post">
		<input type="hidden" name="task" value="insert">
		<table border=1>
			<tr>
				<td>비번호</td>
				<td><input type="text" name="saleno" value="<%=saleno%>"></td>
			</tr>

			<tr>
				<td>상품코드</td>
				<td><input type="text" name="pcode"></td>
			</tr>

			<tr>
				<td>판매날짜</td>
				<td><input type="date" name="salesdate"></td>
			</tr>

			<tr>
				<td>매장코드</td>
				<td><input type="text" name="scode"></td>
			</tr>

			<tr>
				<td>판매수량</td>
				<td><input type="text" name="amount"></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="button" value="등록"
					onclick="subm()"> <input type="reset" value="다시쓰기">
				</td>
			</tr>
		</table>
	</form>
	<%
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
	<script>
		function subm() {
			if (form1.saleno.value == '') { /* 여기 유효성검사 if문 */
				alert("비번호가 입력되지 않았습니다.");
				form1.saleno.focus();
				return false;
			} else if (form1.pcode.value == '') {
				alert("상품코드가 입력되지 않았습니다.")
				form1.pcode.focus();
				return false;
			} else if (form1.salesdate.value == '') {
				alert("판매일자가 입력되지 않았습니다.")
				form1.salesdate.focus();
				return false;
			} else if (form1.scode.value == '') {
				alert("매장코드가 입력되지 않았습니다.")
				form1.scode.focus();
				return false;
			} else if (form1.amount.value == '') {
				alert("수량이 입력되지 않았습니다.")
				form1.amount.focus();
				return false;
			}
			alert("제대로 입력되었습니다.");
			document.form1.submit();
		}
	</script>
</body>
</html>