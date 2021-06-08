<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.sql.*" %>
    <%@include file = "connect.jsp" %>
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
	out.print(rs.getString(1) + " | ");
	out.print(rs.getString(2) + " | ");
	out.print(rs.getString(3) + " | ");
	out.print(rs.getString(4) + " | ");
	out.print(rs.getString(5) + "<br>");
}
%>

</body>
</html>
