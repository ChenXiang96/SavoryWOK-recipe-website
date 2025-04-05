<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>热菜菜谱大全_做法大全_带有图文步骤_菜谱_厨色</title>
<meta name="keywords" content="热菜菜谱大全,热菜做法大全,热菜怎么做好吃,家常热菜菜谱做法大全" />
<meta name="description"
	content="热菜的家常做法图片大全,热菜怎么做好吃,家常热菜的最简单制作方法等菜谱相关信息,让初学者也能烹饪出好味道。" />
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/recipe/category/recai/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.meishichina.com/recipe/category/recai/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico" />
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/app/newrecipe/recipe2.css?v1=2017-09-08">
<script type="text/javascript"
	src="//static.meishichina.com/v6/js/lib/dfp-list-5.js"></script>
<style>
.ui-page .now_page, .ui-page .now_page:hover, .ui-page .on, .ui-page .on:hover
	{
	border: 0px;
}

.space_right {
	margin-top: 80px;
	margin-left:50px;
}

a.right3 {
	color: #654e2d;
	text-decoration: none;
}

.ui_title2 {
	border-top: 1px solid #eeeeee;
}

.subcontent1 {
	margin-left: 80px;
	font-size: 20px;
	background-color: transparent !important; /* 强制透明背景 */
	mix-blend-mode: multiply !important; /* 混合模式适配 */
	border: none !important; /* 移除边框 */
	padding: 0 !important;
}

.pic {
    width: 240px;      /* 控制容器宽度 */
    margin: 0 auto;    /* 居中 */
    overflow: hidden;  /* 隐藏溢出部分 */
    border-radius: 8px;/* 可选圆角 */
   
}

.imgLoad {
    transition: transform 0.3s ease; /* 悬停动画 */
}

.imgLoad:hover {
    transform: scale(1.05); /* 悬停放大效果 */
}

</style>

