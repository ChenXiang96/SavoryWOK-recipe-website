<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${ pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

<link href="${ pageContext.request.contextPath}/css/flexslider1.css" rel="stylesheet" />

<link href="${ pageContext.request.contextPath}/css/style2.css" rel="stylesheet" />
  <style>
  
  
header .navbar {
  	margin-top:15px;
    }
  
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
<div class="wrap-body">
	
  <div id="wrapper" class="home-page">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top" margin-top="20px" >
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
						<li><a href="${pageContext.request.contextPath}/health/list">菜谱</a></li>
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
	</header>
	<!-- end header -->

	
		<section id="banner">

	</section>
	
	
</div>
	