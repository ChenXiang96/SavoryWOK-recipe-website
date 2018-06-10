<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>热菜菜谱大全_做法大全_带有图文步骤_菜谱_厨色</title>    
<meta name="keywords" content="热菜菜谱大全,热菜做法大全,热菜怎么做好吃,家常热菜菜谱做法大全" />
<meta name="description" content="热菜的家常做法图片大全,热菜怎么做好吃,家常热菜的最简单制作方法等菜谱相关信息,让初学者也能烹饪出好味道。" />
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.meishichina.com/recipe/category/recai/">
<link rel="alternate" media="only screen and (max-width: 640px)"  href="https://m.meishichina.com/recipe/category/recai/">
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico"/>
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/newrecipe/recipe2.css?v1=2017-09-08">
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/dfp-list-5.js"></script>
</head>
<body>


  <%@ include file="menu3.jsp" %>
	
<!-- 主框架 -->
	<div class="wrap">
		<div class="w clear">
		
  <div id="recipeindex_info">
	 
  </div>
			
			<div class="space_left">

<div class="ui_title">
			  <div class="ui_title_wrap clear">

<!--  <h1 class="on" ><a title="热菜" href="https://home.meishichina.com/recipe/recai/" >热菜</a></h1> -->
 <h3  class="on"><a href="javascript:void(0);" page="2" data="102" order="tag">热菜</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="202" order="tag">凉菜</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="57" order="tag">汤羹</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="59" order="tag">主食</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="62" order="tag">小吃</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="160" order="tag">西餐</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="60" order="tag">烘焙</a></h3>
				  <h3><a href="javascript:void(0);" page="2" data="69" order="tag">自制食材</a></h3>

<a  rel="nofollow" href="https://home.meishichina.com/recipe/recai/elite/" class="right ">推荐</a>
<a  rel="nofollow" href="https://home.meishichina.com/recipe/recai/hot/" class="right ">最热</a>


</div>
</div>


<div class="ui_newlist_1 get_num" id="J_list">
	<ul>
	<c:forEach var="p" items="${products}">
 <li data-id="400952">
					<div class="pic">
						<a target="_blank" href="${ pageContext.request.contextPath }/findByPid/<c:out value="${p.pid}"/>">
						<img width="180" height="180" src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>" data-src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"  class="imgLoad">
						</a>
					</div>
					<div class="detail">
					<h2>
						<a target="_blank" href="https://home.meishichina.com/recipe-400952.html"> <c:out value="${p.pname}" /></a>
						
					</h2>
					<p class="subline"><a target="_blank" href="https://home.meishichina.com/space-10899818.html">匠心传承</a>  </p>

						<p class="subcontent"><c:out value="${p.pcontent}" /></p>
						
						<div class="substatus clear">
						<span class="get_nums"></span>
							</div>
						</div>
</li>
</c:forEach>
		


		

			</ul>
</div>

<script type="text/javascript" src="//crayon.meishichina.com/idvmszelzgkcef.js"></script>

<div class="ui-page mt10">
 <div class="ui-page-inner">
  <c:if test="${cid != null }">
  <!-- 首页 -->
  <a class='now_page' href="${pageContext.request.contextPath}/findByCid/${cid}/1"></a>
  <c:if test="${page != 1}">
    <a href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page-1}"/>"></a>
  </c:if>
  <c:forEach var="i" begin="1" end="${count }">
    <span>
							   <!-- 如果是当前页则不能够点击 -->
							   <c:if test="${i == page }">
							    	<span class="currentPage">${page }</span>
							   </c:if>
							   <c:if test="${i != page }">
								 <a href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${i}"/>">
									<c:out value="${i}" /></a>
								</c:if>
	</span>
     
  </c:forEach>
 <!--  <a href="https://home.meishichina.com/recipe/recai/page/2/">2</a>
  <a href="https://home.meishichina.com/recipe/recai/page/3/">3</a>
  <a href="https://home.meishichina.com/recipe/recai/page/4/">4</a>
  <a href="https://home.meishichina.com/recipe/recai/page/5/">5</a>
   <span>...</span>
 -->
 <c:if test="${page !=count }">
  <a class="nextPage" href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page+1}"/>">下一页</a>
 </c:if>
 </c:if>
 </div>
</div>

<div class="mt20 clear">
	<!-- 厨色内容页左幅300x250 -->
	<div id='div-gpt-ad-1415071902366-0' style='width:300px; height:250px;float:left;'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1415071902366-0'); });
</script>
</div>
<!-- 厨色内容页右幅300x250 -->
<div id='div-gpt-ad-1415071902366-1' style='width:300px; height:250px;float:right'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1415071902366-1'); });
</script>
</div>
</div>



</div><!--左侧end-->


<div class="space_right">

<!-- 厨色菜谱频道右侧一(首屏)300x250 -->
<div id='div-gpt-ad-1415071902366-2' style='width:300px; height:250px;'>
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1415071902366-2'); });
</script>
</div>
<!--
<div class="ui_title mt20">
	<div class="ui_title_wrap cleat">
		<h3 class="on">热门菜单</h3>
	</div>
</div>
-->

<div class="new_r_list clear mt10">
	<ul>
			

	</ul>
</div>

<!-- 厨色菜谱频道右侧二300x250 -->
<div id='div-gpt-ad-1415071902366-3' style='width:300px; height:250px;margin-top:20px;' class="smnbk">
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1415071902366-3'); });
</script>
</div>


<!-- 厨色菜谱频道右侧(悬浮)300x250 -->
<div id='div-gpt-ad-1415071902366-4' style='width:300px; height:250px;margin-top:20px;' class="keyshow">
<script type='text/javascript'>
googletag.cmd.push(function() { googletag.display('div-gpt-ad-1415071902366-4'); });
</script>
</div>

</div><!-- 右侧end -->
				
		</div>
	</div>

	

  <%@ include file="footer2.jsp" %>


<!-- 引用全站js -->
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/get_num.js"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/app/newrecipe/recipe_navlist.js?v1=2"></script>
<script type="text/javascript">	
msc.goTop.init();
msc.user.init();
$("img.imgLoad").imgLoad();
//搜索
$("#search").click(function(){var q=$("#q").val().replace(/\s+/g,"").replace("　","");window.location.href='https://home.meishichina.com/search/'+(q==""?'':q+'/')});$("#q").keydown(function(e){if(e.keyCode==13)$("#search").click()});
</script>




<script type="text/javascript">

$(".get_num li").get_num('recipe');
$(window).scroll(function() {
		var omng = $(".keyshow").eq(0).offset();
		var jtl = $(".smnbk").eq(0).offset();
		if (omng.top < $(document).scrollTop() + 40) {
			$(".keyshow").css({
				position: "fixed",
				top: 40,
				margin: 0,
				left: omng.left
			});
		} else if (omng.top < jtl.top + 270) {
			$(".keyshow").css({
				position: "static",
				margin: "20px 0 0 0"
			});
		}
	});


</script>
<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> </body>
</html>

