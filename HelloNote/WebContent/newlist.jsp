<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 관리</title>
<link rel="stylesheet" href="css/newlist.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="js/newlist.js"></script>
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

		$(function(){
    		$('#close').on('click', function(){
    			$('#myModal').hide();
    		})
    		
    	})
    </script>
</head>
<body>
<main id="main">
  <header class="header">
    <div class="search-box">
      <input placeholder="Search..."><span class="icon glyphicon glyphicon-search"></span>
    </div>
    <h1 class="page-title"><a>My Site List</a></h1>
  </header>

  <div id="main-nano-wrapper" class="nano">
    <div class="nano-content">
      <ul class="message-list">
        <li class="blue-dot unread">
          <div class="col col-1"><span class="dot"></span>
            <div class="checkbox-wrapper">
              <input type="checkbox" id="chk1">
              <label for="chk1" class="toggle"></label>
            </div>
            <p class="title">네이버</p><span class="star-toggle glyphicon glyphicon-star-empty"></span>
          </div>
          <div class="col col-2">
            <div class="subject">ID/PW<span class="teaser"></span></div>
            <div class="date">11:49 am</div>
          </div>
        </li>
        <li class="green-dot unread">
          <div class="col col-1"><span class="dot"></span>
            <div class="checkbox-wrapper">
              <input type="checkbox" id="chk2">
              <label for="chk2" class="toggle"></label>
            </div>
            <p class="title">네이버</p><span class="star-toggle glyphicon glyphicon-star-empty"></span>
          </div>
          <div class="col col-2">
            <div class="subject">ID/PW<span class="teaser"></span></div>
            <div class="date">12:34 pm</div>
          </div>
        </li>
        <div  style="text-align:center;">

    <button class="btn btn-primary btn-block" id="specification" type="button">modal 테스트</button>

</div>

      </ul><a href="#" class="load-more-link">Show more Site List</a>
    </div>
  </div>
</main>
<div id="message">
  <div class="header">
    <h1 class="page-title"><a class="icon circle-icon glyphicon glyphicon-chevron-left trigger-message-close"></a>ID/PW 상세보기<span class="grey">(2)</span></h1>
    <p>Site <a href="#">NAVER</a><div class="date">11:49 am</div>
  </div>
  <div id="message-nano-wrapper" class="nano">
    <div class="nano-content">
      <ul class="message-container">
        <li class="sent">
          <div class="details">
            <div class="left">NAVER
            </div>
            <div class="right"><div class="date">11:49 am</div></div>
          </div>
          <div class="message">
            <p>| ID : bs930702</p>
            <p>| PW : 1234</p>
            <p>| MEMO : 누구누구아이디</p>
            <button>SITE 이동</button>
          </div>
          <div class="tool-box"><a href="#" class="circle-icon small glyphicon glyphicon-share-alt"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-remove"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-flag"></a></div>
        </li>
                <li class="received">
          <div class="details">
            <div class="left">NAVER
            </div>
            <div class="right"><div class="date">12:34 pm</div></div>
          </div>
          <div class="message">
            <p>| ID : bs930702</p>
            <p>| PW : 1234</p>
            <p>| MEMO : 누구누구아이디</p>
            <button>SITE 이동</button>
          </div>
          <div class="tool-box"><a href="#" class="circle-icon small glyphicon glyphicon-share-alt"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-remove"></a><a href="#" class="circle-icon small red-hover glyphicon glyphicon-flag"></a></div>
      </ul>
    </div>
  </div>
</div>
<div class="modal" id="myModal">
      <div class="modal-content" id="modal-content">
         <span class="close">&times;</span>
         <div align="center">
		<div class="container">
        <section>
            <div class="page-header">
                <h1 align = "center">Site Add</h1>
            </div>

            <form action="/" method="post" id="contractor_form" name="contractor_form" class="form-horizontal" autocomplete="off" data-init="validate" data-messages='{"required":"En Blanco"}'>
                <div class="control-group">
                    <label class="control-label" for="contractor_id">Site Name</label>
                    <div class="controls">
                        <input type="text" placeholder="12345" id="contractor_id" name="contractor_id" data-required data-integerpositive />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="contractor_email">Email/ID</label>
                    <div class="controls">
                        <input type="text" placeholder="john.smith@example.com" id="contractor_email" name="contractor_email" data-required data-email />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="contractor_username">Password</label>
                    <div class="controls">
                        <input type="text" placeholder="Username" id="contractor_username" name="contractor_username" data-required data-minlength="5" data-maxlength="100" />
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="contractor_password">Memo</label>
                    <div class="controls">
                        <textarea></textarea>>
                    </div>
                </div>
                <div class="control-group">
                    <label class="control-label" for="contractor_retype_password">Importance</label>
                    <div class="controls">
                        <input type='checkbox' name='gender' value='female' />중요
  						<input type='checkbox' name='gender' value='male' />안중요
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <button type="submit" class="btn">Submit</button>
                        <button type="reset" class="btn">Reset</button>
                    </div>
                </div>
            </form>
        </section>
    </div>
	</div>
      </div>
   </div>
</body>
</html>