<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* layout */
.black_overlay {
	display: none;
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	background-color: black;
	z-index: 1001;
	-moz-opacity: 0.8;
	opacity: .80;
	filter: alpha(opacity = 80);
}

.white_content {
	display: none;
	position: absolute;
	top: 25%;
	left: 25%;
	width: 50%;
	height: 50%;
	padding: 16px;
	border: 16px solid orange;
	background-color: white;
	z-index: 1002;
	overflow: auto;
}

/* body */
* {
	box-sizing: border-box;
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

/* Float four divTableCells side by side */
.divTableCell {
	float: left;
	width: 50%;
	padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.divTableRow {
	margin: 0 -5px;
}

/* Clear floats after the divTableCells */
.divTableRow:after {
	content: "";
	display: table;
	clear: both;
}

/* Responsive divTableCells */
@media screen and (max-width: 600px) {
	.divTableCell {
		width: 100%;
		display: block;
		margin-bottom: 20px;
	}
}

/* Style the counter cards */
.card {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	padding: 16px;
	text-align: center;
	background-color: #f1f1f1;
}
</style>
<script type="text/javascript">
	// popup event
	$(document).ready(function() {
		$('#close_this').click(function() {
			$('#pop_this').hide();
		});
		
	});
	function bank_menu_open() {
		var bank_menu = document.getElementById('bank_menu');
		var fade2 = document.getElementById('fade2');
		fade2.style.display='block';
		bank_menu.style.display='block';
	}
	function bank_menu_close() {
		var bank_menu = document.getElementById('bank_menu');
		var fade1 = document.getElementById('fade2');
		fade1.style.display='none';
		bank_menu.style.display='none';
	}
	function insert_bank_open(){
		var insert_bank = document.getElementById('insert_bank');
		var fade1 = document.getElementById('fade1');
		fade1.style.display='block';
		insert_bank.style.display='block';
	}
	function insert_bank_close(){
		var insert_bank = document.getElementById('insert_bank');
		var fade1 = document.getElementById('fade1');
		fade1.style.display='none';
		insert_bank.style.display='none';
	}
	function update_bank_open(){
		bank_menu_close();
		insert_bank_open();
	}
	
</script>
</head>
<body>

	<p></p>
	<div class="card" id="" onclick="" onfocus="">
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell">월급통장</div>
					<div class="divTableCell">신한카드</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">110-327-124876</div>
					<div class="divTableCell">강연우</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">

						<input type="button" value="클립보드 복사">
					</div>
					<div class="divTableCell">
						<input type="button" value="메뉴열기" onclick="bank_menu_open()">
					</div>
				</div>
			</div>
		</div>
	</div>
	<p></p>
	<div class="card" onclick="" onfocus="">
		<div class="divTable">
			<div class="divTableBody">
				<div class="divTableRow">
					<div class="divTableCell">세금통장</div>
					<div class="divTableCell">신한카드</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">110-685-178976</div>
					<div class="divTableCell">강연우</div>
				</div>
				<div class="divTableRow">
					<div class="divTableCell">

						<input type="button" value="클립보드 복사">
					</div>
					<div class="divTableCell">
						<input type="button" value="메뉴열기" onclick="bank_menu_open()">

					</div>

				</div>
			</div>
		</div>
	</div>

	<div align="right">
		<img src="img/plus_ico.png" width="60" height="60"
			onclick="insert_bank_open()"
			style="cursor: pointer;"> <img src="img/update_ico.png"
			width="60" height="60"
			onclick="bank_menu_open()"
			style="cursor: pointer;">
	</div>

	<!--  Popup layout format -->
	<!--     <a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">here</a></p> -->
	<form action="">
		<div id="insert_bank" class="white_content" align="center">

			<input type="text" placeholder="구분이름"> <br> <input
				type="text" placeholder="은행명"> <br> <input type="text"
				placeholder="계좌번호"> <br> <input type="text"
				placeholder="소유자 이름"> <br> 암호 등 중요한 정보는 입력하지마세요! <br>
			<input type="text" placeholder="메모내용"> <br> <br> <input
				type="button" value="등록"> &nbsp; <input type="button"
				value="초기화"> &nbsp; <input type="button" value="취소"
				onclick="insert_bank_close()">

		</div>
		<!-- 			<a href="javascript:void(0)"				onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a> -->
		<div id="fade1" class="black_overlay"
			onclick="insert_bank_close()"></div>
	</form>

	<form action="">
		<div id=bank_menu class="white_content" align="center">

			<input type="button" value="공유"> <br> 
			<input type="button" value="편집" onclick="update_bank_open()"> <br> 
			<input type="button" value="삭제" onclick=""> <br> 
			<input type="button" value="취소" onclick="bank_menu_close()"> <br> <br>
			
			
			
		</div>
		<!-- 			<a href="javascript:void(0)"				onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a> -->
		<div id="fade2" class="black_overlay"
			onclick="bank_menu_close()"></div>
	</form>


</body>


</html>
