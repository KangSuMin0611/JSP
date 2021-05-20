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
		if(session.getAttribute("id") == null){
	%>
		<form action="loginmove.jsp" method="post">
			<table border="1">
				<tr>
					<td>아이디 :</td>
					<td> <input type="text" name="id"> </td>
				</tr>
				<tr>
					<td>비밀번호 :</td>
					<td> <input type="password" name="pw"> </td>
				</tr>
				<tr>
					<td colspan="2" align="right"><input type="submit" value="로그인"> </td>
				</tr>
			</table>
		</form>
	<%
		} else{
	%>
		<h3>[<%=session.getAttribute("id") %>] 님 환영합니다.</h3>
		<table>
			<tr>
				<td>
					<form action="logincheck.jsp" method="post">
						<input type="submit" value="로그인 상태 확인">
					</form>
				</td>
				
				<td>
					<form action="logout.jsp" method="post">
						<input type="submit" value="로그아웃">
					</form>
				</td>
			</tr>
		</table>		
	<%}%>
</body>
</html>