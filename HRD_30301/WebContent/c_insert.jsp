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
	<h3>�Ǹŵ��</h3>
	<form name="form1" action="c_insert_post2.jsp" method="post">
		<input type="hidden" name="task" value="insert">
		<table border=1>
			<tr>
				<td>���ȣ</td>
				<td><input type="text" name="saleno" value="<%=saleno%>"></td>
			</tr>

			<tr>
				<td>��ǰ�ڵ�</td>
				<td><input type="text" name="pcode"></td>
			</tr>

			<tr>
				<td>�Ǹų�¥</td>
				<td><input type="date" name="salesdate"></td>
			</tr>

			<tr>
				<td>�����ڵ�</td>
				<td><input type="text" name="scode"></td>
			</tr>

			<tr>
				<td>�Ǹż���</td>
				<td><input type="text" name="amount"></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<input type="button" value="���" onclick="subm()">
					<input type="reset" value="�ٽþ���">
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
			if (form1.saleno.value == '') {
				alert("���ȣ�� �Էµ��� �ʾҽ��ϴ�.");
				form1.saleno.focus();
				return false;
			}else if(form1.pcode.value == ''){
				alert("��ǰ�ڵ尡 �Էµ��� �ʾҽ��ϴ�.")
				form1.pcode.focus();
				return false;
			}else if(form1.salesdate.value == ''){
				alert("�Ǹ����ڰ� �Էµ��� �ʾҽ��ϴ�.")
				form1.salesdate.focus();
				return false;
			}else if(form1.scode.value == ''){
				alert("�����ڵ尡 �Էµ��� �ʾҽ��ϴ�.")
				form1.scode.focus();
				return false;
			}else if(form1.amount.value == ''){
				alert("������ �Էµ��� �ʾҽ��ϴ�.")
				form1.amount.focus();
				return false;
			}
			alert("����� �ԷµǾ����ϴ�.");
			document.form1.submit();
		}
	</script>
</body>
</html>