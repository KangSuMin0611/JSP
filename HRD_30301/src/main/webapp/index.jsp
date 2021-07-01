<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
request.setCharacterEncoding("UTF-8");
String section = request.getParameter("section");
//section = (section==null)?"":section;
if (section == null) {
	section = "";
}
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<jsp:include page="nav.jsp"></jsp:include>
	<section>
		<%
		switch (section) {
		case "enroll":
		%>
		<jsp:include page="c_insert.jsp"></jsp:include>
		<%
		break;
		case "sales":
		%>
		<jsp:include page="c_select.jsp"></jsp:include>
		<%
		break;
		case "shopsales":
		%>
		<jsp:include page="c_select_by_shop.jsp"></jsp:include>
		<%
		break;
		case "productsales":
		%>
		<jsp:include page="c_select_by_product.jsp"></jsp:include>
		<%
		break;
		default:
		%>
		<%
		}
		%>
	</section>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>