<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<% 
		String id =	request.getParameter("id");
		Date today  =  new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		
		out.print("["+ id +"]님 환영합니다. <br>");
		out.print("접속하신 날짜 및 시간은" + date.format(today)+ "입니다.");
	%>
	
	
	
</body>
</html>