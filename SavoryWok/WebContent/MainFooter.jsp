<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css?v1=9">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style type="text/css">
.fixed-footer-go {
	display: none !important;
	visibility: hidden !important;
}

.scrollup {
	position: fixed;
	width: 82px;
	height: 82px;
	bottom: 0px;
	right: 20px;
	z-index: 102410;
	/* background: #CF6A14; */
	background:
		url("${pageContext.request.contextPath}/images/back-to-top.png")
		no-repeat scroll center center/58px 58px;
}

.footer-area {
	padding: 10px 0
}

.footer-area .w {
	padding-top: 10px;
	border-top: 1px solid #e8e8e8
}

.footer-area a {
	color: #666
}

.footer-area a:hover {
	color: #ff6767
}

.ft1 {
	clear: none;
	float: left;
	font-size: 11px;
	color: #666;
	width: 600px;
	padding-top: 10px;
	margin-left: -30px;
}

.ft1 .c3b {
	color: #c90;
	font-size: 14px;
	font-weight: 700;
	margin-bottom: 6px
}

.ft1 .c3b a {
	color: #f50
}

.ft1 .c3c {
	color: #aaa;
	font-size: 12px;
	margin-bottom: 6px
}

.ft2, .ft3 {
	clear: none;
	float: right;
	text-align: center
}

.ft3 {
	margin: 0 25px
}

.ft4 {
	text-align: right; 
	margin-top: 15px;
	padding-left: 20px;
}

.footer-menu-columns {
	display: inline-flex; 
	gap: 40px; 
	text-align: left;
}

.footer-menu-col {
	display: flex;
	flex-direction: column;
	gap: 12px;
}

.footer-menu-col a {
	color: #654e2d;
	text-decoration: none;
	font-size: 14px;
	white-space: nowrap; 
	transition: opacity 0.3s;
}

.footer-menu-col a:hover {
	opacity: 0.8;
	text-decoration: underline;
}
</style>
<div class="footer-area clear1">
	<div class="w"
		style="display: flex; justify-content: center; gap: 30px;">
		<div class="ft1">
			<p class="c3b">
				<img class="img5"
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="logo image" />

			</p>
			<p class="c3c">
				<a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/" title="About">About
					Us</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/contact/"
					title="Policy">Privacy Policy</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/joinus/"
					title="Terms">Terms of Use</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/copyright/"
					title="Service">Terms of Service</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/links/" title="Copyright">Copyright</a>
				| <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/sitemap/"
					title="Advertise">Advertise</a> | <a class="ac" target="_blank"
					title="Contact" href="https://www.meishichina.com/Mobile/">Contact</a>
			</p>
		</div>
		<div class="ft4">
			<div class="footer-menu-columns">
				<div class="footer-menu-col">
					<a href="${ pageContext.request.contextPath}/health/list">Recipes</a>
					<a href="${ pageContext.request.contextPath}/specialshow">Themes</a>
					<a href="${ pageContext.request.contextPath}/myHealth">Healthy</a>
				</div>
				<div class="footer-menu-col">
					<a href="${ pageContext.request.contextPath}/topicshow">Moments</a>
					<a href="${ pageContext.request.contextPath}/location.jsp">Explore</a>
					<a href="${ pageContext.request.contextPath}/userLogin">Sign in</a>
				</div>
			</div>
		</div>

	</div>
</div>
<div id="J_footer_box" class="footer-info">
	<div class="w">
		<p class="pp" align="center">

			Created by <a class="af" target="_blank"
				href="https://github.com/ChenXiang96/">Xiang Chen</a>. Copyright
			&copy; 2025 <a class="af" target="_blank"
				href="https://github.com/ChenXiang96/" title="Xiang-Chen-github">Xiang Chen. All rights reserved.</a>

		
			<span class="social-icons"> <a href="#"><i
					class="fab fa-facebook"></i></a> <a href="#"><i
					class="fab fa-instagram"></i></a> <a href="#"><i
					class="fab fa-tiktok"></i></a> <a href="#"><i
					class="fab fa-youtube"></i></a> <a href="#"><i
					class="fab fa-flipboard"></i></a> <a href="#"><i
					class="fab fa-pinterest"></i></a>


			</span>
		</p>


	</div>
</div>

<div class="fixed-footer">
	<a href="#" class="scrollup"></a>
</div>

<style>
.wx {
	width: 80px;
}

.sj {
	width: 80px;
}

.img1 {
	width: 80px;
}

.img2 {
	width: 80px;
}

.img3 {
	width: 80px;
}

.img4 {
	width: 25px;
}

.img5 {
	width: 230px;
	margin-left: 150px;
}

.footer-area {
	padding: 10px 0;
}

.clear1 {
	zoom: 1;
}

.clear1:after {
	clear: both;
	content: ' ';
	display: block;
	height: 0;
	overflow: hidden;
	visibility: hidden;
}

.ac {
	font-size: 13px;
}

.pp {
	margin: 0 0 10px;
	font-size: 13px;
	/* margin-right: 20px; */
	/* margin-bottom: 50px; */
}

p {
	margin: 0 0 10px;
	font-size: 16px;
}

.footer-area .w {
	padding-top: 10px;
	border-top: 1px solid #e8e8e8;
	width: 1200px;
	gap: 50px;
}

.af {
	font-size: 13px;
}

.footer-area {
	padding: 10px 0;
}

.ft4 {
	clear: none;
	float: right;
	text-align: center;
	margin-right: 80px;
}

.social-icons {
	display: inline-flex;
	align-items: center;
	gap: 12px;
	margin-left: 10px;
	vertical-align: middle;
}

.social-icons a {
	color: #666;
	font-size: 16px;
	line-height: 1;
	transition: color 0.3s;
}

.pp {
	text-align: center;
	display: block;
	width: 100%;
	margin: 0 auto;
	flex-wrap: wrap;
}
</style>