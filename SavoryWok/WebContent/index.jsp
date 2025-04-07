<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->

<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>ChinaZ</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/zerogrid.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/slide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/menu.css">



<link href="https://fonts.googleapis.com/css2?family=Satisfy:wght@400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">

<!-- Custom Fonts -->
<link
	href="${pageContext.request.contextPath}/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
<!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->


<!-- [ Optional ] -->


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">


<!-- [ REQUIRED ] -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bpHS.min.css">



<style>
.bp-hs img {
	max-width: 100%;
	margin-top: 30px;
	/* margin-left: 100px; */
	/* margin: 0 auto; */
	margin-left: 154px;
	width: 1200px;
	position: center;
	vertical-align: middle;
}

.bp-hs .bp-hs_control .bp-btn {
	margin-left: 200px;
	margin-right: 200px;
}

.ui_title {
	height: 45px;
	border-bottom: 1px solid #E8E8E8;
	position: relative;
	border-bottom: none !important;
}

.ui_title_wrap h1.on a, .ui_title_wrap h2.on a, .ui_title_wrap h3.on a {
	color: #ff6767;
}

.ui_title_wrap h1, .ui_title_wrap h2, .ui_title_wrap h3 {
	float: left;
	/* font-weight: 400; */
	display: inline-block;
	font-size: 20px;
	margin-right: 40px;
	color: #666;
	padding-bottom: 4px;
	outline: 0;
	color: #333;
	max-width: 100%;
	overflow: hidden;
	text-decoration: none;
	text-overflow: ellipsis;
	white-space: nowrap;
}

a {
	color: #654e2d;
}

a.right1 {
	margin-left: 220px;
}

a {
	font-size: 18px;
}

a.right2 {
	margin-left: 90px;
}

#main-content .wrap-content {
	width: 1185px;
}

.zerogrid {
	width: 1400px;
	position: relative;
	margin: 0 auto;
	padding: 0px;
}

.unified-image {
	width: 340px !important; /* 继承父容器宽度 */
	height: 340px !important; /* 固定高度 */
	object-fit: cover !important;
	display: block !important;
}

.wrap-content {
	padding: 0 12px !important; /* 与row的margin-right对齐 */
	border-right: none !important;
}

.flex-row {
	display: flex !important;
	flex-wrap: wrap !important;
	gap: 12px;
	justify-content: center !important;
	width: 100%; /* 关键补充 */
}

.col-1-4 {
	float: none !important; /* 关键！清除原有浮动 */
	flex: 0 0 calc(25% - 9px) !important;
	box-sizing: border-box !important;
}

.ui_title {
	clear: both !important;
	margin-bottom: 30px !important;
	min-height: 100px;
	overflow: visible !important; /* 确保内容可视 */
}

.wrap-content {
	position: relative;
	z-index: 1;
}

/* 强制h3保持行内块特性 */
.ui_title_wrap h3 {
	display: inline-block !important;
	margin: 0 15px !important; /* 调整间距 */
	vertical-align: middle;
}

.ui_title_wrap {
	display: flex !important;
	flex-wrap: nowrap !important;
	justify-content: center !important;
	gap: 45px !important; /* 图片间距 */
	overflow-x: auto; /* 允许横向滚动 */
}

.ui_title_wrap h3 {
	margin: 0 !important; /* 清除默认边距 */
	flex-shrink: 0; /* 禁止缩小 */
}

.category-image {
	width: 90px !important; /* 统一宽度 */
	height: 90px !important; /* 统一高度 */
	object-fit: contain !important; /* 关键：裁剪适配 */
	display: block !important; /* 消除行内元素间隙 */
	border-radius: 8px; /* 可选圆角 */
	background: none !important;
	border: none !important;
	box-shadow: none !important;
	padding: 0 !important;
	object-position: center;
}

.li1 {
	margin-left: 15px;
}

