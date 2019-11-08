<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title></title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* The Modal (background) */
.modal {
   display: none; /* Hidden by default */
   position: fixed; /* Stay in place */
   z-index: 1; /* Sit on top */
   left: 0;
   top: 0;
   width: 100%; /* Full width */
   height: 100%; /* Full height */
   overflow: auto; /* Enable scroll if needed */
   background-color: rgb(0, 0, 0); /* Fallback color */
   background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
   background-color: #fefefe;
   margin: 15% auto; /* 15% from the top and centered */
   padding: 20px;
   border: 1px solid #888;
   width: 50%; /* Could be more or less, depending on screen size */
   word-break: break-all; /* 단어가 길면 줄바꿈 처리 */
}
/* The Close Button */
.close {
   color: #aaa;
   float: right;
   font-size: 28px;
   font-weight: bold;
}

.close:hover, .close:focus {
   color: black;
   text-decoration: none;
   cursor: pointer;
}
</style>
<script type="text/javascript"></script>
</head>
    <script>
    	$(function(){
    		$('#specification').on('click', function(){
    			$('#myModal').show();
    		})
    		
    	})
    
        function popup(){
            var url = "idmenu.jsp";
            var name = "popup test";
            var option = "width = 500, height = 500, top = 100, left = 200, location = no"
            window.open(url, name, option);
        }
    </script>

<body>

	<h1 align =center>사이트 관리</h1>
	<div style="padding-bottom: 20px"></div>

	<div align="center">
		<table  class="table table-striped " style="width:33%; float: left; margin-right: 50px" >
			<tr>
				<td align="center"><b>사이트</b></td>
				<td align="center"><b>ID</b></td>
			</tr>
			<tr>
				<td align="center">네이버</td>
				<td align="center">bs930702</td>
			</tr>
			<tr>
				<td align="center"><a href="idmenu.jsp" class="btn btn-md btn-default">상세정보</a></td>
				<td align="center"><a href="#" class="btn btn-md btn-default">메뉴열기</a></td>
			</tr>
		</table>
		<table class="table table-striped " style="width:30%; float: left;">
			<tr>
				<td align="center"><b>사이트</b></td>
				<td align="center"><b>ID</b></td>
			</tr>
			<tr>
				<td align="center">네이버</td>
				<td align="center">bs930702</td>
			</tr>
			<tr>
				<td align="center"><a id="specification" class="btn btn-md btn-default">상세정보</a></td>
				<td align="center"><a href="#" class="btn btn-md btn-default">메뉴열기</a></td>
			</tr>
		</table>
	</div>
<div class="modal" id="myModal">
      <div class="modal-content" id="modal-content">
         <span class="close">&times;</span>
         <div align="center">
		<table  class="table table-striped " style="width:50%; float: center;" >
			<tr>
				<td align="center"><b>아이디:</b></td>
				<td align="center"><b>bs930702</b></td>
			</tr>
			<tr>
				<td align="center">비밀번호:</td>
				<td align="center">********<button>조회</button></td>
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
				<td align="center"><a href="idmenu.jsp" class="btn btn-md btn-default">수정</a></td>
				<td align="center"><a onclick="self.close();" class="btn btn-md btn-default">닫기</a></td>
			</tr>
		</table>
	</div>
      </div>
   </div>

</body>

</html>