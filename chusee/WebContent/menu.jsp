<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
.imgl{
margin-left:40px;
}

  </style>  
  <div class="fixed-footer">
  <a href="#" class="scrollup"></a>
  </div>
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
                    <a class="" href="${ pageContext.request.contextPath}/index"><img class="imgl" src="${pageContext.request.contextPath}/images/lo.png" alt="logo"/></a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li class="active"><a  href="${ pageContext.request.contextPath}/index">主页</a></li> 
						<li><a href="${ pageContext.request.contextPath}/health/list">菜谱</a></li>
						<li><a href="${ pageContext.request.contextPath}/location.jsp">周边</a></li>
                        <li><a href="${ pageContext.request.contextPath}/archive/list">甄选</a></li>
                        <li><a href="${ pageContext.request.contextPath}/myHealth">健康</a></li>
                        <li><a href="${ pageContext.request.contextPath}/reservation.jsp">专题</a></li>
                        <li><a href="${ pageContext.request.contextPath}/topicshow">社区</a></li>
                        <li><a href="${ pageContext.request.contextPath}/gallery.jsp">话题</a></li>
                        
                    <c:if test="${sessionScope.user == null}">
				       <li class="nav navbar-nav">
				 	     <a href="${ pageContext.request.contextPath }/userLogin">登录 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a>
				       </li>
				       <li class="nav navbar-nav"><a href="${ pageContext.request.contextPath }/userRegister">注册</a>
				       </li>
			        </c:if>
			        
			        
			<c:if test="${sessionScope.user != null}">
				<li class="nav navbar-nav">
					<a href="${ pageContext.request.contextPath }/center/get"><c:out value="${user.username }"/></a>
					
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
	</header>
	<!-- end header -->
	<section id="banner">
	 
	<!-- Slider -->
        <div id="main-slider" class="flexslider">
            <ul class="slides">
              <li>
                <img src="img/slides/1.jpg" alt="" />
                <div class="flex-caption container">
                     <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p>  
                </div>
              </li>
              
              <li>
                <img src="img/slides/2.jpg" alt="" />
                <div class="flex-caption container">
                   <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p> 				
                </div>
              </li>
              
                <li>
                <img src="img/slides/3.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p>   					
                </div>
              </li>
              
                <li>
                <img src="img/slides/4.jpg" alt="" />
                <div class="flex-caption container">
                   <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p>   					
                </div>
              </li>
              
                <li>
                <img src="img/slides/5.jpg" alt="" />
                <div class="flex-caption container">
                   <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p> 				
                </div>
              </li>
              <li>
                <img src="img/slides/6.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p> 			
                </div>
              </li>
              <li>
                <img src="img/slides/7.jpg" alt="" />
                <div class="flex-caption container">
                    <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p>    					
                </div>
              </li>
              <li>
                <img src="img/slides/8.jpg" alt="" />
                <div class="flex-caption container">
                   <h3>品味时光醇香</h3>  
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p>  					
                </div>
              </li>
              
              <li>
                <img src="img/slides/9.jpg" alt="" />
                <div class="flex-caption container">
                   <h3>品味时光醇香</h3> 
					<p>回 味 唇 齿 留 香 的 美 好 瞬 间</p> 			
                </div>
              </li>
              
            </ul>
        </div>
	<!-- end slider -->
 
	</section>
	
	
	
</div>
	