header {
	background: #FFFFFF url(../images/bg-header.png) repeat;
	padding: 15px 0;
	height: 90px;
}

.r2 {<!--为您推荐样式-- > position:absolute;
	top: 50px;
	position: relative;
	display: inline-block;
	font-size: 21px;
	width: 170px;
	padding: 6px 0px;
	text-align: center;
	margin-left: -20px;
	color: #fff;
	background: #C9000B;
	-webkit-box-shadow: 3px 2px 4px rgba(0, 0, 0, .5);
	-moz-box-shadow: 3px 2px 4px rgba(0, 0, 0, .5);
	box-shadow: 3px 2px 4px rgba(0, 0, 0, .5);
}

.r2:before {
	content: ' ';
	position: absolute;
	width: 0;
	height: 0;
	left: 0px;
	top: 100%;
	border-width: 5px 10px;
	border-style: solid;
	border-color: #470000 #470000 transparent transparent;
}

.r2 b {
	position: absolute;
	width: 0;
	height: 0;
	right: -10px;
	bottom: 0;
	border-width: 10px 5px;
	border-style: solid;
	border-color: transparent transparent #C9000B #C9000B;
}

.r2:after {
	content: ' ';
	position: absolute;
	width: 0;
	height: 0;
	right: -10px;
	top: 0;
	border-width: 10px 5px;
	border-style: solid;
	border-color: #C9000B transparent transparent #C9000B;
}

.content-box.box-2 img {
	background: #e9e9e9;
	padding: 4px;
	border: 2px solid #ccc;
	width: 440px;
}

.navbar-default .navbar-brand {
	position: absolute;
}

#main-content .wrap-content {
	width: 100%;
}

a.right3 {
	color: #5A0000;
	display: flex !important;
	flex-direction: column !important;
	align-items: center !important;
	gap: 8px !important;
}

.right3 span {
	text-align: center !important;
	white-space: nowrap;
	max-width: 120px;
	overflow: hidden;
	text-overflow: ellipsis;
}

a.right {
	margin-left: 170px;
}
.zoom-container {
    position: relative !important;  /* 关键定位基准 */
}
.zoom-caption {
    display: flex !important;       /* 关键属性 */
    align-items: center !important; /* 垂直居中 */
    height: 100% !important;        /* 继承父级高度 */
    width: 100% !important;         /* 继承容器宽度 */
    left: 0 !important;
    background: rgba(0, 0, 0, 0.4) !important;
}

