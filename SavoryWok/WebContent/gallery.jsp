<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" /> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>ChinaZ</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="${ctx }/css/zerogrid.css">
	<link rel="stylesheet" href="${ctx }/css/style.css">
	<link rel="stylesheet" href="${ctx }/css/slide.css">
	<link rel="stylesheet" href="${ctx }/css/menu.css">
	<!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
    		<!-- footer -->
<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx }/css/style2.css" rel="stylesheet" />
</head>
<body  style="background: url(#2D2D2D)">
<%@ include file="menu3.jsp" %>
		
<div class="wrap-body">
	<!--///////////////////////////////////////Top-->
	


<style>
a {
    color: #654e2d;
}
</style>

<!--////////////////////////////////////Container-->
<section id="container" class="sub-page">
	<div class="wrap-container zerogrid">
		<div id="main-content" class="col-2-3">
			<div class="wrap-content">
				<article>
					<div class="art-header">
						<a href="#"><h3>喵帕斯町</h3></a>
						<div class="info">2018-5-22<a href="#">你们那里管这个东西叫什么？</a></div>
					</div>
					<div class="art-content">
						<img src="images/s1.jpg" />
						<p>据说这个东西，一个地方一个叫法，一人一句家乡话：你们那里管这......</p>
					</div>
					<a class="button button02" href="#">MORE</a>
				</article>
				<article>
					<div class="art-header">
						<a href="#"><h3>不做妖精好多年</h3></a>
						<div class="info">2018-3-26<a href="#">不觉得有这么多</a></div>
					</div>
					<div class="art-content">
						<img src="images/s2.jpg" />
						<p>#早餐# 豇豆粉条肉丁包 甜蛋汤 糖拌西红柿</p>
					</div>
					<a class="button button02" href="#">MORE</a>
				</article>
				<article>
					<div class="art-header">
						<a href="#"><h3>一溪月</h3></a>
						<div class="info">2018-3-23<a href="#">Event</a></div>
					</div>
					<div class="art-content">
						<img src="images/s3.jpg" />
						<p>#2018澳门美食年# #澳门美食之国际范# 澳门的葡国菜,又分所谓正宗葡国菜和澳门本地葡国菜两种。这是因为......</p>
					</div>
					<a class="button button02" href="#">MORE</a>
				</article>
			</div>
		</div>
		<div id="sidebar" class="col-1-3">
			<div class="wrap-sidebar">
				<!---- Start Widget ---->
				<div class="widget wid-about">
					<div class="wid-header">
						<h5>About Us</h5>
					</div>
					<div class="wid-content">
						<img src="images/15.jpg"/>
						<p>吃着美食，蘸着酱料，味道齐全，味蕾才能得到最充分的满足。今天推荐15款高颜值的蘸料、小菜碟子，口味任您调~</p>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-post">
					<div class="wid-header">
						<h5>Latest Posts</h5>
					</div>
					<div class="wid-content">
						<div class="post">
							<a href="#"><img src="images/16.jpg"/></a>
							<div class="wrapper">
							  <h5><a href="#">Lorem ipsum dolor</a></h5>
							   <span>$25 - $26</span>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/14.jpg"/></a>
							<div class="wrapper">
							  <h5><a href="#">福事多水果花茶柚子饮料</a></h5>
							  <span>$25 - $26</span>
							</div>
						</div>
						<div class="post">
							<a href="#"><img src="images/13.jpg"/></a>
							<div class="wrapper">
							  <h5><a href="#">福事多水果花茶柚子饮料/a></h5>
							   <span>$25 - $26</span>
							</div>
						</div>
					</div>
				</div>
				<!---- Start Widget ---->
				<div class="widget wid-tag">
					<div class="wid-header">
						<h5>Tags</h5>
					</div>
					<div class="wid-content">
						<a href="#">animals ,</a>
						<a href="#">cooking ,</a>
						<a href="#">countries ,</a>
						<a href="#">home ,</a>
						<a href="#">likes ,</a>
						<a href="#">photo ,</a>
						<a href="#">travel ,</a>
						<a href="#">video </a>
					</div>
				</div>
				<!---- Start Widget ---->
				
			</div>
		</div>
	</div>
</section>

<!--////////////////////////////////////Footer-->
<%@ include file="footer3.jsp" %>
 <div class="fixed-footer">
  <a href="#" class="scrollup"></a>
  </div>

	<!-- js -->
	
	<style>
	
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
	</style>
	<script src="${ctx }/js/classie.js"></script>
	<script src="${ctx }/js/demo.js"></script>
	
</div>
</body>
</html>