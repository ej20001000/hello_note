<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 관리</title>
<link rel="stylesheet" href="css/newlist.css">
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/newlist.js"></script>
</head>
<body>
	<main id="main">
	<div class="overlay"></div>
	<header class="header">
		<div class="search-box">
			<input placeholder="Search..."><span
				class="icon glyphicon glyphicon-search"></span>
		</div>
		<h1 class="page-title">
			<a>My Site List</a>
		</h1>
	</header>

	<div id="main-nano-wrapper" class="nano">
		<div class="nano-content">
			<ul class="message-list">
				<li class="blue-dot unread">
					<div class="col col-1">
						<span class="dot"></span>
						<div class="checkbox-wrapper">
							<input type="checkbox" id="chk1"> <label for="chk1"
								class="toggle"></label>
						</div>
						<div class="subject" style="left-margin: 10%">
							네이버<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
					</div>
					<div class="col col-2">
						<div class="subject">
							ID/PW<span class="teaser"></span>
						</div>
						<div class="date">11:49 am</div>
					</div>
				</li>
				<li class="green-dot unread">
					<div class="col col-1">
						<span class="dot"></span>
						<div class="checkbox-wrapper">
							<input type="checkbox" id="chk2"> <label for="chk2"
								class="toggle"></label>
						</div>
						<div class="subject">
							네이버<span class="star-toggle glyphicon glyphicon-star-empty"></span>
						</div>
					</div>
					<div class="col col-2">
						<div class="subject">
							ID/PW<span class="teaser"></span>
						</div>
						<div class="date">12:34 pm</div>
					</div>
				</li>
			</ul>
			<div align="center">
				<button class="button button-block" id="specification" type="button">Add</button>
				<button class="button button-block" id="no" type="button">Delete</button>
			</div>



			<a href="#" class="load-more-link">Show more Site List</a>
		</div>
	</div>
	</main>
	<div id="message" ondrop="drop(event)">
		<div class="header">
			<h1 class="page-title">
				<a
					class="icon circle-icon glyphicon glyphicon-chevron-left trigger-message-close"></a><a>ID/PW
					상세보기</a><span class="grey">(2)</span>
			</h1>
			<p>
				Site <a href="#">NAVER</a>
			<div class="date">11:49 am</div>
		</div>
		<div id="message-nano-wrapper" class="nano">
			<div class="nano-content">
				<ul class="message-container">
					<li class="sent">
						<div class="details">
							<div class="left">NAVER</div>
							<div class="right">
								<div class="date">11:49 am</div>
							</div>
						</div>
						<div class="message">
							<p>| ID : bs930702</p>
							<p>| PW : 1234</p>
							<p>| MEMO : 누구누구아이디</p>
							<button class="button button-block"
								style="width: 30% !important;">SITE 이동</button>
						</div>
						<div class="tool-box">
							<a href="#"
								class="circle-icon small glyphicon glyphicon-share-alt">수</a><a
								href="#"
								class="circle-icon small red-hover glyphicon glyphicon-remove">삭</a>
						</div>
					</li>
					<li class="received">
						<div class="details" ondrop="drop(event)">
							<div class="left">NAVER</div>
							<div class="right">
								<div class="date">12:34 pm</div>
							</div>
						</div>
						<div class="message">
							<p>| ID : bs930702</p>
							<p>| PW : 1234</p>
							<p>| MEMO : 누구누구아이디</p>
							<button class="button button-block"
								style="width: 30% !important;">SITE 이동</button>
						</div>
						<div class="tool-box">
							<a href="#"
								class="circle-icon small glyphicon glyphicon-share-alt">수</a><a
								href="#"
								class="circle-icon small red-hover glyphicon glyphicon-remove">삭</a>
						</div>
				</ul>
			</div>
		</div>
	</div>
	<div class="modal" id="myModal">
		<div class="modal-content" id="modal-content">
			<span class="close">&times;</span>
			<div align="center">
				<div class="container">
					<div class="form">
						<div class="tab-content">
							<div id="signup">
								<h1>Add Site</h1>
								<form action="/" method="post">
									<div class="top-row">
										<div class="field-wrap">
											<label> ID or Email<span class="req">*</span>
											</label> <input type="text" required autocomplete="off" />
										</div>

										<div class="field-wrap">
											<label> Password<span class="req">*</span>
											</label> <input type="text" required autocomplete="off" />
										</div>
									</div>
									<div class="field-wrap">
										<label> Name<span class="req">*</span>
										</label> <input type="password" required autocomplete="off" />
									</div>
									<div class ="field-wrap"><label> Memo<span class="req">*</span></label></div>
									<div class="field-wrap">
										<textarea></textarea>
									</div>


									<button class="button button-block"
										style="width: 30% !important;">Add</button>

								</form>

							</div>




							<form action="/" method="post"></form>
							
						</div>
						<!-- tab-content -->
					</div>
					<!-- /form -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>