.zoom-caption span { /* 修改内层span */
	height: 110px !important; /* 固定高度 */
	display: flex !important; /* 启用弹性容器 */
	align-items: center; /* 垂直居中 */
	justify-content: center; /* 水平居中 */
	flex-direction: column; /* 允许多行居中 */
	padding: 8px !important; /* 内边距保护 */
	top: 0px !important; /* 移除原定位偏移 */
	line-height: 1.3 !important; /* 优化行间距 */
	white-space: normal !important; /* 允许换行 */
	overflow: hidden; /* 隐藏溢出内容 */
	position: static !important;    /* 移除绝对定位 */
    transform: none !important;     /* 清除旧定位 */
    margin-top: -5px !important;
    width: 100% !important;         /* 强制撑满宽度 */
    box-sizing: border-box !important;
}
.scrollup {
    position: fixed;
    width: 82px;
    height: 82px;
    bottom: 0px;
    right: 20px;
    z-index: 102410;
    /* background: #CF6A14; */
    background: url(//static.meishichina.com/v6/img/wap_a/gotop.png) no-repeat scroll center center/58px 58px;
}

.header h2 {
  font-family: 'Satisfy';
  font-weight: 700;
  letter-spacing: 1px;
  color: #D35400;
  
}

.header span {
  font-family: 'Montserrat';
  font-weight: 300;
  font-weight: bold;
  letter-spacing: 1px;
  color: #E67E22;
  font-size: 2.2rem;
  
}

.box-item img {
    width: 100%;          /* 宽度占满容器 */
    max-width: 440px;     /* 最大显示宽度 */
    height: 300px;        /* 固定高度 */
    object-fit: cover;    /* 关键属性：保持比例填充容器 */
    object-position: center; /* 聚焦图片中央区域 */
    display: block;       /* 消除底部间隙 */
    margin: 0 auto 15px; /* 垂直间距控制 */
}

</style>

</head>
<body style="background: url(#2D2D2D)">

	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.touchSwipe.min.js"></script>
	<!-- optional (required for touchSwipe option) -->
	<script src="${pageContext.request.contextPath}/js/bpHS.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/custom.js"></script>






	<%@ include file="menu.jsp"%>
	<!-- 18/4/4 -->



	<!--////////////////////////////////////Container-->
	<section id="container" class="index-page">
		<div class="wrap-container zerogrid">
			<!-----------------content-box-1-------------------->
			<section class="content-box box-1">
				<div class="zerogrid">
					<div class="row box-item">
						<!--Start Box-->
						<center>
							<h2>开启属于我的美食之旅</h2>
						</center>
					</div>
				</div>
			</section>
			<!-----------------content-box-2-------------------->
			<section class="content-box box-2">
				<div class="zerogrid">
					<div class="row wrap-box">

						<div class="w5">

							<div id="main-content">
								<div class="ui_title">
									<div class="ui_title_wrap">
										<c:forEach items="${sessionScope.cList}" var="c">
											<h3>
												<a title="健康首页"
													href="${ pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1"
													class="right3" target="_blank"> <img
													src="${pageContext.request.contextPath}/${c.cimage}"
													class="category-image" alt="${c.cname}" /> <span
													style="font-size: 1em; display: block; font-weight: 500;">
														<c:out value="${c.cname}"></c:out>
												</span>

												</a>
											</h3>
										</c:forEach>

									</div>
								</div>

								<div class="wrap-content">
									<div class="flex-row" style="margin-right: 12px;">
										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/8">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal  ">
															Hot and Spicy Diced Chicken </span>
												</span> <img src="Dishes images/Main Dishes/8.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/9">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Braised
															Duck with Lotus Root</span>
												</span> </span> <img src="Dishes images/Main Dishes/9.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/36">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Braised
															Beef Noodles</span>
												</span> </span> <img src="Dishes images/Noodles/5.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>


										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/23">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Steamed Crab</span>
												</span> </span> <img src="Dishes images/Main Dishes/23.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>
										
										

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/22">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Tofu
															& Perch Hotpot</span>
												</span> </span> <img src="Dishes images/Main Dishes/22.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/96">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Braised
															Minced Pork with Green Peppers</span>
												</span> </span> <img src="Dishes images/Main Dishes/29.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/87">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Grilled
															Lamb Skewers</span>
												</span> </span> <img src="Dishes images/Appetizers/10.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>

										<div class="col-1-4">

											<div class="zoom-container"
												style="display: inline; float: left;">
												<a href="${pageContext.request.contextPath}/findByPid/29">
													<span class="zoom-caption"> <span
														style="height: 110px !important; display: flex !important; align-items: center; justify-content: center; line-height: 1.3; padding: 8px; white-space: normal">Chilled
															Silken Tofu Salad</span>
												</span> </span> <img src="Dishes images/Appetizers/5.jpg"
													class="unified-image" />
												</a>
											</div>
										</div>



									</div>

								</div>

							</div>
						</div>
						<!--Start Box-->
						<div class="header">
							<h2 class="font-effect-shadow-multiple">"Fuel your day with flavors you love"</h2>
							<hr class="line">
							<span>Curated Delights</span>
						</div>
						<div class="row">


							<c:forEach items="${sessionScope.cList2}" var="c" begin="0"
								end="0">
								<div class="col-1-3">
									<div class="wrap-col">
										<div class="box-item">
											
											<span class="ribbon" style="display:inline-block !important; min-width:220px"> 
											   <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
												 <c:out value="${c.caname}"></c:out>
											   </a> 
											   <b></b>
										    </span>


											<c:forEach items="${nList2}" var="s" begin="0" end="0">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>

											</c:forEach>




											<p>
												<c:forEach var="cs" items="${c.categorySeconds}">

													<li class="li1"><a
														href="${ pageContext.request.contextPath }/findByCasid/<c:out value="${cs.casid}/1"/>"
														style="color: #5A0000"> <c:out value="${cs.casname}"></c:out>
													</a></li>

												</c:forEach>
											</p>
											<a href="#" class="button button-1">更多</a>


										</div>
									</div>
								</div>
							</c:forEach>



							<c:forEach items="${sessionScope.cList2}" var="c" begin="1"
								end="1">
								<div class="col-1-3">
									<div class="wrap-col">
										<div class="box-item">
										

											<span class="ribbon" style="display:inline-block !important; min-width:220px"> <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> <c:out
														value="${c.caname}"></c:out>
											</a> <b></b></span>
											<!--<c:forEach var="s" items="${subject}" begin="8" end="9">
									<a href="${ pageContext.request.contextPath }/findBySid/<c:out value="${p.pid}"/>">
						             <img src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>" >
						            </a>
									</c:forEach>
									-->

											<c:forEach items="${nList2}" var="s" begin="1" end="1">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>

											</c:forEach>




											<p>
												<c:forEach var="cs" items="${c.categorySeconds}">

													<li class="li1"><a
														href="${ pageContext.request.contextPath }/findByCasid/<c:out value="${cs.casid}/1"/>"
														style="color: #5A0000"> <c:out value="${cs.casname}"></c:out>
													</a></li>

												</c:forEach>
											</p>
											<a href="#" class="button button-1">更多</a>


										</div>
									</div>
								</div>
							</c:forEach>

							<c:forEach items="${sessionScope.cList2}" var="c" begin="2"
								end="2">
								<div class="col-1-3">
									<div class="wrap-col">
										<div class="box-item">
											

											<span class="ribbon" style="display:inline-block !important; min-width:220px"> 
											    <a title="健康首页"  href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1" 
											       style="color: #FFFFFF; target="_blank"> 
											       <c:out value="${c.caname}"></c:out>
											    </a><b></b>
											</span>

											<c:forEach items="${nList2}" var="s" begin="2" end="2">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>

											</c:forEach>

											<p>
												<c:forEach var="cs" items="${c.categorySeconds}">

													<li class="li1"><a
														href="${ pageContext.request.contextPath }/findByCasid/<c:out value="${cs.casid}/1"/>"
														style="color: #5A0000"> <c:out value="${cs.casname}"></c:out>
													</a></li>

												</c:forEach>
											</p>
											<a href="#" class="button button-1">更多</a>


										</div>
									</div>
								</div>
							</c:forEach>

						</div>

						
					</div>
				</div>
			</section>
		</div>
	</section>

	<!--////////////////////////////////////Footer-->


	<%@ include file="footer3.jsp"%>
	 <div class="fixed-footer">
  <a href="#" class="scrollup"></a>
  </div>
	<!-- js -->
	<script src="${pageContext.request.contextPath}/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/js/demo.js"></script>

	<script
		src="${pageContext.request.contextPath}/js/jquery-1.11.3.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
	<script>
	$(function () {
	  // Slideshow 4
	  $("#slider4").responsiveSlides({
		auto: true,
		pager: false,
		nav: false,
		speed: 500,
		namespace: "callbacks",
		before: function () {
		  $('.events').append("<li>before event fired.</li>");
		},
		after: function () {
		  $('.events').append("<li>after event fired.</li>");
		}
	  });
	});
	</script>
	</div>
</body>

</html>