<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table>
		<tr>
			<td><input type="radio" name="rad" value="name"> 상품명</td>
			<td><input type="text" name="name_v"></td>
		</tr>

		<tr>
			<td><input type="radio" name="rad" value="saledate">판매기간</td>
			<td><input type="date" name="saledate_v">~<input
				type="date" name="saledate_v"></td>
		</tr>

		<tr>
			<td><input type="radio" name="rad" value="saleno"> 비번호</td>
			<td><input type="text" name="saleno_v"></td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" onclick="checkv()" value="검색"></td>
		</tr>

	</table>
	<script type="text/javascript">
		function checkv() {
			var ch=null;
			
		}
	</script>
</body>
</html>