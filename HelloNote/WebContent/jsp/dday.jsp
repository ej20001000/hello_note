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
<link rel="stylesheet" type="text/css"
	href="../assets/css/menu/dday.css">
<link
	href="https://fonts.googleapis.com/css?family=Fira+Sans|Jua&display=swap"
	rel="stylesheet">
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

							$('#ddayTable')
									.append(
											'<tr id="dday'+i
											+'"><td><input style="width: 100%;" type="text" class="ddayInput" id="ddayNameInput"></td><td style="width: 10%;" class="theDay"><input type="date" id="ddayDateInput"></td></tr>');
							$('#add').hide();
							$('#confirm').show();

						});

		// 날짜 및 이름 입력 후 확인 버튼 누르면 출력  변환
		$('#confirm').on('click', function() {
			// 입력한 날짜 값 변수 지정
			var inputDate = new Date($('#ddayDateInput').val());
			// 현재 날짜 값 불러옴
			var todate = new Date();
			// 입력 이름 변수
			var inputName = $('#ddayNameInput').val();
			// 날짜 갭 가져옴
			var gap = todate.getTime() - inputDate.getTime();
			// dday 값으로 변환
			gap = Math.floor(gap / (1000 * 60 * 60 * 24));

			// 폼 체크
			if (isNaN(inputDate.getTime()) || !inputName) {
				alert('값 입력부터 제대로 하시지?');
				return;
			}

			// 입력 날짜가 현재 날짜 전 이면
			if (gap > 0) {
				$('#dday' + i).children().eq(0).append(inputName);
				$('#dday' + i).children().eq(1).append('D+' + gap);
			}
			// 입력 날짜가 현재 날짜면
			else if (gap == 0) {
				$('#dday' + i).children().eq(0).append(inputName);
				$('#dday' + i).children().eq(1).append('D-DAY');
			}
			//입력 날짜가 후면
			else if (gap < 0) {
				$('#dday' + i).children().eq(0).append(inputName);
				$('#dday' + i).children().eq(1).append('D' + gap);
			}

			//입력 폼들 지움
			$('#ddayNameInput').remove();
			$('#ddayDateInput').remove();
			$('#confirm').hide();
			$('#add').show();

			i = i + 1;
		})

		//순서 나열은 DB단위에서 해결
	})
</script>
</head>
<body>
	<div id="mainContainer" align="center">
		<table id="ddayTable" style="width: 40%"></table>
		<i class="far fa-plus-square fa-4x" id="add"></i> <i
			style="display: none;" class="far fa-check-square fa-4x" id="confirm"</i>
	</div>
</body>
</html>