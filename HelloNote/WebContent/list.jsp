<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/list.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
	$(function() {
		var siteName = 'google';

		$('#goSite').on('click', function() {
			window.open('https://www.' + siteName);
		})
		
		$('#naver').on('click', function(){
			siteName='naver.com';
		})
		
		$('#lol').on('click', function(){
			siteName='kr.leagueoflegends';
		})
		
		$('#kbstar').on('click', function(){
			siteName="kbstar.com";
		})
		
		$('#daum').on('click', function(){
			siteName="daum.net";
		})

		$('#listButton').on('mouseenter', function() {
			$('li[name=listedItem]').each(function() {
				$(this).show();
			})
		})

		$('#listButton').on('click', function() {
			$('li[name=listedItem]').each(function() {
				$(this).hide();
			})
		})
	})
</script>
</head>
<body>
	<button class="btn-nav">
		<div class="bar arrow-top-r"></div>
		<div class="bar arrow-middle-r"></div>
		<div class="bar arrow-bottom-r"></div>
	</button>
	<div class="links-con">
		<!-- 		<a href="https://www.naver.com" target="_blank" class="nav new">사이트로 -->
		<!-- 			이동</a> -->
		<a id="goSite" class="nav new">사이트로 이동</a>
	</div>
	<aside class="left-side hidden hideNav">
		<div class="effects-list">
			<ul>
				<li class="item-divider" id="listButton">자주가는 사이트</li>
				<li class="item" id="naver" name="listedItem" style="display: none;">NAVER</li>
				<li class="item" id="daum" name="listedItem" style="display: none;">DAUM</li>
				<li class="item" id="lol" name="listedItem" style="display: none;">LOL</li>
				<li class="item" id="kbstar" name="listedItem"
					style="display: none;">BANK</li>



				<li class="item-divider">가끔 가는 사이트</li>
				<li class="item">YAHOO</li>
				<li class="item">GOOD</li>
				<li class="item">SHOP</li>


				<li class="item-divider">중요한 아이디</li>
				<li class="item">1</li>
				<li class="item">2</li>
				<li class="item">3</li>
				<li class="item">4</li>

				<li class="item-divider">안 중요한 아이디</li>
				<li class="item">1</li>
				<li class="item">2</li>
				<li class="item">3</li>
				<li class="item">4</li>


			</ul>
		</div>
	</aside>


	<aside class="right-side">
		<div class="text-con">
			<span class="underline-left">
				<div align="center">
					<table class="table table-striped "
						style="width: 50%; float: center;">
						<tr>
							<td align="center"><b>아이디:</b></td>
							<td align="center"><b>bs930702</b></td>
						</tr>
						<tr>
							<td align="center">비밀번호:</td>
							<td align="center">********
								<button>조회</button>
							</td>
						</tr>
						<tr>
							<td align="center">사이트:</td>
							<td align="center">www.naver.com</td>
						</tr>
						<tr>
							<td align="center">메모:</td>
							<td align="center">ㅇㄴㅇㄴㅁㅇㅇ</td>
						</tr>
						<tr>
							<td align="center"><a href="idmenu.jsp"
								class="btn btn-md btn-default">수정</a></td>
							<td align="center"><a onclick="self.close();"
								class="btn btn-md btn-default">닫기</a></td>
						</tr>
					</table>
				</div>
			</span>
		</div>
	</aside>

	<a href="https://codepen.io/tonkec" class="ua" target="_blank"> <i
		class="fa fa-user"></i></a>


	<script src="js/list.js"></script>
</body>
</html>