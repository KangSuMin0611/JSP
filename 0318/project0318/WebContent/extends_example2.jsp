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
		out.print("<h3> myPoint3D ��ü���� <br> ");
		Point3D myPoint3D = new Point3D();
		out.print("<h3> myPoint3D ��ü�Ϸ� <br> ");
		
		out.println("���� myPoint3D.x : " + myPoint3D.getX() + "<br>");
		out.println("���� myPoint3D.y : " + myPoint3D.getY() + "<br>");
		out.println("���� myPoint3D.z : " + myPoint3D.getZ() + "<hr>");
		
		out.println("<h3> ��� ������ ���� �� ���� </h3>");
		
		myPoint3D.x = 2;
		myPoint3D.y = 4;
		myPoint3D.z = 6;
		
		out.println("���� myPoint3D.x : " + myPoint3D.getX() + "<br>" );
		out.println("���� myPoint3D.y : " + myPoint3D.getY() + "<br>" );
		out.println("���� myPoint3D.z : " + myPoint3D.getZ() + "<hr>" );
		
		out.println("<h3> �޼ҵ带 ���� �� ���� </h3>");
		
		myPoint3D.setX(8);
		myPoint3D.setY(10);
		myPoint3D.setZ(12);
		
		
		out.println("���� myPoint3D.x : " + myPoint3D.getX()+ "<br>");
		out.println("���� myPoint3D.y : " + myPoint3D.getY()+ "<br>");
		out.println("���� myPoint3D.z : " + myPoint3D.getZ()+ "<hr>");
		
	
	%>
</body>
</html>