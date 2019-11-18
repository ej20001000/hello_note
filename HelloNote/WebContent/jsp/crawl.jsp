<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script>
	$.ajax({
		type : 'GET',
		url : 'https://openapi.open-platform.or.kr/account/balance',
		contentType : 'application/x-www-form-urlencoded;charset=UTF-8'
	})
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id='div'>

</div>
</body>
</html>