<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import= "project0318.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<% 
		out.print("<h3> myPoint3D 객체생성 <br> ");
		Point3D myPoint3D = new Point3D();
		out.print("<h3> myPoint3D 객체완료 <br> ");
		
		out.println("현재 myPoint3D.x : " + myPoint3D.getX() + "<br>");
		out.println("현재 myPoint3D.y : " + myPoint3D.getY() + "<br>");
		out.println("현재 myPoint3D.z : " + myPoint3D.getZ() + "<hr>");
		
		out.println("<h3> 멤버 변수를 통한 값 변경 </h3>");
		
		myPoint3D.x = 2;
		myPoint3D.y = 4;
		myPoint3D.z = 6;
		
		out.println("현재 myPoint3D.x : " + myPoint3D.getX() + "<br>" );
		out.println("현재 myPoint3D.y : " + myPoint3D.getY() + "<br>" );
		out.println("현재 myPoint3D.z : " + myPoint3D.getZ() + "<hr>" );
		
		out.println("<h3> 메소드를 통한 값 번경 </h3>");
		
		myPoint3D.setX(8);
		myPoint3D.setY(10);
		myPoint3D.setZ(12);
		
		
		out.println("현재 myPoint3D.x : " + myPoint3D.getX()+ "<br>");
		out.println("현재 myPoint3D.y : " + myPoint3D.getY()+ "<br>");
		out.println("현재 myPoint3D.z : " + myPoint3D.getZ()+ "<hr>");
		
	
	%>
</body>
</html>