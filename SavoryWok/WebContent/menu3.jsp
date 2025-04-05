<% 
response.setHeader("Cache-Control","no-store,must-revalidate"); 
response.setHeader("Pragma","no-cache");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/flexslider1.css"
	rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/style2.css"
	rel="stylesheet" />
<style>
.navbar .nav>li>a {
	color: #5A5A5A;
	text-shadow: none;
	border: 1px solid rgba(255, 255, 255, 0) !important;
	font-size: 18px;
}

.navbar-static-top {
	width: calc(100% + 30px) !important; /* 关键调整 */
	margin-left: 0px !important;
	padding-right: 220px !important;
	background: white !important;
}

.navbar-header {
	flex: 0 0 auto !important; /* 禁止伸缩 */
	margin-right: 20px !important;
}

header {
	background: white !important; /* 关键！覆盖可能存在的红色背景 */
	overflow: hidden;
	.
	navbar-collapse
	.collapse
	{
	margin-left
	:
	-15px
	!important; /* 补偿左移 */
}

a {
	color: #654e2d;
}

.navbar-default .navbar-brand {
	top: -38px;
	width: 184px;
}

.navbar-nav>.active>a {
	font-weight: bold !important;
	color: #654e2d !important;
	border-bottom: 2px solid #654e2d !important;
}


.site-logo {
	display: block; /* 消除图片底部间隙 */
	max-width: 280px; /* 最大宽度限制 */
	height: auto; /* 高度自动保持比例 */
	width: 100%; /* 在容器内响应式缩放 */
	margin-left: 75%;
}

/* 移动端适配 */
@media ( max-width : 768px) {
	.site-logo {
		max-width: 150px; /* 小屏幕缩小尺寸 */
	}
}

.top-menu-container {
	position: relative;
	z-index: 1000; 
	height: 80px; /* 根据实际菜单高度调整 */
}

.container{
   width:1280px !important;
}
</style>



<script src="${pageContext.request.contextPath}/js/jquery1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.fancybox.pack.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.fancybox-media.js"></script>
<script
	src="${pageContext.request.contextPath}/js/portfolio1/jquery.quicksand.js"></script>
<script
	src="${pageContext.request.contextPath}/js/portfolio1/setting.js"></script>
<script
	src="${pageContext.request.contextPath}/js/jquery1.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate1.js"></script>
<script src="${pageContext.request.contextPath}/js/custom1.js"></script>
<script
	src="${pageContext.request.contextPath}/js/owl-carousel/owl.carousel.js"></script>
<div class="wrap-body">

	<div id="wrapper" class="home-page">
		<!-- start header -->
		<header>
			<div class="top-menu-container">
				<div class="navbar navbar-default navbar-static-top"
					style="transform: none; width: 100%">
					<div class="container">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-Bistro=".navbar-collapse">
								<span class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
							<a class="" href="${ pageContext.request.contextPath}/index"><img
								class="site-logo"
								src="${pageContext.request.contextPath}/images/logo.png"
								alt="logo image" /></a>
						</div>
						<div class="navbar-collapse collapse">
							<%-- 获取当前请求路径 --%>
							<c:set var="currentPath"
								value="${requestScope['javax.servlet.forward.request_uri']}" />
							<ul class="nav navbar-nav">
								<%-- 首页菜单项 --%>
								<li class="${sessionScope.activeMenu eq 'home' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/index">Home</a></li>
								<li
									class="${sessionScope.activeMenu eq 'recipe' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/health/list">Recipes</a></li>
								
								<li
									class="${sessionScope.activeMenu eq 'Themes' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/specialshow">Themes</a></li>
									
								<li
									class="${sessionScope.activeMenu eq 'health' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/myHealth">Healthy</a></li>
									
								<li
									class="${sessionScope.activeMenu eq 'Moments' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/topicshow">Moments</a></li>
									
								<li class="${sessionScope.activeMenu eq 'Explore' ? 'active' : ''}"><a
									href="${ pageContext.request.contextPath}/location">Explore</a></li>


								<c:if test="${sessionScope.user == null}">
									<li class="nav navbar-nav"><a
										href="${ pageContext.request.contextPath }/userLogin">Sign in</a></li>
							
								</c:if>


								<c:if test="${sessionScope.user != null}">
									<li class="nav navbar-nav"><a
										href="${ pageContext.request.contextPath }/center/get"><c:out
												value="${user.username }" /></a></li>
									<li class="nav navbar-nav"><a>|</a></li>
									<li class="nav navbar-nav"><a
										href="${ pageContext.request.contextPath }/quit">退出</a></li>
								</c:if>



							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>


	</div>