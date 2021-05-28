<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%@ include file="import.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
			
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("select * from teacher");
		
		while(rs.next()){
			out.print(rs.getString(1) + ",");
			out.print(rs.getString(2) + ",");
			out.print(rs.getString(3) + ",");
			out.print(rs.getString(4) + "<br>");
		}
		
		rs.close();
		stmt.close();
		conn.close();
		
		/* if(conn!=null){ 			//연결 성공 여부
			out.print("연결 성공");
			conn.close();
		}else{
			out.print("연결 실패");
		} */
	%>
	
	
</body>
</html>