<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	로그인 되었습니다. 환영합니다. <hr>
	<h3>현재 접속하신 id는 [<%= session.getAttribute("id") %>]입니다.</h3> <hr>
	<h3>현재 세션아이디는 [<%=session.getId() %>] 입니다.</h3> 
		<table>
			<tr>
				<td>
					<form action="login.jsp" method="post">
						<input type="submit" value="첫 화면 으로">
					</form>
				</td>
				
				<td>
					<form action="logout.jsp" method="post">
						<input type="submit" value="로그아웃">
					</form>
				</td>
			</tr>
		</table>	
</body>
</html>