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
	response.setContentType("text/html;charset=utf-8");
	%>

	<% String name= request.getParameter("name"); %> 
	<% String pwd= request.getParameter("pwd"); %> 
	<% String gender= request.getParameter("gender"); %>   
	<% String job= request.getParameter("job"); %> 
	<% String[] interest= request.getParameterValues("interest"); %>
	
	이름: 	<%= name %> <br>
	비번: 	<%= pwd %> <br>
	
	성별: 	<%
		if(gender.equals("man"))
			out.print("남자");
		else
			out.print("여자");
	%> <br>
	
	직업:  <% 
		if(job.equals("1"))
				out.print("기타");
	
		else if(job.equals("2"))
			out.print("학생");
	
		else if(job.equals("3"))
			out.print("직장인");
	
		else if(job.equals("4"))
			out.print("강사");
	
		else if(job.equals("5"))
			out.print("백수");
		
	%> <br>
	
	관심분야: <% 
		for(int i=0; i<interest.length;i++){
			out.print(interest[i] + "<br>");
		}
	%>	

</body>
</html>