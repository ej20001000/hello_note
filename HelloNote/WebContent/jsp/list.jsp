<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	/* JS needed only for demo */

	$(document)
			.ready(
					function() {
						/* code for navbar */
						$(".btn-nav").on("click tap", function() {
							navbarMagic();
						});

						$(document).keyup(function(e) {
							if (e.keyCode == 27) {
								navbarMagic();
							}
							; // esc
						});

						function navbarMagic() {
							$(".left-side").toggleClass("showNav hideNav")
									.removeClass("hidden");
							$(".btn-nav").toggleClass("animated");
						}

						/* toggle classes for demo main span */
						$(".item, .item a").click(
								function() {
									var current = $(this);
									$(current).addClass("item-active");
									$(".item, .item a").not(current)
											.removeClass("item-active");
									var newClass = $(this).text();
									var p = $(".element");
									$(".text-con span").removeAttr("class");
									setTimeout(function() {
										$(".text-con span").addClass(newClass)
									}, 100)
								});

						/* smooth scroll for nav links */
						$(function() {
							$('a[href*=#]:not([href=#])')
									.click(
											function() {
												if (location.pathname.replace(
														/^\//, '') == this.pathname
														.replace(/^\//, '')
														&& location.hostname == this.hostname) {
													var target = $(this.hash);
													target = target.length ? target
															: $('[name='
																	+ this.hash
																			.slice(1)
																	+ ']');
													if (target.length) {
														$('html,body')
																.animate(
																		{
																			scrollTop : target
																					.offset().top - 100
																		}, 1000);
														return false;
													}
												}
											});
						});
					})
</script>
<style>
html, body, div, span, applet, object, iframe, h1, h2, h3, h4, h5, h6, p,
	blockquote, pre, a, abbr, acronym, address, big, cite, code, del, dfn,
	em, img, ins, kbd, q, s, samp, small, strike, strong, sub, sup, tt, var,
	b, u, i, center, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,
	table, caption, tbody, tfoot, thead, tr, th, td, article, aside, canvas,
	details, embed, figure, figcaption, footer, header, hgroup, menu, nav,
	output, ruby, section, summary, time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, footer, header, hgroup,
	menu, nav, section {
	display: block;
}

body {
	line-height: 1;
}

ol, ul {
	list-style: none;
}

blockquote, q {
	quotes: none;
}

blockquote:before, blockquote:after, q:before, q:after {
	content: '';
	content: none;
}

table {
	border-collapse: collapse;
	border-spacing: 0;
}

.ua {
	position: absolute;
	right: 20px;
	bottom: 20px;
	color: #000;
	font-size: 2em;
}

.fa {
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-ms-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

.ua:hover .fa {
	color: #17BEBB;
	-webkit-transform: scale(1.5);
	-moz-transform: scale(1.5);
	-ms-transform: scale(1.5);
	-o-transform: scale(1.5);
	transform: scale(1.5);
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-ms-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease;
}

.nav.new {
	font-weight: 700;
	background-color: #2e3f4e;
	color: #fff;
}

.both-down:after, .both-down:before, .both-left:after, .both-left:before,
	.both-opening-horizontal:after, .both-opening-horizontal:before,
	.both-right:after, .both-right:before, .both-up:after, .both-up:before,
	.double-underline-left-right:after, .double-underline-left-right:before,
	.double-underline-left:after, .double-underline-left:before,
	.double-underline-opening:after, .double-underline-opening:before,
	.double-underline-right-left:after, .double-underline-right:after,
	.double-underline-right:before, .left-down-right-up:after,
	.left-down-right-up:before, .left-down:after, .left-up-right-down:after,
	.left-up-right-down:before, .left-up:after, .overline-closing:after,
	.overline-closing:before, .overline-left-underline-right:after,
	.overline-left-underline-right:before, .overline-left:after,
	.overline-opening:after, .overline-opening:before,
	.overline-right-underline-left:after, .overline-right-underline-left:before,
	.overline-right:after, .right-down:after, .right-up:after,
	.underline-closing:after, .underline-closing:before, .underline-left:after,
	.underline-opening:after, .underline-opening:before, .underline-right:after
	{
	position: absolute;
	z-index: -1
}

.both-down:after, .both-down:before, .both-opening-horizontal:after,
	.both-right:after, .fill-down:before, .fill-left:before,
	.fill-opening-horizontal:before, .fill-right:before,
	.left-down-right-up:after, .left-down:after, .left-up-right-down:before,
	.overline-closing:after, .overline-closing:before,
	.overline-left-underline-right:after, .overline-left:after,
	.overline-opening:after, .overline-opening:before,
	.overline-right-underline-left:after, .overline-right:after,
	.right-down:after {
	content: "";
	top: 0
}

.fill-down, .fill-up {
	display: inline;
	text-decoration: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.overline-right:after {
	width: 3px;
	height: 3px;
	left: 0
}

.overline-right:focus:after, .overline-right:hover:after {
	width: 100%;
	height: 3px
}

.overline-left:after {
	width: 3px;
	height: 3px;
	right: 0
}

.overline-left:focus:after, .overline-left:hover:after {
	width: 100%;
	height: 3px
}

.overline-closing:after {
	width: 3px;
	height: 3px;
	left: 0
}

.overline-closing:focus:after, .overline-closing:hover:after {
	width: 50%;
	height: 3px
}

.overline-closing:before {
	width: 3px;
	height: 3px;
	right: 0
}

.overline-closing:focus:before, .overline-closing:hover:before {
	width: 50%;
	height: 3px
}

.overline-opening:after {
	width: 3px;
	height: 3px;
	left: 0;
	right: 0;
	margin: 0 auto
}

.overline-opening:focus:after, .overline-opening:hover:after {
	width: 100%;
	height: 3px
}

.overline-opening:before {
	width: 3px;
	height: 3px;
	right: 0;
	left: 0;
	margin: 0 auto
}

.overline-opening:focus:before, .overline-opening:hover:before {
	width: 100%;
	height: 3px
}

.underline-left:after {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 0
}

.underline-left:focus:after, .underline-left:hover:after {
	width: 100%;
	height: 3px
}

.underline-closing:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.underline-closing:focus:after, .underline-closing:hover:after {
	width: 50%;
	height: 3px
}

.underline-closing:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.underline-closing:focus:before, .underline-closing:hover:before {
	width: 50%;
	height: 3px
}

.underline-opening:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0;
	right: 0;
	margin: 0 auto
}

.underline-opening:focus:after, .underline-opening:hover:after {
	width: 100%;
	height: 3px
}

.underline-opening:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0;
	left: 0;
	margin: 0 auto
}

.underline-opening:focus:before, .underline-opening:hover:before {
	width: 100%;
	height: 3px
}

.underline-right:after {
	content: "";
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 0
}

.underline-right:focus:after, .underline-right:hover:after {
	width: 100%;
	height: 3px
}

.double-underline-left:after {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 0
}

.double-underline-left:focus:after, .double-underline-left:hover:after {
	width: 100%;
	height: 3px
}

.double-underline-left:before {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 10px
}

.double-underline-left:focus:before, .double-underline-left:hover:before
	{
	width: 100%;
	height: 3px
}

.double-underline-right:after {
	content: "";
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 0
}

.double-underline-right:focus:after, .double-underline-right:hover:after
	{
	width: 100%;
	height: 3px
}

.double-underline-right:before {
	content: "";
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 10px
}

.double-underline-right:focus:before, .double-underline-right:hover:before
	{
	width: 100%;
	height: 3px
}

.double-underline-opening:after {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 0;
	margin: 0 auto;
	left: 0
}

.double-underline-opening:focus:after, .double-underline-opening:hover:after
	{
	width: 100%;
	height: 3px
}

.double-underline-opening:before {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 10px;
	margin: 0 auto;
	left: 0
}

.double-underline-opening:focus:before, .double-underline-opening:hover:before
	{
	width: 100%;
	height: 3px
}

.double-underline-left-right:after {
	content: "";
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 0
}

.double-underline-left-right:focus:after, .double-underline-left-right:hover:after
	{
	width: 100%;
	height: 3px
}

.double-underline-left-right:before {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 10px
}

.double-underline-left-right:focus:before, .double-underline-left-right:hover:before
	{
	width: 100%;
	height: 3px
}

.double-underline-right-left:after {
	content: "";
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 0
}

.double-underline-right-left:focus:after, .double-underline-right-left:hover:after
	{
	width: 100%;
	height: 3px
}

.double-underline-right-left:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 10px
}

.double-underline-right-left:focus:before, .double-underline-right-left:hover:before
	{
	width: 100%;
	height: 3px
}

.left-down:after {
	width: 3px;
	height: 3px;
	left: 0
}

.left-down:focus:after, .left-down:hover:after {
	width: 3px;
	height: 100%
}

.left-up:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.left-up:focus:after, .left-up:hover:after {
	width: 3px;
	height: 100%
}

.right-up:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.right-up:focus:after, .right-up:hover:after {
	width: 3px;
	height: 100%
}

.right-down:after {
	width: 3px;
	height: 3px;
	right: 0
}

.right-down:focus:after, .right-down:hover:after {
	width: 3px;
	height: 100%
}

.both-down:after {
	width: 3px;
	height: 3px;
	left: 0
}

.both-down:focus:after, .both-down:hover:after {
	width: 3px;
	height: 100%
}

.both-down:before {
	width: 3px;
	height: 3px;
	right: 0
}

.both-down:focus:before, .both-down:hover:before {
	width: 3px;
	height: 100%
}

.both-left:after {
	content: "";
	width: 3px;
	height: 3px;
	top: 0;
	right: 0
}

.both-left:focus:after, .both-left:hover:after {
	width: 100%;
	height: 3px
}

.both-left:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.both-left:focus:before, .both-left:hover:before {
	width: 100%;
	height: 3px
}

.both-right:after {
	width: 3px;
	height: 3px;
	left: 0
}

.both-right:focus:after, .both-right:hover:after {
	width: 100%;
	height: 3px
}

.both-right:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.both-right:focus:before, .both-right:hover:before {
	width: 100%;
	height: 3px
}

.both-up:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.both-up:focus:after, .both-up:hover:after {
	width: 3px;
	height: 100%
}

.both-up:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.both-up:focus:before, .both-up:hover:before {
	width: 3px;
	height: 100%
}

.both-opening-horizontal:after {
	width: 3px;
	height: 3px;
	left: 0;
	right: 0;
	margin: 0 auto
}

.both-opening-horizontal:focus:after, .both-opening-horizontal:hover:after
	{
	width: 100%;
	height: 3px
}

.both-opening-horizontal:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0;
	right: 0;
	margin: 0 auto
}

