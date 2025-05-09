<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Recipe-Details</title>

<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/recipe/402563/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.meishichina.com/recipe/402563/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico" />
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/lib/all3.css?v1=2017-10-24">
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/app/newrecipe/recipe_one.css?v1=2018-06-10">
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/lib/comment.css?v1=2015-07-16">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="//static.meishichina.com/v6/js/lib/dfp-content-5.js"></script>
<style>

.recipeCategory_sub_R li {
	vertical-align: top;
	padding: 5px 10px;
}

.recipe_De_title {
	font-family: "Fjalla One", sans-serif;
}

.wrap {
	margin-top: 30px;
}

.w .clear {
	display: flext !important;
	justify-content: space-between;
	gap: 50px;
}

.space_left {
	flex: 1; 
	max-width: calc(100% - 320px - 50px);
}

.space_right {
	width: 0 0 380px;
	margin-left: 0 !important;
}

.cname_class {
	font-family: "Libre Baskerville", serif;
	font-size: 0.9em;
	color: #5A0000;
}

a.right3 {
	color: #654e2d;
	text-decoration: none;
}

a:hover .cname_class {
	color: #FF6767 !important;
	transition: color 0.3s ease;
}

.subcontent1 {
	font-size: 22px;
	background-color: transparent !important;
	mix-blend-mode: multiply !important; 
	border: none !important; 
	padding: 0 !important;
	font-family: "Alegreya", serif;
	text-align: left;
	margin-left: 90px;
	margin-top: 30px;
}

.recipeStep ul li {
	margin-bottom: 80px !important;
	transition: all 0.3s;
}
</style>

