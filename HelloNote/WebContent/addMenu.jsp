<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css' href='assets/css/radiobox.css'>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js">
	
</script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
</head>
<body>
<br>
	<div class="col-md-4">
		<div class="col-md-6">
			<input type="text" id="menuName" name="menuName"> : 메뉴 이름
			<div class="funkyradio">
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio1" checked /> <label
						for="radio1">사이트 관리</label>
				</div>
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio2" /> <label
						for="radio2">체크 리스트</label>
				</div>
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio3" /> <label
						for="radio3">기념일 관리</label>
				</div>
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio4" /> <label
						for="radio4">메모 관리</label>
				</div>
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio5" /> <label
						for="radio5">내 계좌 번호 관리</label>
				</div>
				<div class="funkyradio-primary">
					<input type="radio" name="radio" id="radio6" /> <label
						for="radio6">캘린더</label>
				</div>
			</div>
		</div>
	</div>
	<br>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit">생성</button>
</body>
</html>