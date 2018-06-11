<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

   <!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title>Health</title>
	<meta name="description" content="">
	<meta name="author" content="">
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/slide.css">
	<link rel="stylesheet" href="css/menu.css">
	
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
<link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="css/style2.css" rel="stylesheet" />
   
<style>
.content-box.box-1 .box-item {

    margin-top: 40px;
}


</style>
<style>
.zerogrid .col-1-3, .zerogrid .col-1-3-fixed {
    /* width: 33.33%; */
    width: 33%;
    float: right;
    /* margin-left: auto; */
    /* margin-right: auto; */
    /* margin-left: 10px; */
    /* margin: 0 auto; */
}
.zerogrid .row {
    margin-right: 30px;
}
.content-box .header {

    margin-bottom: 35px;
}
.zerogrid {
    width: 1580px;
    position: relative;
    margin: 0 auto;
    padding: 0px;
}

a {
    color: #654E2D;
    
}
    
</style>

</head>
<body style="background: url(#2D2D2D)">
<div class="wrap-body">
	
	
<%@ include file="menu3.jsp" %>
	


	<!-- 
	<div class="zerogrid">
		<div class="callbacks_container">
			<ul class="rslides" id="slider4">
				<li>
					<img src="images/SMZ.jpg" alt="">
					<div class="caption">
						<h2>早餐·百变三明治</h2></br>
						<p>用三明治当早餐即营养又健康，不管你是用来当早餐，还是去郊外郊游，带起来都很方便，做法更是简单. </p>
					</div>
				</li>
				<li>
					<img src="images/JZD.jpg" alt="">
					<div class="caption">
						<h2>鸡蛋仔？华夫饼？—给华夫饼锅子再找个用途</h2></br>
						<p>刚刚出炉鸡蛋仔最是香气四溢，金黄的色泽让人一看就知道香脆无比，浓浓的蛋香更是让人闻之心醉。咬上一口这酥脆的外壳，你会惊喜的发现里面竟然另有玄机.</p>
					</div>
				</li>
				<li>
					<img src="images/LB.jpg" alt="">
					<div class="caption">
						<h2>爱上素食·健康的苏帮菜.</h2></br>
						<p>今天一大早起来，
						没菜伴粥吃，
						看到昨天买的一根胖萝卜，
						立即决定，凉拌它!</p>
					</div>
				</li>
				<li>
					<img src="images/Z.jpg" alt="">
					<div class="caption">
						<h2>滋补养生粥，丰富你的中式早餐</h2></br>
						<p>一粥一饭当思来之不易，一饮一啄饱蘸苦辣酸甜.</p>
					</div>
				</li>
								<li>
					<img src="images/LP.jpg" alt="">
					<div class="caption">
						<h2>一碗裤袋宽的凉皮让你轻松过苦夏</h2></br>
						<p>炎热的夏天没胃口？来份凉皮吧~鲜嫩、滑爽的面皮拌上香喷喷的辣椒油和调料汁.</p>
					</div>
				</li>
				
				
				
				
			</ul>
			
			
			
			
		</div>
	</div>
	 -->
	
<!--////////////////////////////////////Container-->
<section id="container" class="index-page">
	<div class="wrap-container zerogrid">
		<!-----------------content-box-1-------------------->
		<section class="content-box box-1">
			<div class="zerogrid">
				<div class="row box-item"><!--Start Box-->
					<h2>“我们有最健康的食谱”</h2>
				</div>
			</div>
		</section>
		<!-----------------content-box-2-------------------->
		<section class="content-box box-2">
			<div class="zerogrid">
				<div class="row wrap-box"><!--Start Box-->
		
					<div class="header">
						<h2>欢迎</h2>
			      
						<span>这是为您推荐的健康营养菜单</span>
					</div>
					
					
					<div class="row">
			    	
			    
				    <c:forEach var="s" items="${hList}"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								<div><a href="#" style="font-size:24px"><c:out value="${s.pdesc}"/></a></div>
									<span class="ribbon"><c:out value="${s.pname }"/><b></b></span>
									 <img src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>"style="display: block;" />
									<p><c:out value="${s.pcontent}"/></p>
									<a href="#" class="button button-1">详情</a>
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
	<script src="js/classie.js"></script>
	<script src="js/demo.js"></script>

	<script src="js/jquery-1.11.3.min.js"></script>
	<script src="js/responsiveslides.min.js"></script>
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
</body></html>