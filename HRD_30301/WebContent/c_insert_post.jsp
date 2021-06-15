<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconnect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("EUC-KR");	
		String task = request.getParameter("task");
		String saleno = request.getParameter("saleno");
		String pcode = request.getParameter("pcode");
		String saledate = request.getParameter("saledate");
		String scode = request.getParameter("scode");
		String amount = request.getParameter("amount");
	%>
	<%
		try{
			if(task.equals("insert")){
				String sql = "insert into tbl_salelist_01 values(?,?,?,?,?)";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, saleno);
				pstmt.setString(2, pcode);
				pstmt.setString(3, saledate);
				pstmt.setString(4, scode);
				pstmt.setString(5, amount);
				pstmt.executeUpdate();
				conn.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		response.sendRedirect("index.jsp?section=enroll");
	%>
</body>
</html>