</head>
<body>

	<%@ include file="MainMenu.jsp"%>

	<div class="wrap">

		<div class="w clear">
			<div class="space_left">

				<div class="userTop clear">
					<h1 class="recipe_De_title">
						<a href="https://home.meishichina.com/recipe-402563.html"
							id="recipe_title" title="recipe_title"
							style="color: #D2691E !important;"> <c:out
								value="${Dishes.name }" />
						</a>
					</h1>
				</div>

				<div class="space_box_home">

					<div class="recipDetail">

						<input type="hidden" id="recipe_id" value="402563"> <input
							type="hidden" id="recipe_uid" value="10373406"> <input
							type="hidden" id="recipe_title" value="recipe detail">
						<div class="recipe_De_imgBox" id="recipe_De_imgBox">
							<a class="J_photo" title="recipe detail"><span></span> <img
								src="${ pageContext.request.contextPath }/<c:out value="${Dishes.image}"/>" alt="recipe detail"> </a>
							<p class="J_photo">
								<span class="De_bg">&nbsp;</span> <span class="De_photo">3 images</span>
							</p>
						</div>

						<div class="mo mt20">
							<h3 style="font-weight: bold !important;">Ingredients list</h3>
						</div>



						<div class="recipeCategory_sub_R mt30 clear"
							style="width: 600px; margin: 0 auto;">
							<ul
								style="padding: 0; margin: 0; display: flex; flex-wrap: wrap; justify-content: flex-start; width: 100%; list-style: none;">
								
								<c:forEach items="${Dishes.ingredients}" var="ingredient"
									varStatus="status">
									<li style="width: 45%; margin: 10px; box-sizing: border-box;">
										<span class="category_s1"> ${ingredient.item} </span> <span
										class="category_s2"> ${ingredient.qty} </span>
									</li>
								</c:forEach>
							</ul>
						</div>

						<div class="mo mt20">
							<h3>
								<c:out value="${Dishes.name}" />
								<span style="font-weight: bold !important;">Step-by-Step
									Guide:</span>
							</h3>
						</div>

						<div class="recipeStep">
							<ul>
								<c:forEach items="${Dishes.steps}" var="step" varStatus="status">
									<li style="display: flex; align-items: center; gap: 20px;">
										<div class="recipeStep_img"
											style="flex: 0 0 240px; width: 240px; height: 240px; overflow: hidden; border-radius: 8px; box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);">
											<img src="${pageContext.request.contextPath}/${step.image}"
												alt="${Dishes.name}step${step.step}"
												style="width: 100%; height: 100%; object-fit: cover; object-position: center;">
										</div>
										<div class="recipeStep_word" style="flex: 1;">
											<div class="recipeStep_num"
												style="font-size: 24px; color: #8B4513; margin-bottom: 10px;">
												${step.step}</div>
											<p
												style="line-height: 1.6; text-align: justify; hyphens: auto; margin: 0;">
												${step.description}</p>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>


						<div class="timeline clear">
							<ul id="getRecommendNewRecipe">

							</ul>
						</div>

						<div id="comment_top">
							<script type="text/javascript"
								src="//crayon.meishichina.com/fasjbjbbj.js"></script>
						</div>


						<script>
							var aliyun_recommend_opts = {
								'url' : '',
								'title' : '',
								'thumb' : '',
								'tags' : ''
							};

							var TMD_self = false;

							var J_photo = [
									{
										"src" : "https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878228508073010373406.JPG?x-oss-process=style/p800",
										"description" : ""
									},
									{
										"src" : "https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878227425955410373406.JPG?x-oss-process=style/p800",
										"description" : ""
									},
									{
										"src" : "https://i8.meishichina.com/attachment/recipe/2018/06/12/20180612152878229499929210373406.JPG?x-oss-process=style/p800",
										"description" : ""
									} ];
						</script>


					</div>
					<!--recipDetail-->
				</div>
				<!--space_box_home-->
			</div>

			<div class="space_right" style="text-align: center;">

				<div id="getRecipeDetailPaiandHealth" ingredient="MianBaoFen">
				</div>

				<div class="ui_title mt20 clear">
					<div class="ui_title_wrap">
						<h3 class="on">More to Savor</h3>

					</div>
				</div>

				<div class="recipe_index_n10 mt20 clear jtl"
					style="display: grid !important; grid-template-columns: repeat(3, 1fr); gap: 5px !important; width: 100%; margin: 0 auto;">

					<c:forEach items="${sessionScope.cList}" var="c">
						<a
							href="${ pageContext.request.contextPath }/findByCid/${c.cid}/1"
							target="_blank" title="category"
							style="display: block !important; text-align: center; padding: 8px;">
							<img class="imgLoad"
							src="${pageContext.request.contextPath}/${c.cimage}"
							style="display: block; width: 75px; height: 75px; margin: 0 auto;">
							<span class="cname_class"> <c:out value="${c.cname}" />
						</span>
						</a>
					</c:forEach>
				</div>

				<div
					style="display: grid; grid-template-columns: repeat(2, 1fr); max-width: 1580px; margin: 0 auto; padding: 15px; margin-top: 10px;">
					<c:forEach var="group" items="${categorySecondGroups}">
						<p class="subcontent1"
							style="break-inside: avoid; background: #f8f8f8; border-radius: 8px; padding: 12px; margin: 0;">
							<a title="${group.csname}"
								href="${pageContext.request.contextPath}/findByCsname/<c:out value='${group.csname}'/>/1"
								class="right3" target="_blank"
								style="display: flex; align-items: center; gap: 6px; text-decoration: none;">
								<img
								src="${pageContext.request.contextPath}/Dishes%20images/${group.csname}.png"
								style="width: 60px; height: 60px; object-fit: cover; border-radius: 6px;">
								<span
								style="font-size: 20px; 
                            ${group.csname == csname ? 'color: #FF6767;' : 'color: #654e2d;'}
                            font-family: 'Alegreya', serif;">
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
			src="//static.meishichina.com/v6/js/lib/all3.js?v1=2018-04-27"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/get_num.js"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/app/newrecipe/recipe_navlist.js?v1=2"></script>
		<script type="text/javascript">
			msc.goTop.init();
			msc.user.init();
			$("img.imgLoad").imgLoad();
	
			$("#search")
					.click(
							function() {
								var q = $("#q").val().replace(/\s+/g, "")
										.replace("　", "");
								window.location.href = 'https://home.meishichina.com/search/'
										+ (q == "" ? '' : q + '/')
							});
			$("#q").keydown(function(e) {
				if (e.keyCode == 13)
					$("#search").click()
			});
		</script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/msc-tools-date.js"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/msc-ui-lookImg.js?v1=2018-05-30"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/msc-ui-smilies.js"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/msc-tools-comment.js?v1=20180425"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/msc-ui-select.js"></script>
		<script type="text/javascript" id="bdshare_js"
			data="type=tools&amp;uid=11097"></script>
		<script type="text/javascript" id="bdshell_js"></script>
		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/app/newrecipe/recipe_action_one.js?v1=2018-06-084"></script>
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