.both-opening-horizontal:focus:before, .both-opening-horizontal:hover:before
	{
	width: 100%;
	height: 3px
}

.overline-left-underline-right:after {
	width: 3px;
	height: 3px;
	right: 0
}

.overline-left-underline-right:focus:after,
	.overline-left-underline-right:hover:after {
	width: 100%;
	height: 3px
}

.overline-left-underline-right:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.overline-left-underline-right:focus:before,
	.overline-left-underline-right:hover:before {
	width: 100%;
	height: 3px
}

.overline-right-underline-left:after {
	width: 3px;
	height: 3px;
	left: 0
}

.overline-right-underline-left:focus:after,
	.overline-right-underline-left:hover:after {
	width: 100%;
	height: 3px
}

.overline-right-underline-left:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.overline-right-underline-left:focus:before,
	.overline-right-underline-left:hover:before {
	width: 100%;
	height: 3px
}

.left-up-right-down:after {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.left-up-right-down:focus:after, .left-up-right-down:hover:after {
	width: 3px;
	height: 100%
}

.left-up-right-down:before {
	width: 3px;
	height: 3px;
	right: 0
}

.left-up-right-down:focus:before, .left-up-right-down:hover:before {
	width: 3px;
	height: 100%
}

.left-down-right-up:after {
	width: 3px;
	height: 3px;
	left: 0
}

.left-down-right-up:focus:after, .left-down-right-up:hover:after {
	width: 3px;
	height: 100%
}

.left-down-right-up:before {
	content: "";
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.left-down-right-up:focus:before, .left-down-right-up:hover:before {
	width: 3px;
	height: 100%
}

.fill-up {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-user-select: none;
	user-select: none;
	padding: 10px;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease
}

.fill-down, .fill-left {
	-ms-user-select: none;
	padding: 10px
}

.fill-down, .fill-up:focus, .fill-up:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-up:focus, .fill-up:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-up:after, .fill-up:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-down:after, .fill-down:before, .fill-up:focus:after, .fill-up:focus:before,
	.fill-up:hover:after, .fill-up:hover:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s
}

.fill-up:focus:after, .fill-up:focus:before, .fill-up:hover:after,
	.fill-up:hover:before {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 0s
}

.fill-up:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 100%;
	height: 3px;
	bottom: 0;
	right: 0
}

.fill-up:focus:before, .fill-up:hover:before {
	width: 100%;
	height: 100%
}

.fill-up:hover {
	color: #2C3E50 !important
}

