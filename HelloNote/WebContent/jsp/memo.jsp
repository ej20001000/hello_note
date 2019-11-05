<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../assets/css/menu/memo.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		$('#title').click(
				function() {
					console.log($(this).eq(0));
					$('#title').hide()
					$('#memo').prepend(
							'<input type="text" value="' + $(this).eq(0).text()
									+ '" id="title_input">');
					$('input').focus();
					$('#title_input').keypress(function(e) {
						if (e.keyCode == 13) {
							var title = $('#title_input').val();
							$('#title').html(title);
							$('#title').show()
							8;
							$('#title_input').remove();
						}
					});
				});

	});
</script>
</head>
<body>
	<ul>
		<li><a id="memo">
				<h2 id="title">Title</h2>
				<p id="content">Text</p>
		</a></li>
	</ul>
</body>
</html>