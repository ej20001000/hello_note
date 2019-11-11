<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="assets/css/menu/memo.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=480ceff9c2681fcc01d860ea5612d68e&libraries=services"></script>
<script>
	$(function() {
		var modal = $('#myModal');
		var span = $('#modalClose');
		var $modal = document.getElementById('myModal');
		// 메모 선택 변수
		var a = 0;
		// 메모 생성 변수(auto increment)
		var i = 1;
		// 카카오 맵 api geocoder 변수
		var geocoder = new kakao.maps.services.Geocoder();
		// 주소 변수 미리 선언
		var address;

		// 메모 클릭 시 팝업 모달 표시
		$('#memoul')
				.on(
						'click',
						'li a',
						function() {
							// 모달 팝업 안의 내용들이 존재 하면 다 지운다.
							$('#modal-title').remove();
							$('#modal-text').remove();
							$('#title-edit').remove();
							$('#text-edit').remove();
							$('#edit').remove();
							$('#edit-done').remove();
							$('#delete').remove();
							$('#addLocation').remove();
							$('#map').remove();
							// 팝업 표시
							modal.show();
							// 메모 안의 내용 불러옴(변수로 지정)
							var $memos = $(this).text().trim().split(',');
							// 팝업에 메모 내용 append
							$('#modal-content')
									.append(
											'<div style="width: 100%; margin-top: 20px;" id="modal-title" class="modal-title">'
													+ $memos[0] + '</div>');
							$('#modal-content')
									.append(
											'<div style="width: 100%; margin-top: 20px;" id="modal-text" class="modal-text">'
													+ $memos[1].trim()
													+ '</div>');
							$('#modal-content')
									.prepend(
											'<button id="delete" style="margin-left: 5px;">삭제</button>');
							$('#modal-content').prepend(
									'<button id="edit">편집</button>');
							$('#modal-content').focus();
							a = $(this).attr('id').replace(/memo/, '');

							$('#modal-content').focus();
						});
		// 편집
		$('#modal-content')
				.on(
						'click',
						'#edit',
						function() {
							var $modalContent = $(this).parent();
							$('#modal-title').hide();
							$('#modal-text').hide();
							$modalContent
									.append('<textarea rows="1" style="width: 100%" id="title-edit">'
											+ $('#modal-title').text()
											+ '</textarea>');
							$modalContent
									.append('<textarea rows="12" style="width: 100%" id="text-edit">'
											+ $('#modal-text').text()
											+ '</textarea>');
							$modalContent
									.append('<button id="addLocation">장소추가</button>');
							$('#edit').html('완료');
							$('#edit').attr('id', 'edit-done');
						});

		// 편집 시 장소 추가
		$('#modal-content')
				.on(
						'click',
						'#addLocation',
						function() {
							$(this)
									.before(
											'<div id="map" style="width: 100%; height: 400px;"></div>')
							var options = {
								center : new kakao.maps.LatLng(33.450701,
										126.570667),
								level : 15
							};
							var $container = $('#map');
							console.log($('#map'));
							console.log(document.getElementById('map'));
							console.log($container);
							var map = new kakao.maps.Map($container[0], options);

							kakao.maps.event.addListener(map, 'click',
									function(mouseEvent) {
										var clickXy = mouseEvent.latLng;
										var coord = new kakao.maps.LatLng(clickXy.Ha, clickXy.Ga);
										var callback = function(result, status) {
										    if (status === kakao.maps.services.Status.OK) {
										        console.log(result[0].address.address_name);
										    }
										};

										geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
									});

						})

		// 삭제
		$('#modal-content').on('click', '#delete', function() {
			$('#memo' + a).parent().remove();
			modal.hide();
		});

		// 편집 완료
		$('#modal-content').on(
				'click',
				'#edit-done',
				function() {
					var $modalContent = $(this).parent(), $titleEdit = $(
							'#title-edit').val(), $textEdit = $('#text-edit')
							.val();

					// 모달 안의 텍스트 내용 변경
					$('#modal-title').text($titleEdit);
					$('#modal-text').text($textEdit);

					// input 삭제
					$('#title-edit').remove();
					$('#text-edit').remove();
					$('#addLocation').remove();

					// map 삭제
					$('#map').remove();

					// 숨겨놨던 모달 내용들 표시
					$('#modal-title').show();
					$('#modal-text').show();

					// 편집 완료 버튼을 편집버튼으로 변환
					$('#edit-done').html('편집');
					$('#edit-done').attr('id', 'edit');

					// 메모 안의 내용 변경
					$('#title' + a).text($titleEdit + ',');
					$('#text' + a).text($textEdit);
				});

		// x 누를 시 팝업 제거
		span.on('click', function() {
			modal.hide();

		})

		$('#add')
				.on(
						'click',
						function() {
							$('#memoul')
									.append(
											'<li class="memoli"><a id="memo'+i
											+'" class="memo"><div class="title-box"><h3 id="title'+i
											+'" class="title">Title,</h3></div><div class="text-box"><p id="text'+i
											+'" class="text">Text</p></div></a></li>');
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
				<div class="title-box">
					<h3 id="title" class="title">Title,</h3>
				</div>
				<div class="text-box">
					<p id="text" class="text">Text</p>
				</div>

		</a></li>
	</ul>
	<li class="icon"><i class="fas fa-plus-circle fa-4x" id="add"></i></li>
	<div class="modal" id="myModal" style="z-index: 6;">
		<div class="modal-content" id="modal-content">
			<span class="close" id="modalClose"
				style="float: right; width: 30px;">&times;</span>
		</div>
	</div>
</body>
</html>