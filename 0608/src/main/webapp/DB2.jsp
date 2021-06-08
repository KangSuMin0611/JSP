<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@page import="java.sql.*"%>
<%@include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>확인하는 곳</title>
</head>
<body>

	<%
Statement stmt = conn.createStatement();
String sql = "select * from member";

ResultSet rs = stmt.executeQuery(sql);

while(rs.next()){
%>

	<table border="1">
		<tr>
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=rs.getString(3) %></td>
			<td><%=rs.getString(4) %></td>
			<td><%=rs.getString(5) %></td>
		</tr>
	</table>



	<% 
}
%>

</body>
</html>
