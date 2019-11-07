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
		var i = 1;

		// 추가 버튼 누르면 추가 폼 나옴
		$('#add')
				.on(
						'click',
						function() {
							if ($('.ddayInput').length) {
								alert('위에 있는거 먼저 치셈ㅇㅇ');
								return;
							}

							$('#add')
									.before(
											'<div id="dday'+i
											+'"><input style="margin-right: 100px;" type="text" class="ddayInput" id="ddayName'+i
											+'"><input type="date" id="ddayDate'+i
											+'"><button id="ddaySubmit">등록</button></div>');
							i = i + 1;
						});

		// 날짜 및 이름 입력 후 확인 버튼 누르면 출력  변환
		$('#mainContainer').on(
				'click',
				'div button',
				function() {
					// 입력한 날짜 값 변수 지정
					var inputDate = new Date($(this).parent().children().eq(1)
							.val());
					// 현재 날짜 값 불러옴
					var todate = new Date();
					// 날짜 갭 가져옴
					var gap = todate.getTime() - inputDate.getTime();
					// dday 값으로 변환
					gap = Math.floor(gap / (1000 * 60 * 60 * 24));

					// 폼 체크
					if (isNaN(inputDate.getTime())
							|| !$(this).parent().children().eq(0).val()) {
						alert('값 입력부터 제대로 하시지?');
						return;
					}

					// 입력 날짜가 현재 날짜 전 이면
					if (gap > 0) {
						$('#ddayTable').append(
								'<tr><td style="padding-right: 100px">'
										+ $(this).parent().children().eq(0)
												.val() + '</td><td>D+' + gap
										+ '</td></tr>');
					}
					// 입력 날짜가 현재 날짜면
					else if (gap == 0) {
						$('#ddayTable').append(
								'<tr><td style="padding-right: 100px">'
										+ $(this).parent().children().eq(0)
												.val()
										+ '</td><td>D-DAY</td></tr>');
					}
					//입력 날짜가 후면
					else if (gap < 0) {
						$('#ddayTable').append(
								'<tr><td style="padding-right: 100px">'
										+ $(this).parent().children().eq(0)
												.val() + '</td><td>D' + gap
										+ '</td></tr>');
					}

					//입력 폼들 지움
					$(this).parent().children().eq(1).remove();
					$(this).parent().children().eq(0).remove();
					$(this).remove();
				})

		//순서 나열은 DB단위에서 해결
	})
</script>
</head>
<body>
	<div id="mainContainer" align="center">
		<table id="ddayTable"></table>
		<i class="far fa-plus-square fa-4x" id="add"></i>
	</div>
</body>
</html>