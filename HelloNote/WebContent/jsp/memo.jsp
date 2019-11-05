<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/menu/memo.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		var modal = $('#myModal');
		var span = $('.close').eq(0);
		var $modal = document.getElementById('myModal');

		var i = 1;
		// 메모 클릭 시 팝업 모달 표시
		$('#memoul').on(
				'click',
				'li a',
				function() {
					console.log(this);
					$('#modal-title').remove();
					$('#modal-text').remove();
					// 팝업 표시
					modal.show();
					// 메모 안의 내용 불러옴(변수로 지정)
					console.log($(this).text());
					var $memos = $(this).text().trim().split(',');
					// 팝업에 메모 내용 append
					$('#modal-content').append(
							'<div style="width: 100%; margin-top: 10px;" id="modal-title">'
									+ $memos[0] + '</div>');
					$('#modal-content').append(
							'<div style="width: 100%; margin-top: 5px;" id="modal-text">'
									+ $memos[1].trim() + '</div>');
					$('#modal-content').focus();
				});
		
		$('#edit').on('click', function(){
			var $modalContent=$(this).parent();
			console.log($('#modal-title').text());
			$modalContent.append('<textarea rows="1" style="width: 100%" id="title-edit">+'+$modalContent.eq(2).text+'');
		})

		// x 누를 시 팝업 제거
		span.on('click', function() {
			modal.hide();

		})

		$('#add')
				.on(
						'click',
						function() {
							console.log('a');
							$('#memoul')
									.append(
											'<li class="memoli"><a id="memo'+i+'" class="memo"><h2 id="title'+i+'" class="title">Title,</h2><p id="text'+i+'" class="text">Text</p></a></li>');
							i = i + 1;
						});

		// 		$(window).click(function(e) {
		// 			if (e.target == modal) {
		// 				modal.hide();
		// 			}
		// 		})

		// 		window.onclick = function(event) {
		// 			if (event.target == modal) {
		// 				modal.style.display = "none";
		// 			}
		// 		}
	});
</script>
</head>
<body>
	<ul class="memoul" id="memoul">
		<li class="memoli"><a id="memo" class="memo">
				<h2 id="title">Title,</h2>
				<p id="text">Text</p>
		</a></li>
	</ul>
	<li class="icon"><i class="far fa-plus-square fa-4x" id="add"></i></li>
	<div class="modal" id="myModal">
		<div class="modal-content" id="modal-content">
			<button id="edit">편집</button>
			<span class="close">&times;</span>
		</div>
	</div>
</body>
</html>