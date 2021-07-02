<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	/* 입력창 */
	var point;
	point = prompt("점수", "점수를 입력하세요");

	if (point >= 90) {
		document.write("A등급입니다.");
	} else if (point >= 80) {
		document.write("B등급입니다.");
	} else if (point >= 70) {
		document.write("C등급입니다.");
	} else if (point >= 60) {
		document.write("D등급입니다.");
	} else if (point >= 50) {
		document.write("E등급입니다.");
	}
</script>
</head>
<body>
</body>
</html>