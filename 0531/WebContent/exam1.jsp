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

	// SQL문을 실행하기 위한 Statment 인스턴스 획득
	Statement stmt = conn.createStatement();

	// Statement 인스턴스를 통해 실행한 SQL문의 결과를 ResuleSet에 반환
	String sql = "select * from student";
	ResultSet rs = stmt.executeQuery(sql);

	// 반환된 결과를 ResultSet의 메소드와 while 반복문을 통해 출력
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
		 ctrl+Shift+f 자동 줄바꿈
		 alt+Shift+y 코드길때
		 ctrl+ '+','-' 폰트 크기
	 -->
</body>
</html>

