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
			<td><input type="date" name="saledate_v">~<input type="date" name="saledate_v"></td>
		</tr>

		<tr>
			<td><input type="radio" name="rad" value="saleno"> 비번호</td>
			<td><input type="text" name="saleno_v"></td>
		</tr>
		<tr>
			<td colspan="2"> <input type="button" onclick="checkv()" value="검색"></td>
		</tr>

	</table>
	<script type="text/javascript">
		function checkv() {
			var ch = null; /* radio 선택 확인 변수*/
			var cv = null; /* 빈칸에 값 */
			var card = document.getElementsByName('rad'); 	/* 전부 검색 */
			var cvalue = "index.jsp?section=sales"; //고정적으로 사용
			
			for(var i=0;i<crad.length;i++){
				if(crad[i].checkd)
					ch=crad[i].value;
			}
			
			if(ch==null){
				alert('검색 요건을 선택하지 않았습니다.');
				return false;
			}
			else{  
				switch(ch){
				case "name":
					cv = document.getElementByname('name_v');
					// cvalue += "&rad" + ch + "&name_v" + cv[0].value;
					cvalue = cvalue + "&rad=" + ch + "&name_v=" + cv[0].value; //cvalue변수 -> url 이다.
					break;
				}
				case "saledate":
					cv = document.getElementByname('saledate_v');
					cvalue = cvalue + "&rad=" + ch + "&saledate=" + cv[0].value + ":" + cv[1].value;
					break;
				}
				case "saleno":
					cv = document.getElementByname('saleno_v');
					cvalue = cvalue + "&rad=" + ch + "&saleno_v=" + cv[0].value;
					break;
				}
				opener.location.href = cvalue;
				window.close();
			}
			
			
		}
	</script>
</body>
</html>