.fill-down {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.fill-left, .fill-right {
	display: inline;
	text-decoration: none;
	-webkit-user-select: none
}

.fill-down:focus, .fill-down:hover, .fill-left {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-down:focus, .fill-down:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-down:after, .fill-down:before {
	transition: all 1s ease 0s
}

.fill-down:focus:after, .fill-down:focus:before, .fill-down:hover:after,
	.fill-down:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-down:before {
	position: absolute;
	z-index: -1;
	width: 100%;
	height: 3px;
	right: 0
}

.fill-down:focus:before, .fill-down:hover:before {
	width: 100%;
	height: 100%
}

.fill-down:hover {
	color: #2C3E50 !important
}

.fill-left {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.fill-opening-horizontal, .fill-right {
	box-sizing: border-box;
	-moz-user-select: none;
	-ms-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.fill-left:focus, .fill-left:hover, .fill-right {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-left:focus, .fill-left:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-left:after, .fill-left:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-left:focus:after, .fill-left:focus:before, .fill-left:hover:after,
	.fill-left:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-left:before {
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 100%;
	right: 0
}

.fill-left:focus:before, .fill-left:hover:before {
	width: 100%;
	height: 100%
}

.fill-left:hover {
	color: #2C3E50 !important
}

.fill-right {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.fill-closing-horizontal, .fill-opening-horizontal {
	-webkit-user-select: none;
	display: inline;
	text-decoration: none;
	padding: 10px
}

.fill-opening-horizontal, .fill-right:focus, .fill-right:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-right:focus, .fill-right:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-right:after, .fill-right:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-right:focus:after, .fill-right:focus:before, .fill-right:hover:after,
	.fill-right:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-right:before {
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 100%;
	left: 0
}

.fill-right:focus:before, .fill-right:hover:before {
	width: 100%;
	height: 100%
}

.fill-right:hover {
	color: #2C3E50 !important
}

.fill-opening-horizontal {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.fill-closing-horizontal, .fill-opening-horizontal:focus,
	.fill-opening-horizontal:hover {
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-opening-horizontal:focus, .fill-opening-horizontal:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.fill-opening-horizontal:after, .fill-opening-horizontal:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-opening-horizontal:focus:after, .fill-opening-horizontal:focus:before,
	.fill-opening-horizontal:hover:after, .fill-opening-horizontal:hover:before
	{
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-opening-horizontal:before {
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 100%;
	left: 0;
	right: 0;
	margin: 0 auto
}

.fill-opening-horizontal:focus:before, .fill-opening-horizontal:hover:before
	{
	width: 100%;
	height: 100%
}

.fill-opening-horizontal:hover {
	color: #2C3E50 !important
}

.fill-closing-horizontal {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	-webkit-transition: color 1s ease;
	transition: color 1s ease
}

.fill-closing-horizontal:after, .fill-closing-horizontal:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 100%;
	top: 0
}

.fill-closing-vertical, .fill-top-left {
	box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.fill-closing-horizontal:focus, .fill-closing-horizontal:hover,
	.fill-closing-vertical {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-closing-horizontal:focus, .fill-closing-horizontal:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-closing-horizontal:after, .fill-closing-horizontal:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-closing-horizontal:focus:after, .fill-closing-horizontal:focus:before,
	.fill-closing-horizontal:hover:after, .fill-closing-horizontal:hover:before
	{
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-closing-horizontal:after {
	width: 3px;
	right: 0
}

.fill-closing-horizontal:focus:after, .fill-closing-horizontal:hover:after
	{
	width: 50%;
	height: 100%
}

.fill-closing-horizontal:before {
	width: 3px;
	left: 0
}

.fill-closing-horizontal:focus:before, .fill-closing-horizontal:hover:before
	{
	width: 50%;
	height: 100%
}

.fill-closing-horizontal:hover {
	color: #2C3E50 !important
}

.fill-closing-vertical {
	display: inline;
	position: relative;
	z-index: 2;
	text-decoration: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-ms-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.fill-closing-vertical:after, .fill-closing-vertical:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 100%
}

.fill-closing-vertical:focus, .fill-closing-vertical:hover,
	.fill-top-left {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-closing-vertical:focus, .fill-closing-vertical:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-closing-vertical:after, .fill-closing-vertical:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-closing-vertical:focus:after, .fill-closing-vertical:focus:before,
	.fill-closing-vertical:hover:after, .fill-closing-vertical:hover:before
	{
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-closing-vertical:before {
	height: 3px;
	top: 0;
	right: 0
}

.fill-closing-vertical:focus:before, .fill-closing-vertical:hover:before
	{
	width: 100%;
	height: 50%
}

.fill-closing-vertical:after {
	height: 3px;
	bottom: 0;
	left: 0
}

.fill-top-left, .fill-top-right {
	position: relative;
	-ms-user-select: none;
	display: inline;
	text-decoration: none;
	padding: 10px
}

.fill-closing-vertical:focus:after, .fill-closing-vertical:hover:after {
	width: 100%;
	height: 50%
}

.fill-top-left:before, .fill-top-right:before {
	width: 3px;
	content: "";
	top: 0
}

.fill-closing-vertical:hover {
	color: #2C3E50 !important
}

.fill-top-left {
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.fill-top-left:focus, .fill-top-left:hover, .fill-top-right {
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-top-left:focus, .fill-top-left:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.fill-top-left:after, .fill-top-left:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-top-left:focus:after, .fill-top-left:focus:before, .fill-top-left:hover:after,
	.fill-top-left:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-top-left:before {
	position: absolute;
	z-index: -1;
	height: 3px;
	right: 0
}

.fill-top-left:focus:before, .fill-top-left:hover:before {
	width: 100%;
	height: 100%
}

.fill-top-left:hover {
	color: #2C3E50 !important
}

.fill-top-right {
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	-webkit-transition: color 1s ease;
	transition: color 1s ease
}

.fill-bottom-left, .fill-bottom-right {
	box-sizing: border-box;
	-webkit-user-select: none;
	-ms-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.fill-bottom-left, .fill-top-right:focus, .fill-top-right:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-top-right:focus, .fill-top-right:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-top-right:after, .fill-top-right:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-top-right:focus:after, .fill-top-right:focus:before,
	.fill-top-right:hover:after, .fill-top-right:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-top-right:before {
	position: absolute;
	z-index: -1;
	height: 3px;
	left: 0
}

.fill-top-right:focus:before, .fill-top-right:hover:before {
	width: 100%;
	height: 100%
}

.fill-top-right:hover {
	color: #2C3E50 !important
}

.fill-bottom-left {
	display: inline;
	position: relative;
	z-index: 2;
	text-decoration: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.fill-bottom-left:focus, .fill-bottom-left:hover, .fill-bottom-right {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-bottom-left:focus, .fill-bottom-left:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-bottom-left:after, .fill-bottom-left:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-bottom-left:focus:after, .fill-bottom-left:focus:before,
	.fill-bottom-left:hover:after, .fill-bottom-left:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-bottom-left:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.double-underline-right-delayed, .fill-bottom-right {
	position: relative;
	text-decoration: none;
	-moz-user-select: none;
	padding: 10px;
	display: inline
}

.fill-bottom-left:focus:before, .fill-bottom-left:hover:before {
	width: 100%;
	height: 100%
}

.fill-bottom-left:hover {
	color: #2C3E50 !important
}

.fill-bottom-right {
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.bottom-left:after, .bottom-left:before, .bottom-right:after,
	.bottom-right:before, .fill-bottom-right:before, .left-bottom:after,
	.left-bottom:before, .left-top:after, .left-top:before, .right-bottom:after,
	.right-top:after, .right-top:before, .top-left:after, .top-left:before,
	.top-right:after, .top-right:before {
	content: "";
	position: absolute;
	z-index: -1
}

.double-underline-right-delayed, .fill-bottom-right:focus,
	.fill-bottom-right:hover {
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-bottom-right:focus, .fill-bottom-right:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.fill-bottom-right:after, .fill-bottom-right:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-bottom-right:focus:after, .fill-bottom-right:focus:before,
	.fill-bottom-right:hover:after, .fill-bottom-right:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-bottom-right:before {
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.fill-bottom-right:focus:before, .fill-bottom-right:hover:before {
	width: 100%;
	height: 100%
}

.fill-bottom-right:hover {
	color: #2C3E50 !important
}

.left-top:after {
	width: 3px;
	height: 3px;
	top: 0;
	right: 0
}

.left-top:focus:after, .left-top:hover:after {
	width: 100%;
	height: 3px
}

.left-top:before {
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.left-top:focus:before, .left-top:hover:before {
	width: 3px;
	height: 100%
}

.right-top:after {
	width: 3px;
	height: 3px;
	top: 0;
	left: 0
}

.right-top:focus:after, .right-top:hover:after {
	width: 100%;
	height: 3px
}

.right-top:before {
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.right-top:focus:before, .right-top:hover:before {
	width: 3px;
	height: 100%
}

.left-bottom:after {
	width: 3px;
	height: 3px;
	bottom: 0;
	right: 0
}

.left-bottom:focus:after, .left-bottom:hover:after {
	width: 100%;
	height: 3px
}

.left-bottom:before {
	width: 3px;
	height: 3px;
	top: 0;
	left: 0
}

.left-bottom:focus:before, .left-bottom:hover:before {
	width: 3px;
	height: 100%
}

.right-bottom:after {
	width: 3px;
	height: 3px;
	bottom: 0;
	left: 0
}

.right-bottom:focus:after, .right-bottom:hover:after {
	width: 100%;
	height: 3px
}

.right-bottom:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 3px;
	top: 0;
	right: 0
}

.right-bottom:focus:before, .right-bottom:hover:before {
	width: 3px;
	height: 100%
}

.top-right:after {
	width: 3px;
	height: 3px
}

.top-right:focus:after, .top-right:hover:after {
	width: 100%;
	height: 3px
}

.top-right:before {
	width: 3px;
	height: 3px
}

.top-right:focus:before, .top-right:hover:before {
	width: 3px;
	height: 100%
}

.top-right:after, .top-right:before {
	bottom: 0;
	left: 0
}

.top-left:after {
	width: 3px;
	height: 3px
}

.top-left:focus:after, .top-left:hover:after {
	width: 100%;
	height: 3px
}

.top-left:before {
	width: 3px;
	height: 3px
}

.top-left:focus:before, .top-left:hover:before {
	width: 3px;
	height: 100%
}

.top-left:after, .top-left:before {
	bottom: 0;
	right: 0
}

.bottom-left:after {
	width: 3px;
	height: 3px
}

.bottom-left:focus:after, .bottom-left:hover:after {
	width: 100%;
	height: 3px
}

.bottom-left:before {
	width: 3px;
	height: 3px
}

.bottom-left:focus:before, .bottom-left:hover:before {
	width: 3px;
	height: 100%
}

.bottom-left:after, .bottom-left:before {
	top: 0;
	right: 0
}

.bottom-right:after {
	width: 3px;
	height: 3px
}

.bottom-right:focus:after, .bottom-right:hover:after {
	width: 100%;
	height: 3px
}

.bottom-right:before {
	width: 3px;
	height: 3px
}

.double-linethrough-left-right:after, .double-linethrough-left-right:before,
	.double-linethrough-left:before, .double-linethrough-right:after,
	.double-linethrough-right:before, .linethrough-closing:after,
	.linethrough-closing:before, .linethrough-left:after,
	.linethrough-opening:after, .linethrough-right:after {
	z-index: 9;
	content: "";
	position: absolute
}

.bottom-right:focus:before, .bottom-right:hover:before {
	width: 3px;
	height: 100%
}

.bottom-right:after, .bottom-right:before {
	top: 0;
	left: 0
}

.linethrough-opening:after {
	width: 3px;
	height: 5px;
	left: 0;
	top: 50%;
	right: 0;
	margin: 0 auto
}

.linethrough-opening:focus:after, .linethrough-opening:hover:after {
	width: 100%;
	height: 5px
}

.linethrough-closing:after {
	width: 3px;
	height: 5px;
	left: 0;
	top: 50%
}

.linethrough-closing:focus:after, .linethrough-closing:hover:after {
	width: 50%;
	height: 5px
}

.linethrough-closing:before {
	width: 3px;
	height: 5px;
	top: 50%;
	right: 0
}

.linethrough-closing:focus:before, .linethrough-closing:hover:before {
	width: 50%;
	height: 5px
}

.linethrough-left:after {
	width: 3px;
	height: 5px;
	right: 0;
	top: 50%
}

.linethrough-left:focus:after, .linethrough-left:hover:after {
	width: 100%;
	height: 5px
}

.linethrough-right:after {
	width: 3px;
	height: 5px;
	left: 0;
	top: 50%
}

.linethrough-right:focus:after, .linethrough-right:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-left:after {
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	right: 0;
	top: 45%;
	z-index: 9
}

.double-linethrough-left:focus:after, .double-linethrough-left:hover:after
	{
	width: 100%;
	height: 5px
}

.double-linethrough-left:before {
	width: 3px;
	height: 5px;
	right: 0;
	bottom: 45%;
	top: 54%
}

.double-linethrough-left:focus:before, .double-linethrough-left:hover:before
	{
	width: 100%;
	height: 5px
}

.double-linethrough-right:after {
	width: 3px;
	height: 5px;
	left: 0;
	top: 44%
}

.double-linethrough-right:focus:after, .double-linethrough-right:hover:after
	{
	width: 100%;
	height: 5px
}

.double-linethrough-right:before {
	width: 3px;
	height: 5px;
	left: 0;
	bottom: 10px;
	top: 54%
}

.double-linethrough-right:focus:before, .double-linethrough-right:hover:before
	{
	width: 100%;
	height: 5px
}

.double-linethrough-left-right:after {
	width: 3px;
	height: 5px;
	right: 0;
	top: 44%
}

.double-linethrough-left-right:focus:after,
	.double-linethrough-left-right:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-left-right:before {
	width: 3px;
	height: 5px;
	left: 0;
	bottom: 10px;
	top: 54%
}

.double-linethrough-left-right:focus:before,
	.double-linethrough-left-right:hover:before {
	width: 100%;
	height: 5px
}

.double-linethrough-right-left:after {
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	left: 0;
	top: 44%;
	z-index: 9
}

.double-linethrough-opening:after, .double-linethrough-right-left:before
	{
	top: 54%;
	content: "";
	position: absolute;
	z-index: 9;
	height: 5px;
	right: 0
}

.double-linethrough-right-left:focus:after,
	.double-linethrough-right-left:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-right-left:before {
	width: 3px;
	bottom: 10px
}

.double-linethrough-right-left:focus:before,
	.double-linethrough-right-left:hover:before {
	width: 100%;
	height: 5px
}

.double-linethrough-opening:after {
	width: 3px;
	left: 0;
	margin: 0 auto
}

.double-linethrough-opening:focus:after, .double-linethrough-opening:hover:after
	{
	width: 100%;
	height: 5px
}

.double-linethrough-opening:before {
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	left: 0;
	top: 44%;
	z-index: 9;
	right: 0;
	margin: 0 auto
}

.double-linethrough-opening:focus:before, .double-linethrough-opening:hover:before
	{
	width: 100%;
	height: 5px
}

.double-underline-right-delayed {
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	-webkit-transition: color 1s ease;
	transition: color 1s ease
}

.double-underline-right-delayed:after, .double-underline-right-delayed:before
	{
	content: "";
	position: absolute;
	z-index: -1;
	left: 0;
	height: 3px
}

.double-underline-opening-delayed, .left-top-delay {
	box-sizing: border-box;
	-moz-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	text-decoration: none
}

.double-underline-opening-delayed, .double-underline-right-delayed:focus,
	.double-underline-right-delayed:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.double-underline-right-delayed:focus, .double-underline-right-delayed:hover
	{
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.double-underline-right-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-underline-right-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 3px;
	bottom: 0
}

.double-underline-right-delayed:focus:after,
	.double-underline-right-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-underline-right-delayed:focus:after,
	.double-underline-right-delayed:hover:after {
	width: 100%;
	height: 3px
}

.double-underline-right-delayed:before {
	width: 3px;
	bottom: 10px
}

.double-underline-right-delayed:focus:before,
	.double-underline-right-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 3px
}

.double-underline-opening-delayed {
	display: inline;
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-ms-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.double-underline-opening-delayed:after,
	.double-underline-opening-delayed:before, .move-down:after {
	content: "";
	position: absolute;
	z-index: -1;
	left: 0
}

.left-top-delay, .right-top-delay {
	display: inline;
	-ms-user-select: none;
	padding: 10px
}

.double-underline-opening-delayed:focus,
	.double-underline-opening-delayed:hover, .left-top-delay {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.double-underline-opening-delayed:focus,
	.double-underline-opening-delayed:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.double-underline-opening-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-underline-opening-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 0;
	margin: 0 auto
}

.double-underline-opening-delayed:focus:after,
	.double-underline-opening-delayed:hover:after, .left-top-delay:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.double-underline-opening-delayed:focus:after,
	.double-underline-opening-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.double-underline-opening-delayed:focus:after,
	.double-underline-opening-delayed:hover:after {
	width: 100%;
	height: 3px
}

.double-underline-opening-delayed:before {
	width: 3px;
	height: 3px;
	right: 0;
	bottom: 10px;
	margin: 0 auto
}

.move-down:after, .move-down:focus:after, .move-down:hover:after,
	.move-up:after, .move-up:focus:after, .move-up:hover:after {
	width: 100%;
	height: 3px
}

.double-underline-opening-delayed:focus:before,
	.double-underline-opening-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 3px
}

.move-down:after {
	top: 50%
}

.move-down:hover:after {
	top: 100%
}

.move-left:after, .move-right:after {
	top: 0;
	content: "";
	position: absolute;
	z-index: -1
}

.move-up:after {
	content: "";
	position: absolute;
	z-index: -1;
	bottom: 50%;
	left: 0
}

.move-left:after, .move-left:focus:after, .move-left:hover:after,
	.move-right:after, .move-right:focus:after, .move-right:hover:after {
	width: 3px;
	height: 100%
}

.move-up:hover:after {
	bottom: 100%
}

.move-right:after {
	right: 50%
}

.move-right:hover:after {
	right: 0
}

.move-left:after {
	left: 50%
}

.move-vertical:after, .move-vertical:before, .move-vertical:focus:after,
	.move-vertical:focus:before, .move-vertical:hover:after, .move-vertical:hover:before
	{
	width: 100%;
	height: 3px
}

.move-left:hover:after {
	left: 0
}

.move-vertical:after {
	content: "";
	position: absolute;
	z-index: -1;
	top: 50%;
	left: 0
}

.move-vertical:before {
	content: "";
	position: absolute;
	z-index: -1;
	bottom: 50%;
	left: 0
}

.move-horizontal:after, .move-horizontal:focus:after, .move-horizontal:focus:before,
	.move-horizontal:hover:after, .move-horizontal:hover:before {
	height: 100%;
	width: 3px
}

.move-vertical:hover:after {
	top: 0
}

.move-vertical:hover:before {
	bottom: 0
}

.move-horizontal:after {
	content: "";
	position: absolute;
	z-index: -1;
	top: 0;
	right: 50%
}

.move-horizontal:before {
	content: "";
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 100%;
	top: 0;
	left: 50%
}

.move-horizontal:hover:after {
	right: 0
}

.move-horizontal:hover:before {
	left: 0
}

.left-top-delay {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	transition: color 1s ease
}

.left-top-delay:after, .left-top-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.left-bottom-delay, .right-top-delay {
	box-sizing: border-box;
	-moz-user-select: none
}

.left-top-delay:focus, .left-top-delay:hover, .right-top-delay {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.left-top-delay:focus, .left-top-delay:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.left-top-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.left-top-delay:after {
	transition: all 1s ease 1s;
	width: 3px;
	top: 0;
	right: 0
}

.left-top-delay:focus:after, .left-top-delay:hover:after,
	.right-top-delay:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.left-top-delay:focus:after, .left-top-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.left-top-delay:focus:after, .left-top-delay:hover:after {
	width: 100%;
	height: 3px
}

.left-top-delay:before {
	width: 3px;
	bottom: 0;
	left: 0
}

.left-top-delay:focus:before, .left-top-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.right-top-delay {
	position: relative;
	z-index: 2;
	text-decoration: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.right-top-delay:after, .right-top-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.left-bottom-delay, .right-bottom-delay {
	display: inline;
	text-decoration: none;
	-ms-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.left-bottom-delay, .right-top-delay:focus, .right-top-delay:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.right-top-delay:focus, .right-top-delay:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.right-top-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.right-top-delay:after {
	transition: all 1s ease 1s;
	width: 3px;
	top: 0;
	left: 0
}

.left-bottom-delay:after, .right-top-delay:focus:after, .right-top-delay:hover:after
	{
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.right-top-delay:focus:after, .right-top-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.right-top-delay:focus:after, .right-top-delay:hover:after {
	width: 100%;
	height: 3px
}

.right-top-delay:before {
	width: 3px;
	bottom: 0;
	right: 0
}

.right-top-delay:focus:before, .right-top-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.left-bottom-delay {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.left-bottom-delay:after, .left-bottom-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.double-linethrough-left-delayed, .right-bottom-delay {
	box-sizing: border-box;
	-moz-user-select: none;
	padding: 10px
}

.left-bottom-delay:focus, .left-bottom-delay:hover, .right-bottom-delay
	{
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.left-bottom-delay:focus, .left-bottom-delay:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.left-bottom-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.left-bottom-delay:after {
	transition: all 1s ease 1s;
	width: 3px;
	bottom: 0;
	right: 0
}

.left-bottom-delay:focus:after, .left-bottom-delay:hover:after,
	.right-bottom-delay:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.left-bottom-delay:focus:after, .left-bottom-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.left-bottom-delay:focus:after, .left-bottom-delay:hover:after {
	width: 100%;
	height: 3px
}

.left-bottom-delay:before {
	width: 3px;
	top: 0;
	left: 0
}

.left-bottom-delay:focus:before, .left-bottom-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.right-bottom-delay {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	transition: color 1s ease
}

.right-bottom-delay:after, .right-bottom-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.double-linethrough-left-delayed, .double-linethrough-right-delayed {
	display: inline;
	text-decoration: none;
	-webkit-user-select: none;
	-ms-user-select: none
}

.double-linethrough-left-delayed, .right-bottom-delay:focus,
	.right-bottom-delay:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.right-bottom-delay:focus, .right-bottom-delay:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.right-bottom-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.right-bottom-delay:after {
	transition: all 1s ease 1s;
	width: 3px;
	bottom: 0;
	left: 0
}

.double-linethrough-left-delayed:after, .right-bottom-delay:focus:after,
	.right-bottom-delay:hover:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.right-bottom-delay:focus:after, .right-bottom-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.right-bottom-delay:focus:after, .right-bottom-delay:hover:after {
	width: 100%;
	height: 3px
}

.right-bottom-delay:before {
	width: 3px;
	top: 0;
	right: 0
}

.right-bottom-delay:focus:before, .right-bottom-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.double-linethrough-left-delayed {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.double-linethrough-left-delayed:after, .double-linethrough-left-delayed:before
	{
	content: "";
	position: absolute;
	z-index: 9;
	height: 5px;
	right: 0
}

.double-linethrough-left-right-delayed,
	.double-linethrough-right-delayed {
	box-sizing: border-box;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.double-linethrough-left-delayed:focus, .double-linethrough-left-delayed:hover,
	.double-linethrough-right-delayed {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.double-linethrough-left-delayed:focus, .double-linethrough-left-delayed:hover
	{
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.double-linethrough-left-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-linethrough-left-delayed:after {
	transition: all 1s ease 1s;
	width: 3px;
	top: 45%
}

.double-linethrough-left-delayed:focus:after,
	.double-linethrough-left-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-linethrough-left-delayed:focus:after,
	.double-linethrough-left-delayed:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-left-delayed:before {
	width: 3px;
	bottom: 45%;
	top: 54%
}

.double-linethrough-left-delayed:focus:before,
	.double-linethrough-left-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 5px
}

.double-linethrough-right-delayed {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.double-linethrough-right-delayed:after,
	.double-linethrough-right-delayed:before {
	position: absolute;
	z-index: 9;
	left: 0;
	content: "";
	height: 5px
}

.double-linethrough-left-right-delayed,
	.double-linethrough-right-left-delayed {
	display: inline;
	text-decoration: none;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	padding: 10px
}

.double-linethrough-left-right-delayed,
	.double-linethrough-right-delayed:focus,
	.double-linethrough-right-delayed:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.double-linethrough-right-delayed:focus,
	.double-linethrough-right-delayed:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.double-linethrough-right-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-linethrough-right-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 3px;
	top: 44%
}

.double-linethrough-right-delayed:focus:after,
	.double-linethrough-right-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-linethrough-right-delayed:focus:after,
	.double-linethrough-right-delayed:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-right-delayed:before {
	width: 3px;
	bottom: 10px;
	top: 54%
}

.double-linethrough-right-delayed:focus:before,
	.double-linethrough-right-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 5px
}

.double-linethrough-left-right-delayed {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.double-linethrough-left-right-delayed:focus,
	.double-linethrough-left-right-delayed:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.double-linethrough-left-right-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-linethrough-left-right-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	right: 0;
	top: 44%;
	z-index: 9
}

.double-linethrough-left-right-delayed:focus:after,
	.double-linethrough-left-right-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-linethrough-left-right-delayed:focus:after,
	.double-linethrough-left-right-delayed:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-left-right-delayed:before {
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	left: 0;
	bottom: 10px;
	z-index: 9;
	top: 54%
}

.double-linethrough-left-right-delayed:focus:before,
	.double-linethrough-left-right-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 5px
}

.double-linethrough-right-left-delayed {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease
}

.double-linethrough-opening-delayed, .fill-closing-horizontal-delayed {
	display: inline;
	-moz-user-select: none;
	-ms-user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	text-decoration: none
}

.double-linethrough-right-left-delayed:focus,
	.double-linethrough-right-left-delayed:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.double-linethrough-right-left-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-linethrough-right-left-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	left: 0;
	top: 44%;
	z-index: 9
}

.double-linethrough-right-left-delayed:focus:after,
	.double-linethrough-right-left-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-linethrough-right-left-delayed:focus:after,
	.double-linethrough-right-left-delayed:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-right-left-delayed:before {
	content: "";
	position: absolute;
	width: 3px;
	height: 5px;
	right: 0;
	bottom: 10px;
	z-index: 9;
	top: 54%
}

.double-linethrough-right-left-delayed:focus:before,
	.double-linethrough-right-left-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 5px
}

.double-linethrough-opening-delayed {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	padding: 10px;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease
}

.double-linethrough-opening-delayed:after,
	.double-linethrough-opening-delayed:before {
	content: "";
	position: absolute;
	z-index: 9;
	margin: 0 auto;
	height: 5px;
	right: 0;
	left: 0
}

.double-linethrough-opening-delayed:focus,
	.double-linethrough-opening-delayed:hover,
	.fill-closing-horizontal-delayed {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.double-linethrough-opening-delayed:focus,
	.double-linethrough-opening-delayed:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.double-linethrough-opening-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.double-linethrough-opening-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 3px;
	top: 54%
}

.double-linethrough-opening-delayed:focus:after,
	.double-linethrough-opening-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s
}

.double-linethrough-opening-delayed:focus:after,
	.double-linethrough-opening-delayed:hover:after {
	width: 100%;
	height: 5px
}

.double-linethrough-opening-delayed:before {
	width: 3px;
	top: 44%
}

.double-linethrough-opening-delayed:focus:before,
	.double-linethrough-opening-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 5px
}

.fill-closing-horizontal-delayed {
	position: relative;
	z-index: 2;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	padding: 10px;
	transition: color 1s ease
}

.fill-closing-horizontal-delayed:after, .fill-closing-horizontal-delayed:before
	{
	content: "";
	position: absolute;
	z-index: -1;
	height: 100%;
	top: 0
}

.both-left-delayed, .both-right-delayed {
	-moz-user-select: none;
	-ms-user-select: none;
	padding: 10px;
	display: inline
}

.both-left-delayed, .fill-closing-horizontal-delayed:focus,
	.fill-closing-horizontal-delayed:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.fill-closing-horizontal-delayed:focus, .fill-closing-horizontal-delayed:hover
	{
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.fill-closing-horizontal-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.fill-closing-horizontal-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 3px;
	right: 0
}

.both-left-delayed:after, .fill-closing-horizontal-delayed:focus:after,
	.fill-closing-horizontal-delayed:hover:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.fill-closing-horizontal-delayed:focus:after,
	.fill-closing-horizontal-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.fill-closing-horizontal-delayed:focus:after,
	.fill-closing-horizontal-delayed:hover:after {
	width: 50%;
	height: 100%
}

.fill-closing-horizontal-delayed:before {
	width: 3px;
	left: 0
}

.fill-closing-horizontal-delayed:focus:before,
	.fill-closing-horizontal-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 50%;
	height: 100%
}

.fill-closing-horizontal-delayed:hover {
	color: #2C3E50 !important
}

.both-left-delayed {
	position: relative;
	z-index: 2;
	text-decoration: none;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.both-left-delayed:after, .both-left-delayed:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px;
	right: 0
}

.both-right-delayed, .top-right-delay {
	text-decoration: none;
	box-sizing: border-box;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap;
	overflow: hidden
}

.both-left-delayed:focus, .both-left-delayed:hover, .both-right-delayed
	{
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.both-left-delayed:focus, .both-left-delayed:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.both-left-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.both-left-delayed:after {
	transition: all 1s ease 1s;
	width: 3px;
	top: 0
}

.both-left-delayed:focus:after, .both-left-delayed:hover:after,
	.both-right-delayed:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.both-left-delayed:focus:after, .both-left-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.both-left-delayed:focus:after, .both-left-delayed:hover:after {
	width: 100%;
	height: 3px
}

.both-left-delayed:before {
	width: 3px;
	bottom: 0
}

.both-left-delayed:focus:before, .both-left-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 3px
}

.both-right-delayed {
	position: relative;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	transition: color 1s ease
}

.both-right-delayed:after, .both-right-delayed:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px;
	left: 0
}

.both-right-delayed:focus, .both-right-delayed:hover, .top-right-delay {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.both-right-delayed:focus, .both-right-delayed:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.both-right-delayed:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.both-right-delayed:after {
	transition: all 1s ease 1s;
	width: 3px;
	top: 0
}

.both-right-delayed:focus:after, .both-right-delayed:hover:after,
	.top-right-delay:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.both-right-delayed:focus:after, .both-right-delayed:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s
}

.both-right-delayed:focus:after, .both-right-delayed:hover:after {
	width: 100%;
	height: 3px
}

.both-right-delayed:before {
	width: 3px;
	bottom: 0
}

.top-left-delay, .top-right-delay {
	position: relative;
	-webkit-user-select: none;
	padding: 10px
}

.both-right-delayed:focus:before, .both-right-delayed:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 100%;
	height: 3px
}

.top-right-delay {
	display: inline;
	z-index: 2;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	transition: color 1s ease
}

.top-right-delay:after, .top-right-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.top-left-delay, .top-right-delay:focus, .top-right-delay:hover {
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.top-right-delay:focus, .top-right-delay:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.top-right-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.top-right-delay:after {
	transition: all 1s ease 1s;
	width: 3px
}

.top-left-delay:after, .top-right-delay:focus:after, .top-right-delay:hover:after
	{
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.top-right-delay:focus:after, .top-right-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s;
	width: 100%;
	height: 3px
}

.top-right-delay:before {
	width: 3px
}

.bottom-left-delay, .top-left-delay {
	z-index: 2;
	-ms-user-select: none;
	display: inline;
	-moz-user-select: none;
	overflow: hidden;
	text-decoration: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	white-space: nowrap
}

.top-right-delay:focus:before, .top-right-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.top-right-delay:after, .top-right-delay:before {
	bottom: 0;
	left: 0
}

.top-left-delay {
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	-webkit-transition: color 1s ease;
	transition: color 1s ease
}

.top-left-delay:after, .top-left-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.top-left-delay:focus, .top-left-delay:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.top-left-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.top-left-delay:after {
	transition: all 1s ease 1s;
	width: 3px
}

.bottom-left-delay:after, .top-left-delay:focus:after, .top-left-delay:hover:after
	{
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.top-left-delay:focus:after, .top-left-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s;
	width: 100%;
	height: 3px
}

.top-left-delay:before {
	width: 3px
}

.top-left-delay:focus:before, .top-left-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.top-left-delay:after, .top-left-delay:before {
	bottom: 0;
	right: 0
}

.bottom-left-delay {
	position: relative;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	user-select: none;
	padding: 10px;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease
}

.bottom-left-delay:after, .bottom-left-delay:before {
	content: "";
	position: absolute;
	z-index: -1;
	height: 3px
}

.bottom-left-delay:focus, .bottom-left-delay:hover, .bottom-right-delay
	{
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.bottom-left-delay:focus, .bottom-left-delay:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.bottom-left-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.bottom-left-delay:after {
	transition: all 1s ease 1s;
	width: 3px
}

.bottom-left-delay:focus:after, .bottom-left-delay:hover:after,
	.bottom-right-delay:after {
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s
}

.bottom-left-delay:focus:after, .bottom-left-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 1s;
	width: 100%;
	height: 3px
}

.bottom-left-delay:before {
	width: 3px
}

.bottom-left-delay:focus:before, .bottom-left-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.bottom-left-delay:after, .bottom-left-delay:before {
	top: 0;
	right: 0
}

.bottom-right-delay {
	display: inline;
	position: relative;
	z-index: 2;
	text-decoration: none;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	padding: 10px;
	white-space: nowrap;
	overflow: hidden;
	-webkit-transition: color 1s ease;
	transition: color 1s ease
}

.bottom-right-delay:after, .bottom-right-delay:before {
	position: absolute;
	z-index: -1;
	height: 3px;
	content: ""
}

.bottom-right-delay:focus, .bottom-right-delay:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

.bottom-right-delay:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.bottom-right-delay:after {
	transition: all 1s ease 1s;
	width: 3px
}

.bottom-right-delay:focus:after, .bottom-right-delay:hover:after {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 1s;
	-moz-transition: all 1s ease 1s;
	-ms-transition: all 1s ease 1s;
	-o-transition: all 1s ease 1s;
	transition: all 1s ease 1s;
	width: 100%;
	height: 3px
}

.bottom-right-delay:focus:before, .bottom-right-delay:hover:before, .nav:after,
	.nav:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s
}

.bottom-right-delay:before {
	width: 3px
}

.bottom-right-delay:focus:before, .bottom-right-delay:hover:before {
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 0s;
	width: 3px;
	height: 100%
}

.left-side, body, html {
	width: 100%;
	height: 100%
}

.bottom-right-delay:after, .bottom-right-delay:before {
	top: 0;
	left: 0
}

body, html {
	background: #E8F1F2;
	font-family: Lato, sans-serif
}

main {
	height: 100%
}

.left-side {
	position: fixed;
	background: #2C3E50;
	overflow: auto;
	z-index: 1;
	left: -100%
}

.animated, .btn-nav {
	z-index: 9999
}

@media ( min-width :1200px) {
	.left-side {
		width: 30%;
		left: 0
	}
}

@media ( min-width :1400px) {
	.left-side {
		width: 25%;
		left: 0
	}
}

.right-side {
	position: absolute;
	right: 0;
	height: 100%;
	width: 100%
}

@media ( min-width :1200px) {
	.right-side {
		width: 70%
	}
}

@media ( min-width :1400px) {
	.right-side {
		width: 75%
	}
}

.effects-list {
	margin: 100px auto 0;
	text-align: center;
	padding-bottom: 50px;
	list-style: none
	{cusor:pointer;}
	{display:none;}
	
}

@media ( min-width :1200px) {
	.effects-list {
		text-align: left;
		padding-left: 30px
	}
}

.text-con {
	position: relative;
	top: 50%;
	width: 100%;
	text-align: center
}

.bar, .btn-nav {
	display: block;
	width: 50px
}

button {
	background: 0 0;
	border: none
}

button::-moz-focus-inner {
	border: 0
}

:focus {
	outline: 0
}

::-moz-focus-inner {
	border: 0
}

.btn-nav:hover {
	cursor: pointer
}

.btn-nav:hover .bar {
	background-color: #1B98E0
}

.bar {
	height: 5px;
	background: #2C3E50;
	margin: 10px auto
}

.btn-nav, .middle {
	margin: 0 auto
}

.btn-nav {
	padding: 15px 0;
	position: fixed;
	left: 20px;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-ms-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease
}

@media ( min-width :1200px) {
	.btn-nav {
		display: none
	}
}

.btn-nav:focus {
	outline: 0
}

.bar {
	-webkit-transition: all .7s ease;
	-moz-transition: all .7s ease;
	-ms-transition: all .7s ease;
	-o-transition: all .7s ease;
	transition: all .7s ease
}

.item a:focus, .item a:hover, .item:focus, .item:hover, .nav {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.animated .bar {
	z-index: 9999;
	background-color: #fff
}

.animated .arrow-top-r {
	-webkit-transform: rotateZ(-45deg) translateY(11px);
	-moz-transform: rotateZ(-45deg) translateY(11px);
	-ms-transform: rotateZ(-45deg) translateY(11px);
	-o-transform: rotateZ(-45deg) translateY(11px);
	transform: rotateZ(-45deg) translateY(11px);
	width: 25px
}

.animated .arrow-middle-r {
	-webkit-transform: translateX(25px);
	-moz-transform: translateX(25px);
	-ms-transform: translateX(25px);
	-o-transform: translateX(25px);
	transform: translateX(25px)
}

.animated .arrow-bottom-r {
	-webkit-transform: rotateZ(45deg) translateY(-11px);
	-moz-transform: rotateZ(45deg) translateY(-11px);
	-ms-transform: rotateZ(45deg) translateY(-11px);
	-o-transform: rotateZ(45deg) translateY(-11px);
	transform: rotateZ(45deg) translateY(-11px);
	width: 25px
}

@
keyframes showNav {
	from {left: -100%
}

to {
	left: 0
}

}
@
-webkit-keyframes showNav {
	from {left: -100%
}

to {
	left: 0
}

}
@
-moz-keyframes showNav {
	from {left: -100%
}

to {
	left: 0
}

}
@
-o-keyframes showNav {
	from {left: -100%
}

to {
	left: 0
}

}
.showNav {
	-webkit-animation: showNav .5s ease forwards;
	-moz-animation: showNav .5s ease forwards;
	-o-animation: showNav .5s ease forwards;
	animation: showNav .5s ease forwards;
	z-index: 999
}

@
keyframes hideNav {
	from {left: 0
}

to {
	left: -100%
}

}
@
-webkit-keyframes hideNav {
	from {left: 0
}

to {
	left: -100%
}

}
@
-moz-keyframes hideNav {
	from {left: 0
}

to {
	left: -100%
}

}
@
-o-keyframes hideNav {
	from {left: 0
}

to {
	left: -100%
}

}
@media ( max-width :1200px) {
	.hideNav {
		-webkit-animation: hideNav 1s ease forwards;
		-moz-animation: hideNav 1s ease forwards;
		-o-animation: hideNav 1s ease forwards;
		animation: hideNav 1s ease forwards
	}
	.hidden {
		display: none
	}
}

.links-con {
	position: absolute;
	right: 50px;
	top: 20px;
	z-index: 1
}

.item-divider {
	cursor: auto;
	text-transform: uppercase;
	font-weight: 700;
	opacity: 1;
	margin: 40px 15px;
	color: #fff;
	font-size: 2em
}

.styles {
	list-style: none;
	width: 100%;
	margin: 0 auto;
	border-top: 1px solid rgba(225, 225, 225, .3);
	padding-bottom: 30px
}

.item, .item a {
	color: #fff;
	font-weight: 300;
	cursor: pointer;
	font-size: 1.4em;
	line-height: 2em;
	text-decoration: none
}

.item a:focus, .item a:hover, .item:focus, .item:hover {
	color: #E8F1F2;
	transition: color 1s ease
}

.item-active, .item-active a {
	color: #1B98E0 !important;
	-webkit-transition: all 1s ease;
	-moz-transition: all 1s ease;
	-ms-transition: all 1s ease;
	-o-transition: all 1s ease;
	transition: all 1s ease
}

.nav {
	color: #2C3E50;
	top: 10px;
	font-weight: 700;
	font-size: 1em;
	display: inline;
	position: relative;
	z-index: 2;
	text-decoration: none;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	padding: 10px;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.effect-demo, .nav:focus, .nav:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.nav:focus, .nav:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.nav:after, .nav:before {
	transition: all 1s ease 0s
}

.effect-demo:after, .effect-demo:before, .nav:focus:after, .nav:focus:before,
	.nav:hover:after, .nav:hover:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s
}

.nav:focus:after, .nav:focus:before, .nav:hover:after, .nav:hover:before
	{
	outline: 0;
	background-color: #1B98E0;
	transition: all 1s ease 0s
}

.nav:after {
	content: "";
	position: absolute;
	z-index: -1;
	width: 3px;
	height: 3px;
	left: 0;
	bottom: 0
}

.nav:focus:after, .nav:hover:after {
	width: 100%;
	height: 3px
}

.nav:focus {
	outline: 0
}

@media ( min-width :480px) {
	.nav {
		font-size: 1.2em;
		display: inline;
		position: relative;
		z-index: 2;
		text-decoration: none;
		box-sizing: border-box;
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
		-webkit-touch-callout: none;
		-webkit-tap-highlight-color: transparent;
		padding: 10px;
		white-space: nowrap;
		overflow: hidden;
		-webkit-transition: color 1s ease;
		-moz-transition: color 1s ease;
		-ms-transition: color 1s ease;
		-o-transition: color 1s ease;
		transition: color 1s ease
	}
	.nav:focus, .nav:hover {
		outline: 0;
		color: #1B98E0;
		-webkit-transition: color 1s ease;
		-moz-transition: color 1s ease;
		-ms-transition: color 1s ease;
		-o-transition: color 1s ease;
		transition: color 1s ease;
		cursor: pointer
	}
	.nav:after, .nav:before {
		-webkit-transition: all 1s ease 0s;
		-moz-transition: all 1s ease 0s;
		-ms-transition: all 1s ease 0s;
		-o-transition: all 1s ease 0s;
		transition: all 1s ease 0s
	}
	.nav:focus:after, .nav:focus:before, .nav:hover:after, .nav:hover:before
		{
		outline: 0;
		background-color: #1B98E0;
		-webkit-transition: all 1s ease 0s;
		-moz-transition: all 1s ease 0s;
		-ms-transition: all 1s ease 0s;
		-o-transition: all 1s ease 0s;
		transition: all 1s ease 0s
	}
}

.effect-demo, .effect-demo.block {
	box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none
}

.sass {
	font-size: 1em;
	color: #fff;
	font-weight: 500
}

@media ( min-width :768px) {
	.sass {
		font-size: 1.1em
	}
}

.em-git {
	color: #fff;
	font-size: .8em;
	font-weight: 300
}

@media ( min-width :480px) {
	.em-git {
		font-size: 1em
	}
}

@media ( min-width :768px) {
	.em-git {
		font-size: 1.2em
	}
}

.div-git {
	background: #2C3E50;
	width: auto;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
	display: block
}

.include {
	color: #F22613
}

.property {
	color: #E3B505
}

.value {
	color: #247BA0
}

.clone {
	color: #2C3E50
}

.comment {
	color: #E8F1F2;
	opacity: .7
}

.code {
	color: #fff;
	font-size: .6em;
	font-weight: 500
}

@media ( min-width :300px) {
	.code {
		font-size: .7em
	}
}

@media ( min-width :480px) {
	.code {
		font-size: .9em
	}
}

@media ( min-width :600px) {
	.code {
		font-size: 1em
	}
}

@media ( min-width :768px) {
	.code {
		font-size: 1em
	}
}

@media ( min-width :1200px) {
	.code {
		font-size: 1.1em
	}
}

@media ( min-width :1500px) {
	.code {
		font-size: 1.3em
	}
}

.effect-demo, span {
	font-size: 3em;
	font-weight: 700;
	position: relative;
	z-index: 2;
	text-decoration: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	padding: 10px;
	white-space: nowrap;
	overflow: hidden
}

.pseudoem {
	color: red
}

.effect-demo {
	margin: 0 auto;
	color: #2C3E50;
	display: inline;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	transition: color 1s ease
}

.effect-demo.block, .effect-demo:focus, .effect-demo:hover {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease
}

.effect-demo:focus, .effect-demo:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease;
	cursor: pointer
}

.effect-demo:after, .effect-demo:before {
	transition: all 1s ease 0s
}

.effect-demo:focus:after, .effect-demo:focus:before, .effect-demo:hover:after,
	.effect-demo:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.effect-demo.block {
	width: 90%;
	display: block;
	position: relative;
	z-index: 2;
	text-decoration: none;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	user-select: none;
	-webkit-touch-callout: none;
	-webkit-tap-highlight-color: transparent;
	padding: 10px;
	white-space: nowrap;
	overflow: hidden;
	transition: color 1s ease
}

.effect-demo.block:focus, .effect-demo.block:hover, span {
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	cursor: pointer
}

.effect-demo.block:focus, .effect-demo.block:hover {
	outline: 0;
	color: #1B98E0;
	transition: color 1s ease
}

.effect-demo.block:after, .effect-demo.block:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.effect-demo.block:focus:after, .effect-demo.block:focus:before,
	.effect-demo.block:hover:after, .effect-demo.block:hover:before {
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

.effect-demo.block.half-width {
	width: 50%
}

span {
	text-transform: uppercase;
	display: inline;
	box-sizing: border-box;
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	transition: color 1s ease
}

span:focus, span:hover {
	outline: 0;
	color: #1B98E0;
	-webkit-transition: color 1s ease;
	-moz-transition: color 1s ease;
	-ms-transition: color 1s ease;
	-o-transition: color 1s ease;
	transition: color 1s ease;
	cursor: pointer
}

span:after, span:before {
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}

span:focus:after, span:focus:before, span:hover:after, span:hover:before
	{
	outline: 0;
	background-color: #1B98E0;
	-webkit-transition: all 1s ease 0s;
	-moz-transition: all 1s ease 0s;
	-ms-transition: all 1s ease 0s;
	-o-transition: all 1s ease 0s;
	transition: all 1s ease 0s
}
</style>
<script type="text/javascript">

// html dom 이 다 로딩된 후 실행된다.
$(document).ready(function(){
    // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".effects-list").click(function(){
        var submenu = $(this).next("ul");

        // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
        if( submenu.is(":visible") ){
            submenu.slideUp();
        }else{
            submenu.slideDown();
        }
    });
});
</script>

</head>
<body>
	<button class="btn-nav">
		<div class="bar arrow-top-r"></div>
		<div class="bar arrow-middle-r"></div>
		<div class="bar arrow-bottom-r"></div>
	</button>
	<div class="links-con">
		<a href="https://www.naver.com" target="_blank" class="nav new">사이트로
			이동</a>
	</div>
	<aside class="left-side hidden hideNav">
		<ul class="effects-list">
			<li class="item-divider">자주가는 사이트</li>
			<li class="item">NAVER</li>
			<li class="item">DAUM</li>
			<li class="item">LOL</li>
			<li class="item">BANK</li>

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
	</aside>
	<aside class="right-side">
		<div class="text-con">
			<span class="underline-left">상세정보 창</span>
		</div>
	</aside>

	<a href="https://codepen.io/tonkec" class="ua" target="_blank"> <i
		class="fa fa-user"></i></a>



</body>
</html>