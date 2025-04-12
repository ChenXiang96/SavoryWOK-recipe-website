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
	text-align: right; /* 整体右侧对齐 */
	margin-top: 15px;
	padding-left: 20px;
}

.footer-menu-columns {
	display: inline-flex; /* 保持右侧对齐 */
	gap: 40px; /* 列间距 */
	text-align: left; /* 文字左对齐 */
}

.footer-menu-col {
	display: flex;
	flex-direction: column;
	gap: 12px; /* 行间距 */
}

.footer-menu-col a {
	color: #654e2d; /* 与顶部菜单颜色一致 */
	text-decoration: none;
	font-size: 14px;
	white-space: nowrap; /* 防止文字换行 */
	transition: opacity 0.3s;
}

.footer-menu-col a:hover {
	opacity: 0.8;
	text-decoration: underline;
}
</style>
<div class="footer-area clear1">
	<div class="w"
		style="display: flex; /* 弹性容器 */ justify-content: center; /* 主轴居中 */ gap: 30px;">
		<div class="ft1">
			<p class="c3b">
				<img class="img5"
					src="${pageContext.request.contextPath}/images/logo.png"
					alt="logo image" />

			</p>
			<p class="c3c">
				<a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/" title="关于我们">About
					Us</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/contact/"
					title="联系我们">Privacy Policy</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/joinus/"
					title="加入我们">Terms of Use</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/copyright/"
					title="服务声明">Terms of Service</a> | <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/links/" title="友情链接">Copyright</a>
				| <a class="ac" target="_blank"
					href="https://www.meishichina.com/minisite/red/sitemap/"
					title="网站地图">Advertise</a> | <a class="ac" target="_blank"
					title="移动应用" href="https://www.meishichina.com/Mobile/">Contact</a>
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

			Created by <a class="af" target="_blank" href="https://github.com/ChenXiang96/">Xiang Chen</a>. Copyright &copy; 2025 <a class="af"
				target="_blank" href="https://github.com/ChenXiang96/"
				title="Xiang Chen-github">Xiang Chen. All rights reserved.</a>

			<!-- 新增社交媒体图标 -->
		<span class="social-icons">
    <a href="#"><i class="fab fa-facebook"></i></a>
    <a href="#"><i class="fab fa-instagram"></i></a>
    <a href="#"><i class="fab fa-tiktok"></i></a>
    <a href="#"><i class="fab fa-youtube"></i></a>
    <a href="#"><i class="fab fa-flipboard"></i></a>
    <a href="#"><i class="fab fa-pinterest"></i></a>
    
    
</span>
		</p>
		

	</div>
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