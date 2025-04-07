<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

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
<link href="https://fonts.googleapis.com/css2?family=Satisfy:wght@400;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia&effect=neon|outline|emboss|shadow-multiple">
   
<style>
.content-box.box-1 .box-item {

    margin-top: 40px;
}


</style>
<style>
.zerogrid .col-1-3, .zerogrid .col-1-3-fixed {
    width: 33.333% !important; /* 精确3列 */
    float: none !important;    /* 关键：移除浮动 */
    display: inline-block;
    vertical-align: top;
    box-sizing: border-box;
    padding: 0 15px !important; /* 列间距 */
}
.zerogrid .row {
    margin-right: 30px;
}
.content-box .header {

    margin-bottom: 35px;
    margin-top: -25px !important; /* 负值向上移动 */
    padding-bottom: 15px !important;
}
.zerogrid {
    max-width: 100% !important; /* 添加 */
    display: block !important;
    margin: 0 auto !important; /* 双auto实现居中 */
    width: 90% !important;
    padding: 0 20px;
   
}

.content-box .header {
    text-align: center !important; /* 文字居中 */
    margin-left: auto !important;
    margin-right: auto !important;
    max-width: 800px; /* 控制标题区域最大宽度 */
}

.row {
    display: flex !important;
    flex-wrap: wrap !important;
    justify-content: flex-start !important;
    margin-right: -15px !important; /* 抵消padding */
    margin-left: -15px !important;
    justify-content: center !important;
}

a {
    color: #654E2D;
    
}

.box-1 .row.box-item {
    margin-top: 10px !important;
    margin-bottom: 10px !important;
    max-width: 1280px !important; /* 控制最大显示宽度 */
    margin: 20px auto 40px !important;
}

.content-box box-1{
   padding-bottom:5px;
}
.box-1 img {
    border-radius: 12px; /* 可选圆角 */
    box-shadow: 0 4px 15px rgba(0,0,0,0.1); /* 添加立体感 */
}


section.content-box .header h2.font-effect-shadow-multiple {
    color: #32CD32 !important;  
    font-family: 'Satisfy', cursive !important;
    font-size: 3.5rem !important;
}

.box-item img {
    width: 100%;          /* 宽度占满容器 */
    max-width: 400px;     /* 最大显示宽度 */
    height: 230px;        /* 固定高度 */
    object-fit: cover;    /* 关键属性：保持比例填充容器 */
    object-position: center; /* 聚焦图片中央区域 */
    display: block;       /* 消除底部间隙 */
    margin: 0 auto 15px; /* 垂直间距控制 */
}
</style>

</head>
<body style="background: url(#2D2D2D)">
<div class="wrap-body">
	
	
<%@ include file="menu3.jsp" %>
	



	
<!--////////////////////////////////////Container-->
<section id="container" class="index-page">
	<div class="wrap-container zerogrid">
		<!-----------------content-box-1-------------------->
		<section class="content-box box-1">
			<div class="zerogrid">
				<div class="row box-item"><!--Start Box-->
					<img src="${ctx}/Banner-images/Healthy-Banner.jpg" 
                 alt="Healthy-Banner" 
                 style="width:90%; height: auto; max-width: 1920px; display: block; margin: 0 auto">
				</div>
			</div>
		</section>
		<!-----------------content-box-2-------------------->
		<section class="content-box box-2">
			<div class="zerogrid">
				<div class="row wrap-box"><!--Start Box-->
		
					<div class="header">
						<h2 class="font-effect-shadow-multiple">"Rooted in Tradition, Backed by Wellness"</h2>
						
					</div>
					
					
					<div class="row">
			    	
			    
				    <c:forEach items="${sessionScope.cList2}" var="c" begin="3" end="3"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="3" end="3">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
								</div>
							</div>
				    </div>
				    </c:forEach>
				    
				    <c:forEach items="${sessionScope.cList2}" var="c" begin="4"
								end="4"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="4" end="4">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
								</div>
							</div>
				    </div>
				    </c:forEach>
				    
				    
				    <c:forEach items="${sessionScope.cList2}" var="c" begin="5"
								end="5"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="5" end="5">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
								</div>
							</div>
				    </div>
				    </c:forEach>
				    
				    <c:forEach items="${sessionScope.cList2}" var="c" begin="6"
								end="6"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="6" end="6">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
								</div>
							</div>
				    </div>
				    </c:forEach>
				   
				   <c:forEach items="${sessionScope.cList2}" var="c" begin="7"
								end="7"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="7" end="7">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
								</div>
							</div>
				    </div>
				    </c:forEach>
				    
				    
				    <c:forEach items="${sessionScope.cList2}" var="c" begin="8"
								end="8"> 		
			    	<div class="col-1-3">
							<div class="wrap-col">
								<div class="box-item">
								
									<span class="ribbon">
									  <a title="健康首页"
												href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"
												style="color: #FFFFFF" target="_blank"> 
									    <c:out value="${c.caname}"></c:out>
									  </a>
									  <b></b>
									</span>
									
									
									 <c:forEach items="${nList2}" var="s" begin="8" end="8">
												<a
													href="${pageContext.request.contextPath }/findByPid2/<c:out value="${s.pid}"/>">
													<img
													src="${pageContext.request.contextPath}/<c:out value="${s.image}"/>" />
												</a>
												<p><c:out value="${s.pcontent}"/></p>
												<a href="${pageContext.request.contextPath}/getHealthaa?pid=${s.pid}" class="button button-1">详情</a>
									 </c:forEach>
									
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
	<script src="${ctx }/js/classie.js"></script>
	<script src="${ctx }/js/demo.js"></script>

	<script src="${ctx }/js/jquery-1.11.3.min.js"></script>
	<script src="${ctx }/js/responsiveslides.min.js"></script>
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