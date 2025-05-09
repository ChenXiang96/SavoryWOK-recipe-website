<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width">
<meta name="apple-itunes-app" content="app-id=460979760">
<meta name="baidu-site-verification" content="HNAbHIxmbo">
<meta name="renderer" content="webkit">
<link href="http://www.xiachufang.com/favicon.ico" rel="shortcut icon"
	type="image/x-icon">
<!-- footer -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/css/style2.css"
	rel="stylesheet" />



<script type="text/javascript" async=""
	src="${pageContext.request.contextPath}/js/ga.js"></script>
<script type="text/javascript" async=""
	src="${pageContext.request.contextPath}/js/vds.js"></script>
<script src="${pageContext.request.contextPath}/js/hm.js"></script>
<script src="${pageContext.request.contextPath}/js/ds.js"></script>


<link rel="canonical" href="https://www.xiachufang.com/explore/rising/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.xiachufang.com/explore/rising/">
<link rel="alternate" media="handheld"
	href="https://m.xiachufang.com/explore/rising/">

<meta name="keywords" content="THEMES">
<meta name="description" content="THEMES">

<link
	href="${pageContext.request.contextPath}/css/b98b18476b23b2e6dc0f.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/css/2b7819a7de22ed2b0d8a.css"
	rel="stylesheet" type="text/css">


<script>
	var _hmt = _hmt || [];
	(function() {
		var hm = document.createElement("script");
		hm.src = "https://hm.baidu.com/hm.js?ecd4feb5c351cc02583045a5813b5142";
		var s = document.getElementsByTagName("script")[0];
		s.parentNode.insertBefore(hm, s);
	})();
</script>



<script type="text/javascript">
	var _vds = _vds || [];
	window._vds = _vds;
	(function() {
		_vds.push([ 'setAccountId', '8187ff886f0929da' ]);
		(function() {
			var vds = document.createElement('script');
			vds.type = 'text/javascript';
			vds.async = true;
			vds.src = ('https:' == document.location.protocol ? 'https://'
					: 'http://')
					+ 'dn-growing.qbox.me/vds.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(vds, s);
		})();
	})();
	
</script>






<script type="text/javascript">
	_gaq = [
			[ '_setAccount', 'UA-22069234-1' ],
			[ '_setCustomVar', 1, 'user', 'anonymous', 3 ],
			[ '_setCustomVar', 4, 'dish_title', 'dish_title_0', 3 ],
			[ '_setCustomVar', 5, 'recommend_recipe_list',
					'recommend_recipe_list_1', 3 ], [ '_trackPageview' ],
			[ '_trackPageLoadTime' ] ];

	(function() {
		var ga = document.createElement('script');
		ga.type = 'text/javascript';
		ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl'
				: 'http://www')
				+ '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0];
		s.parentNode.insertBefore(ga, s);
	})()
</script>

<!--<![endif]-->
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Themes</title>
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
<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">

</head>
<body style="background: url(#2D2D2D)">
	<%@ include file="MainMenu.jsp"%>
	<div class="wrap-body">

		<section id="container" class="sub-page">
		<div class="wrap-container zerogrid">

			<div id="main-content">
				<div class="wrap-content">
					<div class="row">
						<div class="pure-g">
							<div class="pure-u-3-4 search-result-list" width="85%">
								<h1 class="page-title"></h1>
								<div class="normal-recipe-list">
									<ul class="list">

										<c:forEach items="${ slist }" var="s">
											<li>


												<div
													class="recipe recipe-215-horizontal pure-g image-link display-block">
													<a
														href="${pageContext.request.contextPath}/essayshow?se=${s.sid}&sessay=${s.sessay}"
														data-click-tracking-url="" data-expose-tracking-url=""
														target="_blank">
														<div class="cover pure-u">
															<img src="${pageContext.request.contextPath}/${s.simg}"
																data-src="http://s2.cdn.xiachufang.com/cf1cd37a3a9d11e7bc9d0242ac110002_2304w_1728h.jpg?imageView2/1/w/215/h/136/interlace/1/q/90"
																alt="THEMES IMAGE" class="unveiled" style="border-radius: 8px;">
														</div>
													</a>
													<div class="info pure-u">
														<p class="name">
															<a href="${pageContext.request.contextPath}/essayshow?se=${s.sid}&sessay=${s.sessay}"
																data-click-tracking-url="" data-expose-tracking-url=""
																target="_blank"> ${s.stitle } </a>
														</p>
														<p class="ing">
															<span>${s.scontent } </span>
														</p>
														<p class="stat green-font">${s.stime }&nbsp;</p>

													</div>
												</div>

											</li>
										</c:forEach>
								</div>
							</div>

							<div class="right-slogan-box pure-u-1-4">
								<img src="${pageContext.request.contextPath}/Banner-images/right-banner1.png"
									alt="slogan image" class="slogan-image">
							</div>

						</div>
					</div>
				</div>

			</div>
		</div>
	</div>

	</section>


	<!--////////////////////////////////////Footer-->
	<%@ include file="MainFooter.jsp"%>

	<style>


.pure-u-3-4.search-result-list {
	width: 85% !important;
	margin-left: 10%; 
}


.recipe-215-horizontal.pure-g {
	display: flex;
	flex-wrap: nowrap; 
}

.recipe-215-horizontal .pure-u {
	width: auto !important; 
	flex: 1 1 auto;
}


.recipe-215-horizontal .cover {
	flex: 0 0 300px;
}

.recipe-215-horizontal .cover img {
	width: 300px !important;
	height: calc(300px * ( 136/ 215)) !important; 
	object-fit: cover;
}

.recipe-215-horizontal .info {
	padding-left: 25px; 
}

.recipe-215-horizontal .name a {
	font-size: 20px;
	line-height: 1.4; 
	font-weight: 600;
	color: #333; 
}

.recipe-215-horizontal .ing span {
	font-size: 14px; 
	line-height: 1.6;
	color: #666;
	display: -webkit-box;
	-webkit-line-clamp: 2; 
	-webkit-box-orient: vertical;
	overflow: hidden;
}

.recipe-215-horizontal .stat {
	font-size: 13px; 
	margin-top: 8px;
}


.pure-g {
    display: flex;          
    align-items: stretch; 
    margin: 0 -25px;       
}

.left-column {
    width: 75% !important; 
    padding: 0 15px;
    order: 1;               
}

.right-slogan-box {
    width: 50% !important;
    padding: 0 15px;
    order: 2;
    background: transparent;   
    border-radius: 8px;   
    overflow: hidden;      
    margin-left:100px;
}

.slogan-image {
    width: 100%;
    height: 70%;
    object-fit: cover;
    object-position: center;
    min-height: 600px;     
}
.row::after {
    display: none !important;
}
.wrap-content,
.pure-g {
    border: 0 !important;
    outline: 0 !important;
    box-shadow: none !important;
}

</style>

	<script src="${pageContext.request.contextPath}/js/classie.js"></script>
	<script src="${pageContext.request.contextPath}/js/demo.js"></script>

	</div>
</body>
</html>