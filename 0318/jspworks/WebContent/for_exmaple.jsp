<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Break��, Continue�� ����</title>
</head>
<body>
	<% 
		for(int i = 1; i <= 9; i++){
			
			if( i == 5){
				out.println("continue���� �������ϴ�. 5���� �ǳʶݴϴ�. <br>");
				continue;
				
				//out.println("break���� �������ϴ�. �ݺ��� �����մϴ�. <br/> ");
				//break;
			}
			
			out.print("2 ���ϱ� " + i + "�� ");
			out.print(2*i);
			out.print("<br/>");
			
		}
	%>
</body>
</html>