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
	<!-- h3�������� �Ǿ����� ��ġ�� -->
	<h3>�Ǹŵ��</h3>
	<form action="c_insert_post.jsp" method="post">
		<input type="hidden" name="task" value="insert">
		<table border=1>
			<tr>
				<td>���ȣ</td>
				<td><input type="text" name="saleno" value="<%=saleno%>"
					required></td>
			</tr>

			<tr>
				<td>��ǰ�ڵ�</td>
				<td><input type="text" name="pcode" required></td>
			</tr>

			<tr>
				<td>�Ǹų�¥</td>
				<td><input type="date" name="saledate" required></td>
			</tr>

			<tr>
				<td>�����ڵ�</td>
				<td><input type="text" name="scode" required></td>
			</tr>

			<tr>
				<td>�Ǹż���</td>
				<td><input type="text" name="amount" required></td>
			</tr>

			<tr>
				<td colspan="2" align="center"><input type="submit" value="����">
					<input type="reset" value="�ٽþ���"></td>
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