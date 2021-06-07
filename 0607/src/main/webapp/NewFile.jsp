<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="example.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	Statement stmt = conn.createStatement();

	String sql = "Select * from member";
	ResultSet rs = stmt.executeQuery(sql);

	String id = request.getParameter("ID");
	String pw = request.getParameter("PW");
	String name = request.getParameter("NAME");
	String birth = request.getParameter("BIRTH");
	String phone = request.getParameter("PHONE");

	while (rs.next()) {
	%>
	<table border="1">
		<tr>
			<td><%=id%></td>
			<td><%=pw%></td>
			<td><%=name%></td>
			<td><%=birth%></td>
			<td><%=phone%></td>
		</tr>
	</table>
	<%
	}
	%>


</body>
</html>