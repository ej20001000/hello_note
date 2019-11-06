<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script>
	$(function() {
		var now = new Date();
		var i = 1;
		console.log(now);

		$('#add')
				.on(
						'click',
						function() {
							$('#mainContainer')
									.prepend(
											'<div id="dday'+i
											+'"><input type="text" id="ddayName'+i
											+'"><input type="date" id="ddayDate'+i
											+'"><button id="ddaySubmit">등록</button></div>');
							i = i + 1;
						});

		$('#mainContainer').on('click', '#ddaySubmit', function() {
			var inputDate = new Date($(this).parent().children().eq(1).val());
			var todate = new Date();
			console.log(inputDate.getTime());
			
			if(inputDate.getTime() > )
		})
	})
</script>
</head>
<body>
	<div id="mainContainer" align="center">
		<i class="far fa-plus-square fa-4x" id="add"></i>
	</div>
</body>
</html>