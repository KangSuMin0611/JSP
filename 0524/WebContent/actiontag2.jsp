<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		��Ŭ��� ������ �޽��� �Դϴ�.! <br>
	<% out.print("�ϳ� <br>"); %>
	<% out.print("��	<br>"); %>
	<% out.print("�� <br>"); %>
	
		�������� ����մϴ�.  <br>
		
	<jsp:include page="include.jsp"></jsp:include>	
			
		���� ���������~ <br>
	<% out.print("�ϳ� <br>"); %>
	<% out.print("��	<br>"); %>
	<% out.print("�� <br>"); %>
	<% out.print("��! <br>"); %>
			
</body>
</html>