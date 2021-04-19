<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page buffer="1kb" autoFlush="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	1. 버퍼 크기: <%= out.getBufferSize() %> <br>
	2. 남아있는크기:  <%= out.getRemaining() %> <br>
	
	<% //out.flush(); %>
	3. flush 실횅 후 크기: <%= out.getRemaining() %> <br>
	
	<% //out.clearBuffer(); %>
	4. clear 실행 후 크기: <%= out.getRemaining() %> <br>
	
	<% //out.close(); %>
	5. close 실행 후 크기: <%= out.getRemaining() %>

	<%
		for(int i=0; i<10000;i++){
			out.print(i+" ");
		}
	%>
	
</body>
</html>