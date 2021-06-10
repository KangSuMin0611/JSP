<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
request.setCharacterEncoding("utf-8");

String section = request.getParameter("section");
if (section == null) {
	section = "";
}
%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css.css">
</head>
<body>
	<jsp:include page="header.jsp" />
	<jsp:include page="nav.jsp" />
	<section>
		<%
		switch (section) {
		case "enroll":
		%>
		<jsp:include page="c_insert.jsp" />
		<%
		break;
		case "sales":
		%>
		<jsp:include page="c_select.jsp" />
		<%
		break;
		case "shopsales":
		%>
		<jsp:include page="c_select_by_shop_jsp" />
		<%
		break;
		case "productsales":
		%>
		<jsp:include page="c_select_by_product.jsp" />
		<%
		break;
		default:
		%>
		안녕안녕
		<%
		}
		%>
	</section>
	<jsp:include page="footer.jsp" />
</body>
</html>
