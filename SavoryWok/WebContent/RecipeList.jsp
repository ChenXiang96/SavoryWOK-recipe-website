<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Recipe List</title>
<meta name="keywords" content="Recipe List">
<meta name="description"
	content="Recipe List">
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/recipe/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="${ctx }/https://m.meishichina.com/recipe/">
<link rel="shortcut icon"
	href="${ctx }/https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon" href="${ctx }/images/cookbook/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx }/css/recipe2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Special+Gothic+Expanded+One&display=swap" rel="stylesheet">
</head>
<body>

	<%@ include file="MainMenu.jsp"%>


	<div class="wrap">
		<div class="w clear">



			<div class="recipe_index_n10 mt20 clear jtl"
				style="display: flex !important; justify-content: center !important; flex-wrap: wrap !important; gap: 12px; overflow: visible !important;">

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

						<span class="cname_class" style="color: #5A0000; !important">
							<c:out value="${c.cname}"></c:out>
					</span>
					</a>
				</c:forEach>

			</div>



			<div class="big4_list clear mt10" id="recipeindex_living">
				<ul class="on">
					<c:forEach items="${dishesList}" var="p">
						<li
							style="min-height: 100px !important; padding: 2px 0 !important">
							<a title="cuisine item"
							href="${ pageContext.request.contextPath }/getDishById/<c:out value="${p.id}"/>">
								<i
								style="position: relative; padding-top: 10% !important; display: block; margin-bottom: 8px">
									<img alt="cuisine item" class="imgLoad" src="${ctx}/${p.image}"
									style="height: 100%; width: 100%; object-fit: cover; border-radius: 10px;">
							</i>
								<p name="pname" class="pname-class" style="color: #A0522D; !important">
									${p.name }</p> <input name="id" id="id"
								value="${product.id}" type="hidden">
						</a>
						</li>
					</c:forEach>
				</ul>
			</div>


			
			<div class="ui-page mt10">
				<div class="ui-page-inner">
					<c:if test="${totalPages > 0}">
						
						<c:if test="${currentPage > 1}">
							<a href="${ctx}/health/list/${currentPage - 1}">Prev</a>
						</c:if>

						
						<c:forEach begin="1" end="${totalPages}" var="i">
							<c:choose>
								<c:when test="${i == currentPage}">
									<span class="now_page">${i}</span>
								</c:when>
								<c:otherwise>
									<a href="${ctx}/health/list/${i}">${i}</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>

						
						<c:if test="${currentPage < totalPages}">
							<a class="nextPage" href="${ctx}/health/list/${currentPage + 1}">Next</a>
						</c:if>
					</c:if>
				</div>
			</div>


		</div>
	</div>

	<%@ include file="MainFooter.jsp"%>
	<style type="text/css">
	
	
