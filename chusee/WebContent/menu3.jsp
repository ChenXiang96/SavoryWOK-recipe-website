<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="" />
<!-- css -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/flexslider1.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet" />
 
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
#inner-headline h2.pageTitle {
    color: #81C402;
    padding: 5px 15px;
    text-align: right;
    display: block;
    font-size: 25px;
}
.imgl{

margin-left:40px;
margin-top:35px;
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
                    <a class="" href="index.html">
                     
                    <img class="imgl" src="${pageContext.request.contextPath}/images/lo.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                       <li class="active"><a  href="${ pageContext.request.contextPath}/index">主页</a></li> 
						<li><a href="cookbook.jsp">菜谱</a></li>
						<li><a href="location.jsp">周边</a></li>
                        <li><a href="archive.jsp">甄选</a></li>
                        <li><a href="${ pageContext.request.contextPath}/myHealth">健康</a></li>
                        <li><a href="reservation.jsp">专题</a></li>
                        <li><a href="topic/test">社区</a></li>
                        <li><a href="gallery.jsp">话题</a></li>
                    
                    
                    <c:if test="${sessionScope.user == null}">
				       <li class="nav navbar-nav">
				 	     <a href="${ pageContext.request.contextPath }/userLogin">登录 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
				       </li>
				       <li class="nav navbar-nav"><a href="${ pageContext.request.contextPath }/userRegister">注册</a>
				       </li>
			        </c:if>
			        
			       <c:if test="${sessionScope.user != null}">
				     <li class="nav navbar-nav">
					   <a><c:out value="${user.username }"/></a>
					 </li>
				     <li class="nav navbar-nav">
				      <a>|</a>
			       	 </li>
				    <li class="nav navbar-nav"><a
					  href="${ pageContext.request.contextPath }/quit">退出</a>
				    </li>
			      </c:if>
                        
                    </ul>
                </div>
            </div>
        </div>
	</header><!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<h2 class="pageTitle">美味常在身边</h2>
			</div>
		</div>
	</div>
	</section>
	
</div>

<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.fancybox-media.js"></script> 
<script src="${pageContext.request.contextPath}/js/portfolio/jquery.quicksand.js"></script>
<script src="${pageContext.request.contextPath}/js/portfolio/setting.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate.js"></script>
<script src="${pageContext.request.contextPath}/js/custom.js"></script>
</body>
</html>