<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	/* �Է�â */
	var point;
	point = prompt("����", "������ �Է��ϼ���");

	if (point >= 90) {
		document.write("A����Դϴ�.");
	} else if (point >= 80) {
		document.write("B����Դϴ�.");
	} else if (point >= 70) {
		document.write("C����Դϴ�.");
	} else if (point >= 60) {
		document.write("D����Դϴ�.");
	} else if (point >= 50) {
		document.write("E����Դϴ�.");
	}
</script>
</head>
<body>
</body>
</html>