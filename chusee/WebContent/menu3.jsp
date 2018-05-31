<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />

<link href="css/flexslider1.css" rel="stylesheet" />

<link href="css/style2.css" rel="stylesheet" />
 
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
<style>
.container {
    position: relative;
    bottom: 20px;
}
header ul.nav li a {
    font-size: 20px;
    border: none;
    font-weight: 400;
    text-transform: uppercase;
    text-align: right;
    top: 20px;
}
header .navbar {
    /* min-height: 70px; */
    padding: 10px 0;
    height: 110px;
}
a.navbar-brand:before {
    content: '';
    z-index: 99;
    position: absolute;
    width: 0;
    height: 0;
    border-left: 87px solid transparent;
    border-right: 92px solid transparent;
    border-top: 42px solid #81c402;
    left: 0;
    bottom: -42px;
}
</style>
</head>
<body>
<div id="wrapper">

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
                    <a class="navbar-brand" href="index.html">
                     
                    <img src="img/lo1.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                       <li class="active"><a  href="${ pageContext.request.contextPath}/index">主页</a></li> 
						<li><a href="cai.jsp">菜谱</a></li>
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
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">Gallery</h2>
			</div>
		</div>
	</div>
	</section>
	
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script> 
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>