<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconnect.jsp"%>
<jsp:useBean id="sales" class="DTO_COFFEE.SalelistBean"></jsp:useBean>
<jsp:setProperty name="sales" property="*"></jsp:setProperty>
<%
try {

	String sql = "insert into tbl_salelist_01 values (?,?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);

	pstmt.setInt(1, sales.getSaleno());
	pstmt.setString(2, sales.getPcode());
	pstmt.setString(3, sales.getSalesdate());
	pstmt.setString(4, sales.getScode());
	pstmt.setInt(5, sales.getAmount());

	pstmt.executeUpdate();
	conn.close();

} catch (Exception e) {
	e.printStackTrace();
}
response.sendRedirect("index.jsp?section=enroll");
%>