.cname_class{
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

a:hover .pname-class {
    color: #FF6767 !important;
    transition: color 0.3s ease;
}

.pname-class{

font-size: 16px; 
line-height: 1.2 !important; 
margin: 3px 0 !important; 
font-family: "Oleo Script", system-ui;
}


.footer-area {
	padding: 10px 0
}

.footer-area .w {
	padding-top: 10px;
	border-top: 1px solid #e8e8e8
}

.footer-area a {
	color: #666
}

.footer-area a:hover {
	color: #ff6767
}

.ft1 {
	clear: none;
	float: left;
	font-size: 11px;
	color: #666;
	width: 680px;
	padding-top: 10px
}

.ft1 .c3b {
	color: #c90;
	font-size: 14px;
	font-weight: 700;
	margin-bottom: 6px
}

.ft1 .c3b a {
	color: #f50
}

.ft1 .c3c {
	color: #aaa;
	font-size: 12px;
	margin-bottom: 6px
}

.ft2, .ft3, .ft4 {
	clear: none;
	float: right;
	text-align: center
}

.ft3 {
	margin: 0 25px
}
</style>





	
	<script src="${ctx}/js/push.js"></script>
	<script src="${ctx}/js/hm.js"></script>

	<script type="text/javascript" src="${ctx}/js/get_num.js"></script>
	<script type="text/javascript" src="${ctx}/js/recipe_navlist.js"></script>
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

	<script src="${ctx}/images/cookbook/slider2.js" type="text/javascript"></script>
	<script type="text/javascript">
			var sudoSlider = $("#home_index_slider")
					.sudoSlider(
							{
								speed : 600,
								slideCount : 3,
								movecount : 3,
								prevHtml : '<a class="prevBtn" href="${ctx }/javascript:void(0);"><i>&nbsp;</i></a>',
								nextHtml : '<a class="nextBtn" href="${ctx }/javascript:void(0);"><i>&nbsp;</i></a>',
								continuous : true
							});

			$(window).scroll(function() {
				var omng = $('#recipeindex_info_wrap').offset();
				var jtl = $('.recipe_index_n10').offset();

				if (omng.top < $(document).scrollTop() + 40) {
					$('#recipeindex_info_wrap').css({
						position : 'fixed',
						top : 40,
						'z-index' : 1111,
						left : omng.left
					})
				} else if (omng.top < jtl.top + 75) {
					$("#recipeindex_info_wrap").css({
						position : 'static'
					})
				}

			});

			$("#recipeindex_info_wrap a").click(
					function() {
						if ($(this).parent().hasClass('on'))
							return false;
						else {
							$("#recipeindex_info_wrap h3").removeClass('on');
							$(this).parent().addClass('on');
							$("#recipeindex_living ul").removeClass('on')
									.hide();
							$(
									"#recipeindex_living ul:eq("
											+ $(this).parent().index() + ")")
									.fadeIn().addClass("on");
						}
					});

			$("#recipeindex_living_loading a")
					.click(
							function() {
								if ($(this).hasClass('on')
										|| $(this).hasClass('on2'))
									return false;
								else {
									$(this).addClass("on");

									var classid = $(
											"#recipeindex_info_wrap h3.on a")
											.attr("data"), orderby = $(
											"#recipeindex_info_wrap h3.on a")
											.attr("order"), page = $(
											"#recipeindex_info_wrap h3.on a")
											.attr("page");

									$
											.get(
													'/ajax/ajax.php?ac=recipe&op=getMoreDiffStateRecipeList',
													{
														classid : classid,
														orderby : orderby,
														page : page
													},
													function(d) {
														var i, html = '';
														if (d.error == 0) {
															for (i = 0; i < d.data.length; i++)
																html += '<li class=""><a title="'+d.data[i]["title"]+'" href="${ctx }/https://home.meishichina.com/recipe-'+d.data[i]["id"]+'.html" target="_blank">'
																		+ (d.data[i]["copyright"] == 5 ? '<span class="copyright">Special</span>'
																				: '')
																		+ '<i><img alt="'+d.data[i]["title"]+'" class="imgLoad" src="${ctx}/'+d.data[i]["mscover"]+'"></i><p>'
																		+ d.data[i]["title"]
																		+ '</p></a><a title="'+d.data[i]["username"]+'" href="${ctx }/https://home.meishichina.com/space-'+d.data[i]["uid"]+'.html" target="_blank" class="u">'
																		+ d.data[i]["username"]
																		+ '</a></li>';

															$(
																	"#recipeindex_living ul.on")
																	.append(
																			html);
															//$("#recipeindex_living ul li.feed").fadeIn();
															//$("#recipeindex_living ul li.feed img.imgLoad").imgLoad();
															$(
																	"#recipeindex_info_wrap h3.on a")
																	.attr(
																			"page",
																			parseInt(page) + 1);
															$(
																	"#recipeindex_living_loading a")
																	.removeClass(
																			"on");
														} else if (d.error == -2) {
															$(
																	"#recipeindex_living_loading a")
																	.html(
																			"No more content~")
																	.removeClass(
																			"on")
																	.addClass(
																			"on2");
														} else {
															msc.ui.dialog
																	.error("Please Try again");
															$(
																	"#recipeindex_living_loading a")
																	.removeClass(
																			"on");
														}
													}, "json");

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
				hm.src = "${ctx}///hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(hm, s)
			})();
			(function() {
				var bp = document.createElement("script");
				var curProtocol = window.location.protocol.split(":")[0];
				if (curProtocol === "https") {
					bp.src = "${ctx}/https://zz.bdstatic.com/linksubmit/push.js"
				} else {
					bp.src = "${ctx}/http://push.zhanzhang.baidu.com/push.js"
				}
				var s = document.getElementsByTagName("script")[0];
				s.parentNode.insertBefore(bp, s)
			})();
		</script>
</body>
</html>