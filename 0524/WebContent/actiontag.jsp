<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		������ ������ �޽��� �Դϴ�.! <br>
	<% out.print("�ϳ� <br>"); %>
	<% out.print("��	<br>"); %>
	<% out.print("�� <br>"); %>
	
		�������� ����մϴ�.  <br>
		
		<jsp:forward page="forward.jsp"/>
		
		������ ������ �޽��� �Դϴ�.! <br>
	<% out.print("�ϳ� <br>"); %>
	<% out.print("��	<br>"); %>
	<% out.print("�� <br>"); %>
			
</body>
</html>