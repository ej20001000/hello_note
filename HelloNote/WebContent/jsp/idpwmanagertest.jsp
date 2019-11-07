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

</head>
    <script>
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
				<td align="center"><a onclick="popup()" class="btn btn-md btn-default">상세정보</a></td>
				<td align="center"><a href="#" class="btn btn-md btn-default">메뉴열기</a></td>
			</tr>
		</table>
	</div>


</body>

</html>