</head>
<body>


	<%@ include file="menu3.jsp"%>

	<!-- 主框架 -->
	<div class="wrap">
		<div class="w clear">
			<div class="recipe_index_n10 mt20 clear jtl"
				style="display: flex !important; justify-content: center !important; flex-wrap: wrap !important; gap: 5px; overflow: visible !important;">

				<c:forEach items="${sessionScope.cList}" var="c">
					<a
						href="${ pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1"
						target="_blank" title="category"
						style="float: none !important;   <!-- 强制清除浮动 -->
                 display: block !important; <!-- 覆盖原有布局 -->
                 margin: 10px;">
						<img class="imgLoad"
						src="${pageContext.request.contextPath}/<c:out value="${c.cimage}"/>"
						style="display: block; width: 75px; height: 75px; margin: 0 auto;">

						<span
						style="font-size: 1.1em;   <!-- 相对单位放大 -->
              display: block;       <!-- 独占一行 -->
              margin-top: 8px;      <!-- 文字与图片间距 -->
              font-weight: 500; ${c.cid == cid ? 'color: #FF6767; font-weight: 700;' : ''}">
							<!-- 适当加粗 --> <c:out value="${c.cname}"></c:out>
					</span>
					</a>
				</c:forEach>

			</div>

			<div class="space_left">

				<div class="ui_newlist_1 get_num" id="J_list">
					<ul>
						<c:forEach var="p" items="${dishesList}">
							<li data-id="400952" >
								<div class="pic">
									<a target="_blank"
										href="${ pageContext.request.contextPath }/findByPid/<c:out value="${p.pid}"/>">
										<img 
										src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"
										data-src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"
										class="imgLoad" style="width: 100%; height: 180px; object-fit: cover; object-position: center">
									</a>
								</div>

								<div class="detail">
									<h2>
										<a target="_blank"
											href="https://home.meishichina.com/recipe-400952.html"
											class="right3"> <c:out value="${p.pname}" /></a>
									</h2>
									<p class="subline">
										<a target="_blank"
											href="https://home.meishichina.com/space-10899818.html"><c:out
												value="${p.pdesc}" /></a>
									</p>
									<p class="subcontent">
										<c:out value="${p.pcontent}" />
									</p>
									<div class="substatus clear">
										<span class="get_nums"></span>
									</div>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<script type="text/javascript"
					src="//crayon.meishichina.com/idvmszelzgkcef.js"></script>

				<div class="ui-page mt10">
					<div class="ui-page-inner">
						<c:if test="${cid != null }">
							<!-- 首页 -->
							<a class='now_page'
								href="${pageContext.request.contextPath}/findByCid/${cid}/1"></a>
							<c:if test="${page != 1}">
								<a
									href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page-1}"/>">上一页</a>
							</c:if>
							<c:forEach var="i" begin="1" end="${count }">

								<!-- 如果是当前页则不能够点击 -->
								<c:if test="${i == page }">
									<span class="now_page">${page }</span>
								</c:if>
								<c:if test="${i != page }">
									<a
										href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${i}"/>">
										<c:out value="${i}" />
									</a>
								</c:if>
							</c:forEach>

							<c:if test="${page !=count }">
								<a class="nextPage"
									href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page+1}"/>">下一页</a>
							</c:if>
						</c:if>
						<!-- 新增：处理csname类型的分页 -->
						<c:if test="${csname != null}">
							<div class="ui-page mt10">
								<div class="ui-page-inner">
									<a class='now_page'
										href="${pageContext.request.contextPath}/findByCsname/${csname}/1"></a>
									<c:if test="${page != 1}">
										<a
											href="${pageContext.request.contextPath}/findByCsname/${csname}/<c:out value="${page-1}"/>">上一页</a>
									</c:if>
									<c:forEach var="i" begin="1" end="${count}">
										<c:choose>
											<c:when test="${i == page}">
												<span class="now_page">${page}</span>
											</c:when>
											<c:otherwise>
												<a
													href="${pageContext.request.contextPath}/findByCsname/${csname}/<c:out value="${i}"/>">${i}</a>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<c:if test="${page != count}">
										<a class="nextPage"
											href="${pageContext.request.contextPath}/findByCsname/${csname}/<c:out value="${page+1}"/>">下一页</a>
									</c:if>
								</div>
							</div>
						</c:if>






						<c:if test="${csid != null }">
							<!-- 首页 -->
							<a class='now_page'
								href="${pageContext.request.contextPath}/findByCsid/${csid}/1"></a>
							<c:if test="${page != 1}">
								<a
									href="${pageContext.request.contextPath}/findByCsid/${csid}/<c:out value="${page-1}"/>">上一页</a>
							</c:if>
							<c:forEach var="i" begin="1" end="${count }">

								<!-- 如果是当前页则不能够点击 -->
								<c:if test="${i == page }">
									<span class="now_page">${page }</span>
								</c:if>
								<c:if test="${i != page }">
									<a
										href="${pageContext.request.contextPath}/findByCsid/${csid}/<c:out value="${i}"/>">
										<c:out value="${i}" />
									</a>
								</c:if>
							</c:forEach>

							<c:if test="${page !=count }">
								<a class="nextPage"
									href="${pageContext.request.contextPath}/findByCsid/${csid}/<c:out value="${page+1}"/>">下一页</a>
							</c:if>
						</c:if>
					</div>
				</div>
			</div>
			<!--左侧end-->

            
			<div class="space_right">
				<!-- 使用新视图查询数据 -->
				<c:forEach var="group" items="${categorySecondGroups}">
					<p class="subcontent1">
						<a title="${group.csname}" href="${pageContext.request.contextPath}/findByCsname/<c:out value='${group.csname}'/>/1" class="right3" target="_blank">
							<!-- 添加内联样式保障 --> 
							<img
							src="${pageContext.request.contextPath}/Dishes%20images/${group.csname}.png"
							style="background: none !important; display: inline-block; vertical-align: middle; width: 60px; height: 60px;"
							onerror="this.style.display='none'" /> 
							<span style="font-size: 22px; vertical-align: middle; ${group.csname == csname ? 'color: #FF6767; font-weight: bold;' : ''}">
							  <c:out value="${group.csname}" />
						    </span>
						</a>
					</p>
				</c:forEach>
			</div>


		</div>
	</div>



	<%@ include file="footer3.jsp"%>


	<!-- 引用全站js -->
	<script type="text/javascript"
		src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
	<script type="text/javascript"
		src="//static.meishichina.com/v6/js/lib/get_num.js"></script>
	<script type="text/javascript"
		src="//static.meishichina.com/v6/js/app/newrecipe/recipe_navlist.js?v1=2"></script>
	<script type="text/javascript">
		msc.goTop.init();
		msc.user.init();
		$("img.imgLoad").imgLoad();
		//搜索
		$("#search")
				.click(
						function() {
							var q = $("#q").val().replace(/\s+/g, "").replace(
									"　", "");
							window.location.href = 'https://home.meishichina.com/search/'
									+ (q == "" ? '' : q + '/')
						});
		$("#q").keydown(function(e) {
			if (e.keyCode == 13)
				$("#search").click()
		});
	</script>




	<script type="text/javascript">
		$(".get_num li").get_num('recipe');
		$(window).scroll(function() {
			var omng = $(".keyshow").eq(0).offset();
			var jtl = $(".smnbk").eq(0).offset();
			if (omng.top < $(document).scrollTop() + 40) {
				$(".keyshow").css({
					position : "fixed",
					top : 40,
					margin : 0,
					left : omng.left
				});
			} else if (omng.top < jtl.top + 270) {
				$(".keyshow").css({
					position : "static",
					margin : "20px 0 0 0"
				});
			}
		});
	</script>
	<script>
		$("li.top_bar_more").hoverDelay(function() {
			$("li.top_bar_more div").show()
		}, function() {
			$("li.top_bar_more div").hide()
		}, 200, 200);
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		(function() {
			var bp = document.createElement("script");
			var curProtocol = window.location.protocol.split(":")[0];
			if (curProtocol === "https") {
				bp.src = "https://zz.bdstatic.com/linksubmit/push.js"
			} else {
				bp.src = "http://push.zhanzhang.baidu.com/push.js"
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s)
		})();
	</script>
</body>
</html>

