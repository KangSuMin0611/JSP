<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("EUC-KR");
	
	Statement stmt = null;
	int num;
		
	try {

		stmt = conn.createStatement();
		
		String sno = request.getParameter("sno");
		String sname = request.getParameter("sname");
		String grade = request.getParameter("grade");
		String phone = request.getParameter("phone");
		
		String sql = "insert into student values('"+ sno +"', '"+ sname +"', '" +grade+ "', '" +phone+ "' )";
		num = stmt.executeUpdate(sql);
			//insert into student('s004', '강수민', '3', '010-0000-1111');
			out.print(num + "개의 행이 추가 되었습니다. <br> ");

	} catch (Exception e) {

	} finally {
		if(conn!=null){conn.close();}
	}
	%>
	<a href="selectpage.jsp">확인하기</a>
	<!-- //ㅁ.ㅁ// -->
</body>
</html>