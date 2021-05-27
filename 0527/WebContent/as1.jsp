<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<jsp:useBean id="myMember" class="javaBean.Member" />
	<!-- Member myMember = new Member(); -->
	
	<jsp:setProperty name="myMember" property="id" value="OKJSP"/>
	<jsp:setProperty property="password" name="myMember" value="OKpassword"/>
	
	<%
		//myMember.setId("OKJSP");
		//myMember.setPassword("OKpassword");  
	%>
	
	
	ID: <jsp:getProperty property="id" name="myMember"/> <br>
	PW: <jsp:getProperty property="password" name="myMember"/>

	<%-- ID: <%= myMember.getId() %>
	password <%= myMember.getPassword() %>	
	 --%>
</body>
</html>