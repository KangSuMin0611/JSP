<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL RewritingLogin</title>
</head>
<body>
	
	<form action="URLRewritingLoginChk.jsp" method="get"  >
		아이디와 비밀번호를 입력하십시오. <hr>
		<table border="1">
		<tr>
			<td  align="center">아이디</td>
			<td> <input type="text" name="id"> </td>			
		</tr>
		<tr>
			<td align="center">비밀번호</td>
			<td> <input type="password" name="pw"> </td> 
		</tr>
		<tr>
			<td colspan="2"> <input  type="submit" value="확인"></td>
		</tr>
				
		</table>
	</form>
	
</body>
</html>