<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="css/flexslider1.css" rel="stylesheet" />

<link href="css/style2.css" rel="stylesheet" />
  <style>
  .navbar .nav > li > a {
    color: #5A5A5A;
    text-shadow: none;
    border: 1px solid rgba(255, 255, 255, 0) !important;
    font-size: 18px ;
}
a{
color:#654e2d;
}
  .navbar-default .navbar-brand {

top:-38px;
    width: 184px;
}


  </style>  
  
<script src="js/jquery1.js"></script>
<script src="js/bootstrap1.min.js"></script>
<script src="js/jquery1.fancybox.pack.js"></script>
<script src="js/jquery1.fancybox-media.js"></script> 
<script src="js/portfolio1/jquery.quicksand.js"></script>
<script src="js/portfolio1/setting.js"></script>
<script src="js/jquery1.flexslider.js"></script>
<script src="js/animate1.js"></script>
<script src="js/custom1.js"></script>
<script src="js/owl-carousel/owl.carousel.js"></script>
<div class="wrap-body">
	
  <div id="wrapper" class="home-page">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-Bistro=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><img src="img/lo1.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a  href="${ pageContext.request.contextPath}/index">主页</a></li> 
						<li><a href="cookbook.jsp">菜谱</a></li>
						<li><a href="location.jsp">食材</a></li>
                        <li><a href="archive.jsp">甄选</a></li>
                        <li><a href="${ pageContext.request.contextPath}/myHealth">健康</a></li>
                        <li><a href="reservation.jsp">专题</a></li>
                        <li><a href="staff.jsp">社区</a></li>
                        <li><a href="gallery.jsp">话题</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="banner">
	 
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="img/slides/1.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>Tast of Goodness</h3> 
					<p>Doloribus omnis minus temporibus perferendis ipsa</p>  
                </div>
              </li>
              <li>
                <img src="img/slides/2.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>Best Time-out</h3> 
<p>Doloribus omnis minus temporibus perferendis ipsa</p>  					
                </div>
              </li>
            </ul>
        </div>
	<!-- end slider -->
 
	</section>
	
	
	
</div>
	