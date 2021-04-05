<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립틀릿 예시 </title>
</head>
<body>

	<% 
	int num = Integer.parseInt(request.getParameter("num"));
	String hello = request.getParameter("str");
	
	//int num 두줄 축소
	/* String num = request.getParameter("num");
	int num = Integer.parseInt(num); */
	
	
	for(int i=1; i<=num; i++){
		out.print("<h" + i + ">" + hello  + "</h" + i + ">");
		if( i == num){			
	%>
		<h1> 스크립틀릿 내 for문의 마지막 수행입니다.</h1>
	<%
		} else{
	%>
		<h1> 스크립틀릿 내  for문 수행중입니다.</h1>
	<% 
			}
		}
	%>
	
</body>
</html>


<!-- 스크립틀릿 --> 