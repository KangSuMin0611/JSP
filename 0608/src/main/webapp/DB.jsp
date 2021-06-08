<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import = "java.sql.*" %>
    <%@include file = "connect.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>DB</title>
</head>
<body>

<%
request.setCharacterEncoding("EUC-KR");

String pw = request.getParameter("pw");
String name = request.getParameter("name");
String birth = request.getParameter("birth");
String tel = request.getParameter("tel");

PreparedStatement pstmt = null;

try{
	String sql = "update member set pw=?, name=?, birth=?, phone=? where id='admin'";
	pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1, pw);
	pstmt.setString(2, name);
	pstmt.setString(3, birth);
	pstmt.setString(4, tel);
	
	int num = pstmt.executeUpdate();
	
	out.print(num + "개의 행이 수정되었습니다.");
}catch(Exception e){
	
}finally{
	if(conn!=null)
		conn.close();
}
%>
<br/>
<a href="DB2.jsp">확인하기</a>

</body>
</html>