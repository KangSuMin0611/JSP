<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");

	// SQL���� �����ϱ� ���� Statment �ν��Ͻ� ȹ��
	Statement stmt = conn.createStatement();

	// Statement �ν��Ͻ��� ���� ������ SQL���� ����� ResuleSet�� ��ȯ
	String sql = "select * from student";
	ResultSet rs = stmt.executeQuery(sql);

	// ��ȯ�� ����� ResultSet�� �޼ҵ�� while �ݺ����� ���� ���
	while (rs.next()) {
		out.println(rs.getString(1) + " | ");
		out.println(rs.getString(2) + " | ");
		out.println(rs.getString(3) + " | ");
		out.println(rs.getString(4) + " <br> ");
	}

	rs.close();
	stmt.close();
	conn.close();
	%>

	<!-- 
		 ctrl+Shift+f �ڵ� �ٹٲ�
		 alt+Shift+y �ڵ�涧
		 ctrl+ '+','-' ��Ʈ ũ��
	 -->
</body>
</html>

