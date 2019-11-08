<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
   prefix="decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html lang="ko">

<head>
<title>Bootstrap 4 Blog Template For Developers</title>

<!-- Meta -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Blog Template">
<meta name="author" content="Xiaoying Riley at 3rd Wave Media">
<link rel="shortcut icon" href="favicon.ico">


<script

	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script> src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"</script>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script

	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
   <script>src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



<!-- FontAwesome JS-->
<script defer
   src="https://use.fontawesome.com/releases/v5.7.1/js/all.js"
   integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7"
   crossorigin="anonymous"></script>

<!-- Theme CSS -->
<link id="theme-style" rel="stylesheet" href="assets/css/theme-7.css">



</head>
	<decorator:head>
	</decorator:head>
	
<body>
   <c:if test="${empty u_id}">
      <header class="header text-center">
         <h1 class="blog-name pt-lg-4 mb-0">
            <a href="index.html">Hello Note</a>
         </h1>

         <nav class="navbar navbar-expand-lg navbar-dark">

            <button class="navbar-toggler" type="button" data-toggle="collapse"
               data-target="#navigation" aria-controls="navigation"
               aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
            </button>

				<div id="navigation" class="collapse navbar-collapse flex-column">
					<div class="profile-section pt-3 pt-lg-0">
						<img class="profile-image mb-3 rounded-circle mx-auto"
							src="assets/images/진지.png" alt="image">

                  <div class="bio mb-3">
                     Hi, my name is Anthony Doe. Briefly introduce yourself here. You
                     can also provide a link to the about page.<br> <a
                        href="about.html">Find out more about me</a>
                  </div>
                  <!--//bio-->
                  <ul class="social-list list-inline py-3 mx-auto">
                     <li class="list-inline-item"><a
                        href="https://twitter.com/?lang=ko"><i
                           class="fab fa-twitter fa-fw"></i></a></li>
                     <li class="list-inline-item"><a
                        href="https://kr.linkedin.com/"><i
                           class="fab fa-linkedin-in fa-fw"></i></a></li>
                     <li class="list-inline-item"><a href="https://github.com/"><i
                           class="fab fa-github-alt fa-fw"></i></a></li>
                     <li class="list-inline-item"><a
                        href="https://stackoverflow.com/"><i
                           class="fab fa-stack-overflow fa-fw"></i></a></li>
                     <li class="list-inline-item"><a href="https://codepen.io/"><i
                           class="fab fa-codepen fa-fw"></i></a></li>
                  </ul>
                  <!--//social-list-->
                  <hr>
               </div>
               <!--//profile-section-->

               <ul class="navbar-nav flex-column text-left">
                  <li class="nav-item active"><a class="nav-link"
                     href="index.html"><i class="fas fa-home fa-fw mr-2"></i>홈<span
                        class="sr-only">(current)</span></a></li>
                  <li class="nav-item"><a class="nav-link"
                     href="blog-post.html"><i
                        class="fas fa-id-card-alt fa-fw mr-2"></i>사이트 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.html"><i
                        class="fas fa-check-square fa-fw mr-2"></i>체크 리스트</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.html"><i
                        class="fas fa-birthday-cake fa-fw mr-2"></i>기념일 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.html"><i
                        class="fas fa-sticky-note fa-fw mr-2"></i>메모 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.html"><i
                        class="fas fa-file-invoice-dollar fa-fw mr-2"></i>내 계좌 번호 관리</a></li>
                  <li class="nav-item"><a class="nav-link" href="about.html"><i
                        class="fas fa-calendar-alt fa-fw mr-2"></i>캘린더</a></li>
               </ul>

               <div class="my-2 my-md-3">
                  <button id="addMenu" class="btn btn-primary" onclick="addMenu()">+</button>
               </div>
            </div>
         </nav>
      </header>

      <div class="main-wrapper">
         <section class="cta-section theme-bg-light py-5">
            <div class="container text-center">
               <h2 class="heading">
                  
               </h2>
               <div class="intro">Welcome to my blog. Subscribe and get my
                  latest blog post in your inbox.</div>
               <form class="signup-form form-inline justify-content-center pt-3">
                  <div class="form-group">
                     <label class="sr-only" for="semail">Your email</label> <input
                        type="email" id="semail" name="semail1"
                        class="form-control mr-md-1 semail" placeholder="Enter email">
                  </div>
                  <button id="searchButton" class="btn btn-primary"
                     onclick="search()">Subscribe</button>
               </form>
            </div>
            <!--//container-->
         </section>
        

      </div>
      <!--//main-wrapper-->




      <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->
      <div id="config-panel" class="config-panel d-none d-lg-block">
         <div class="panel-inner">
            <a id="config-trigger"
               class="config-trigger config-panel-hide text-center" href="#"><i
               class="fas fa-cog fa-spin mx-auto" data-fa-transform="down-6"></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-inline mb-0">
               <li class="theme-1 active list-inline-item"><a
                  data-style="assets/css/theme-1.css" href="#"></a></li>
               <li class="theme-2  list-inline-item"><a
                  data-style="assets/css/theme-2.css" href="#"></a></li>
               <li class="theme-3  list-inline-item"><a
                  data-style="assets/css/theme-3.css" href="#"></a></li>
               <li class="theme-4  list-inline-item"><a
                  data-style="assets/css/theme-4.css" href="#"></a></li>
               <li class="theme-5  list-inline-item"><a
                  data-style="assets/css/theme-5.css" href="#"></a></li>
               <li class="theme-6  list-inline-item"><a
                  data-style="assets/css/theme-6.css" href="#"></a></li>
               <li class="theme-7  list-inline-item"><a
                  data-style="assets/css/theme-7.css" href="#"></a></li>
               <li class="theme-8  list-inline-item"><a
                  data-style="assets/css/theme-8.css" href="#"></a></li>
            </ul>
            <a id="config-close" class="close" href="#"><i
               class="fa fa-times-circle"></i></a>
         </div>
         <!--//panel-inner-->
      </div>
      <!--//configure-panel-->



      <!-- Javascript -->
      <script src="assets/plugins/jquery-3.3.1.min.js"></script>
      <script src="assets/plugins/popper.min.js"></script>
      <script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>

      <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
      <script src="assets/js/demo/style-switcher.js"></script>
   </c:if>
   <%-- <c:if test="${empty u_id}">
      <div class="wrapper fadeInDown">
         <div id="formContent">
            <!-- Tabs Titles -->

            <!-- Icon -->

            <br>
            <!-- Login Form -->
            <form>
               <input type="text" id="login" class="fadeIn second" name="login"
                  placeholder="login"> <input type="text" id="password"
                  class="fadeIn third" name="login" placeholder="password">
               <input type="submit" class="fadeIn fourth" value="Log In">
            </form>

            <!-- Remind Passowrd -->
            <div id="formFooter">
               <a class="underlineHover" href="#">Forgot Password?</a>
            </div>

         </div>
      </div>
   </c:if> --%>
   <script type="text/javascript">
      function search() {
         var text = $('#semail').val();
         var url = "https://www.google.com/search?q=" + text;
         window.open(url);
      }

      function addMenu() {
         window
               .open(
                     "addMenu.jsp",
                     'popUpWindow',
                     'height=700,width=600,left=300,top=300,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no, status=yes');
      }
   </script>
</body>
			<section class="blog-list px-3 py-5 p-md-5">
				<div class="container">
					<decorator:body />
				</div>
			</section>

			<footer class="footer text-center py-2 theme-bg-dark">

				<!--/* This template is released under the Creative Commons Attribution 3.0 License. Please keep the attribution link below when using for your own project. Thank you for your support. :) If you'd like to use the template without the attribution, you can buy the commercial license via our website: themes.3rdwavemedia.com */-->
				<small class="copyright">Designed with <i
					class="fas fa-heart" style="color: #fb866a;"></i> by <a
					href="http://themes.3rdwavemedia.com" target="_blank">Xiaoying
						Riley</a> for developers
				</small>
			</footer>
</html>