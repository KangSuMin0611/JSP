<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file = "example.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");	
	
		String id = request.getParameter("ID");
		String pw = request.getParameter("PW");
		String name = request.getParameter("NAME");
		String birth = request.getParameter("BIRTH");
		String phone = request.getParameter("PHONE");
	
	
	PreparedStatement pstmt = null;
	String sql = "insert into member values(?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);

	pstmt.setString(1, id);
	pstmt.setString(2, pw);
	pstmt.setString(3, name);
	pstmt.setString(4, birth);
	pstmt.setString(5, phone);
	
	int num = pstmt.executeUpdate();
	out.print(num + "행이 추가 되었습니다.");
	
	conn.close();
	%>
	
	<a href="NewFile.jsp">확인하기</a>
</body>
</html>