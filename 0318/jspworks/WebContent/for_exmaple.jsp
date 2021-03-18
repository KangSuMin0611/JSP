<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Break문, Continue문 예시</title>
</head>
<body>
	<% 
		for(int i = 1; i <= 9; i++){
			
			if( i == 5){
				out.println("continue문을 만났습니다. 5단을 건너뜁니다. <br>");
				continue;
				
				//out.println("break문을 만났습니다. 반복을 종료합니다. <br/> ");
				//break;
			}
			
			out.print("2 곱하기 " + i + "은 ");
			out.print(2*i);
			out.print("<br/>");
			
		}
	%>
</body>
</html>