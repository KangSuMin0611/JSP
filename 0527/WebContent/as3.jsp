<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="userbean" class="javaBean.Member" scope="request"/>
	
	<jsp:setProperty property="*" name="userbean" />
 	
 
<%-- <jsp:setProperty property="password" name="userbean" /> --%>

<%-- <% userbean.setId(request.getParameter("id"));
 	userbean.setPassword(request.getParameter("password"));%> --%> 
 
<%
	if(userbean.checkUesr()){
%> 
		�α����� �Ǽ̽��ϴ�. <br>		
	<% 
		}else{ 
	%> 
		�α��ο� �����ϼ̽��ϴ�. <br>	
	<%
		}
	%>

</body>
</html>