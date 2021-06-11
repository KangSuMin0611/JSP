<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ page import="DBPKG.Util"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		Connection conn = Util.getConnection();
		
		if(conn!=null){
			out.print("연결완료<br>");
		}
		else{
			out.print("연결실패<br>");
		}
	%> <!-- 미완성 -->
</body>
</html>