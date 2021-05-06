<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; utf-8");	
	
		String id= request.getParameter("id");
		String pw= request.getParameter("pw");
		String grade= request.getParameter("grade");
		String grade_name= request.getParameter("grade_name");
	%>
	<h3>[<%=id%>(<%=grade_name%>)] 접속중 입니다.</h3>
	<%
		if(grade. equals("admin")){
	%>
		<input type="button" value="사이트 관리">
		<input type="button" value="회원관리">
		<input type="button" value="자유 게시판">
		<input type="button" value="회원 게시판">
	<%
		} else if(grade.equals("member")){
	%>	
		<input type="button" value="자유 게시판">
		<input type="button" value="회원 게시판">
	<%
		}else {
	%>
		<input type="button" value="자유 게시판">
	<%
		}
	%>	
</body>
</html>