<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/list2.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

	<script>
	
	
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



				<li class="item-divider" id="listButton1">가끔 가는 사이트</li>
				<li class="item" name="listedItem1" style="display: none;">YAHOO</li>
				<li class="item" name="listedItem1" style="display: none;">GOOD</li>
				<li class="item" name="listedItem1" style="display: none;">SHOP</li>


				<li class="item-divider" id="listButton2">중요한 아이디</li>
				<li class="item" name="listedItem2" style="display: none;">1</li>
				<li class="item" name="listedItem2" style="display: none;">2</li>
				<li class="item" name="listedItem2" style="display: none;">3</li>
				<li class="item" name="listedItem2" style="display: none;">4</li>

				<li class="item-divider" id="listButton3">안 중요한 아이디</li>
				<li class="item" name="listedItem3" style="display: none;">1</li>
				<li class="item" name="listedItem3" style="display: none;">2</li>
				<li class="item" name="listedItem3" style="display: none;">3</li>
				<li class="item" name="listedItem3" style="display: none;">4</li>


			</ul>
		</div>
		<div class="my-2 my-md-3">
						<button id="addMenu" class="btn btn-primary" onclick="addMenu()">+</button>
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


</body>
	<script src="js/list2.js"></script>
</html>