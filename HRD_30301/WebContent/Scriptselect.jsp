<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	function check() {
		if (aa.selec.options[0].selected) { /* if문 외우기! (유효성검사 2가지 = c_insert.jsp 에 if문 , 이페이지 if문) */
			alert('선택하세요.');
			return false;
		}
		document.aa.submit();
	}
</script>
</head>
<body>
	<form action="" name="aa">
		<select name="selec">
			<option value="">선택하세요.</option>
			<option value="1">1</option>
			<option value="2">2</option>
			<option value="3">3</option>
		</select> <input type="button" value="전송" onclick="check()">
	</form>
</body>
</html>


<!-- select 페이지 스트립트 이동하는거 확인하는 페이지 -->

