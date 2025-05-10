<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recipe Type Details</title>
<meta name="keywords" content="Recipe Type Details" />
<meta name="description" content="Recipe Type Details" />
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap"
	rel="stylesheet">

<script type="text/javascript"
	src="//static.meishichina.com/v6/js/lib/dfp-list-5.js"></script>
<style>
.ui-page .now_page, .ui-page .now_page:hover, .ui-page .on, .ui-page .on:hover
	{
	border: 0px;
}

.wrap {
	margin-top: 20px;
}

.space_right {
	margin-top: 80px;
	margin-left: 50px;
}

.space_left {
	margin-top: 50px;
}

.ingredient-label {
	font-weight: bold;
	color: #666;
	margin-right: 8px;
}

.ingredient-content {
	color: #333;
}

a.right3 {
	color: #654e2d;
	text-decoration: none;
}

.name-class {
	font-size: 16px;
	line-height: 1.2 !important;
	margin: 3px 0 !important;
	font-family: "Oleo Script", system-ui;
}

.cname_class {
	font-family: "Libre Baskerville", serif;
	font-size: 1.1em;
	display: block;
	margin-top: 8px;
	font-weight: 500;
}

a:hover .cname_class {
	color: #FF6767 !important;
	transition: color 0.3s ease;
}

.ui_title2 {
	border-top: 1px solid #eeeeee;
}

.subcontent1 {
	margin-left: 80px;
	font-size: 22px;
	background-color: transparent !important;
	mix-blend-mode: multiply !important;
	border: none !important;
	padding: 0 !important;
	font-family: "Alegreya", serif;
}

.pic {
	width: 240px;
	margin: 0 auto;
	overflow: hidden;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

.imgLoad {
	transition: transform 0.3s ease;
}

.imgLoad:hover {
	transform: scale(1.05);
}
</style>

</head>
<body>


	<%@ include file="MainMenu.jsp"%>


	<div class="wrap">
		<div class="w clear">
			<div class="recipe_index_n10 mt20 clear jtl"
				style="display: flex !important; justify-content: center !important; flex-wrap: wrap !important; gap: 10px; overflow: visible !important; margin-right: 10px;">

				<c:forEach items="${sessionScope.cList}" var="c">
					<a
						href="${ pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1"
						target="_blank" title="category"
						style="float: none !important;   <!-- Force clearing of floats -->
                 display: block !important; <!-- Overwrite the original layout -->
                 margin: 10px;">
						<img class="imgLoad"
						src="${pageContext.request.contextPath}/<c:out value="${c.cimage}"/>"
						style="display: block; width: 75px; height: 75px; margin: 0 auto;">

						<span class="cname_class"
						style="font-size: 1.1em;   <!-- Relative unit zoom -->
              display: block;       <!-- Occupies one line -->
              margin-top: 8px;      <!-- Text and image spacing -->
              font-weight: 500; color: #5A0000; !important; ${c.cid == cid ? 'color: #FF6767; font-weight: 700;' : ''}">
							<c:out value="${c.cname}"></c:out>
					</span>
					</a>
				</c:forEach>

			</div>

			<div class="space_left">

				<div class="ui_newlist_1 get_num" id="J_list">
					<ul>
						<c:forEach var="p" items="${dishesList}">
							<li data-id="400952">
								<div class="pic">
									<a target="_blank"
										href="${ pageContext.request.contextPath }/getDishById/<c:out value="${p.id}"/>">
										<img
										src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"
										data-src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"
										class="imgLoad"
										style="width: 100%; height: 180px; object-fit: cover; object-position: center; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);">
									</a>
								</div>

								<div class="detail">
									<h2 class="name-class">
										<a target="_blank"
											href="https://home.meishichina.com/recipe-400952.html"
											class="right3" style="font-weight: bold;"> <c:out
												value="${p.name}" />
										</a>

									</h2>
									<p class="subline">
										<a target="_blank"
											href="https://home.meishichina.com/space-10899818.html"><c:out
												value="${p.pdesc}" /></a>
									</p>
									<p class="subcontent">
										<span class="ingredient-label">Ingredients:</span> <span
											class="ingredient-content"><c:out value="${p.content}" /></span>
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


							<c:if test="${page != 1}">
								<a
									href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page-1}"/>">Prev</a>
							</c:if>
							<c:forEach var="i" begin="1" end="${count }">


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
									href="${pageContext.request.contextPath}/findByCid/${cid}/<c:out value="${page+1}"/>">Next</a>
							</c:if>
						</c:if>



						<c:if test="${csname != null}">
							
								
									
									<c:if test="${page != 1}">
										<a
											href="${pageContext.request.contextPath}/findByCsname/${csname}/<c:out value="${page-1}"/>">Prev</a>
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
											href="${pageContext.request.contextPath}/findByCsname/${csname}/<c:out value="${page+1}"/>">Next</a>
									</c:if>
							
						
						</c:if>


						<c:if test="${csid != null }">


							<c:if test="${page != 1}">
								<a
									href="${pageContext.request.contextPath}/findByCsid/${csid}/<c:out value="${page-1}"/>">Prev</a>
							</c:if>
							<c:forEach var="i" begin="1" end="${count }">

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
									href="${pageContext.request.contextPath}/findByCsid/${csid}/<c:out value="${page+1}"/>">Next</a>
							</c:if>
						</c:if>
					</div>
				</div>
			</div>



			<div class="space_right">

				<c:forEach var="group" items="${categorySecondGroups}">
					<p class="subcontent1">
						<a title="${group.csname}"
							href="${pageContext.request.contextPath}/findByCsname/<c:out value='${group.csname}'/>/1"
							class="right3" target="_blank"> <img
							src="${pageContext.request.contextPath}/Dishes%20images/${group.csname}.png"
							style="background: none !important; display: inline-block; vertical-align: middle; width: 60px; height: 60px;"
							onerror="this.style.display='none'" /> <span
							style="font-size: 22px; vertical-align: middle; ${group.csname == csname ? 'color: #FF6767; font-weight: bold;' : ''}">
								<c:out value="${group.csname}" />
						</span>
						</a>
					</p>
				</c:forEach>
			</div>


		</div>
	</div>



	<%@ include file="MainFooter.jsp"%>



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

