<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/flexslider1.css" rel="stylesheet" />

<link href="${pageContext.request.contextPath}/css/style2.css" rel="stylesheet" />
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

.site-logo {
  display: block;       /* 消除图片底部间隙 */
  max-width: 280px;     /* 最大宽度限制 */
  height: auto;         /* 高度自动保持比例 */
  width: 100%;          /* 在容器内响应式缩放 */
  margin-left: 50%;
}

/* 移动端适配 */
@media (max-width: 768px) {
  .site-logo {
    max-width: 150px;   /* 小屏幕缩小尺寸 */
  }
}

  </style>  
  <div class="fixed-footer">
  <a href="#" class="scrollup"></a>
  </div>
<script src="${pageContext.request.contextPath}/js/jquery1.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery1.fancybox.pack.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery1.fancybox-media.js"></script> 
<script src="${pageContext.request.contextPath}/js/portfolio1/jquery.quicksand.js"></script>
<script src="${pageContext.request.contextPath}/js/portfolio1/setting.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery1.flexslider.js"></script>
<script src="${pageContext.request.contextPath}/js/animate1.js"></script>
<script src="${pageContext.request.contextPath}/js/custom1.js"></script>
<script src="${pageContext.request.contextPath}/js/owl-carousel/owl.carousel.js"></script>
<div class="wrap-body">
	
  <div id="wrapper" class="home-page">
	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top" style="transform: translateX(-55px);
            width: calc(100% + 55px)">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-Bistro=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="" href="${ pageContext.request.contextPath}/index"><img class="site-logo" src="${pageContext.request.contextPath}/images/logo.png" alt="logo image"/></a>
                </div>
                <div class="navbar-collapse collapse">
                    <%-- 获取当前请求路径 --%>
                    <c:set var="currentPath" value="${requestScope['javax.servlet.forward.request_uri']}"/>
                    <ul class="nav navbar-nav">
                        <%-- 首页菜单项 --%>
                        <li><a href="${ pageContext.request.contextPath}/index">主页</a></li> 
						<li class="${sessionScope.activeMenu eq 'recipe' ? 'active' : ''}"><a href="${ pageContext.request.contextPath}/health/list">菜谱</a></li>
						<li><a href="${ pageContext.request.contextPath}/location.jsp">周边</a></li>
                        <li><a href="${ pageContext.request.contextPath}/myHealth">健康</a></li>
                        <li><a href="${ pageContext.request.contextPath}/specialshow">专题</a></li>
                        <li><a href="${ pageContext.request.contextPath}/topicshow">话题</a></li>
                        
                    <c:if test="${sessionScope.user == null}">
				       <li class="nav navbar-nav">
				 	     <a href="${ pageContext.request.contextPath }/userLogin">登录</a>
				       </li>
				        <li><a href="${ pageContext.request.contextPath }/Backstage.jsp">管理员 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|</a></li>
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
	
	
</div>
	