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
		
		out.print("["+ id +"]�� ȯ���մϴ�. <br>");
		out.print("�����Ͻ� ��¥ �� �ð���" + date.format(today)+ "�Դϴ�.");
	%>
	
	
	
</body>
</html>