<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Moments</title>
<meta name="keywords" content="Moments">
<meta name="description" content="Moments">
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/pai/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/all.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pai2.css">
</head>
<body>



	<%@ include file="MainMenu.jsp"%>
	<div class="wrap">
		<div class="w clear">
			<div class="space_left">

				<div class="ui_title">
					<div class="ui_title_wrap clear ">
						<h2 class="on">Foodie Moments</h2>


						<a class="right " href="#" rel="nofollow">Popular</a> <a
							class="right " href="#">Latest</a> <a class="right on" href="#">All</a>
					</div>
				</div>



				<div class="pin_list clear" id="J_list">

					<ul>
						<c:forEach items="${sessionScope.tlist}" begin="0" var="c">

							<li>
								<div class="u">
									<a href="" target="_blank" title="${c.uid }"><img
										class="imgLoad"
										src="%E8%AF%9D%E9%A2%98_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/blank.gif"
										data-src="${pageContext.request.contextPath}${c.uimg}"
										width="40" height="40"></a>
									<div>
										<a
											href="${ pageContext.request.contextPath }/commentshow?uid=${c.uid}&tid=${c.tid}"
											class="t" target="_blank" title="${c.uname }">${c.uname}</a>
										<span>${c.time}</span>
									</div>
								</div>

								<div class="c clear">
									<div class="moment-content">
										<a
											href="${ pageContext.request.contextPath }/commentshow?uid=${c.uid}&tid=${c.tid}"
											target="_blank"><strong>${c.ttitle }</strong><br>${c.tcontent }</a>
									</div>


									<div class="img-container">
										<a class="clear"
											href="${ pageContext.request.contextPath }/commentshow?uid=${c.uid}&tid=${c.tid}"
											target="_blank"> <c:set var="string1" value="${c.timg }" />
											<c:set value="${ fn:split(string1, '@') }" var="str1" /> <c:forEach
												items="${ str1 }" var="s">
												<img class="imgLoad"
													src="%E8%AF%9D%E9%A2%98_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/blank.gif"
													data-src="${ pageContext.request.contextPath }/images/${s}">
											</c:forEach>
										</a>
									</div>


									<div data-id="900188" class="f"></div>
									<div class="num">
										<span></span>
									</div>
								</div>

							</li>


						</c:forEach>
					</ul>

				</div>

				<div class="ui-page mt20">
					<div class="ui-page-inner">
						<a class="now_page">1</a> <a
							href="#">2</a> <a
							href="#">3</a> <a
							href="#">4</a> <a
							href="#">5</a> <span>...</span>
						<a href="#">Next</a>
					</div>
				</div>
			</div>

			<div class="space_right">
				<a class="r_pai-add" target="_blank"
					href="EditPost.jsp?uid=${user.uid}"
					style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">Share a Moment</a>
				<div class="mt20">
					<a title="Moments_banner" href="" target="_blank"> <img alt=""
						src="${pageContext.request.contextPath}/Banner-images/right-banner2.jpg"
						height=500
						style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">
					</a>
				</div>
			</div>



		</div>
	</div>
	<style type="text/css">
.wrap {
	margin-top: 40px;
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

.moment-content {
	text-align: left !important; 
	margin-left: -5px; 
	padding-left: 5px; 
}

.moment-content+a.clear { 
	display: block;
	margin-left: 5px !important;
	margin-top: 10px;
}


.u, .c.clear {
	margin-left: 10px !important;
	transform: scale(1.05);
	transform-origin: left top;
	margin-left: 15px !important;
}

.moment-content strong {
	font-size: 1.1em; 
}

.moment-content a {
	font-size: 1.2em;
}

.c.clear>a.clear {
	display: block;
	margin-left: 0 !important; 
}

.r_pai-add:hover {
	background-color: orange; 
	color: white; 
}

.img-container {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
	gap: 15px;
	margin: 10px 0;
	box-shadow: rgba(0, 0, 0, 0.8);
}

.img-container a {
	display: block;
	position: relative;
	width: 250px;
	height: 200px; 
	padding-top: 0; 
	overflow: hidden;
	border-radius: 8px;
	box-shadow: 0 4px 16px rgba(0, 0, 0, 0.6);
	z-index: 2;
}


.img-container img {
	position: absolute;
	top: 0;
	left: 0;
	transform: none;

	min-width: 100%;
	min-height: 100%;
	object-fit: cover;
	background: #f8f8f8; 
}

.img-container a:hover {
	box-shadow: 0 4px 16px rgba(0, 0, 0, 0.2);
	z-index: 2;
}
</style>
	<%@ include file="MainFooter.jsp"%>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/all.js"></script>
	<script type="text/javascript">
		msc.goTop.init();
		msc.user.init();
		$("img.imgLoad").imgLoad();
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

	<script>
		var inTimer, outTimer;
	
		$(".pin_list")
				.on(
						"mouseenter",
						"div.c",
						function(event) {
							var that = $(this);

							inTimer = setTimeout(
									function() {
										if (that.find("div.f").html() == '') {
											var id = that.find("div.f").attr(
													"data-id");

											$
													.ajax({
														type : "GET",
														url : "/ajax/ajax.php?ac=commondata&op=get_common_data_num",
														data : {
															id : id,
															type : "pai"
														},
														dataType : "json",
														success : function(d) {
															if (d.error === 0) {
																var islike = (d.data.islike == 1) ? " on"
																		: "";
																var isfav = (d.data.isfav == 1) ? " on"
																		: "";
																var islogin = (d.data.loginuid == 0) ? " nologin"
																		: "";
																that
																		.find(
																				"div.f")
																		.html(
																				'<a href="javascript:void(0);" class="f1'
																						+ islike
																						+ islogin
																						+ '" title="Like"><i></i></a>')
																		.fadeIn();
																that
																		.find(
																				"div.num span")
																		.html(
																				'<b>'
																						+ d.data.likenum
																						+ '</b>likes，'
																						+ d.data.replynum
																						+ 'comments')
																		.fadeIn();
															}

														}
													});
										} else {
											that.find("div.f").fadeIn();
											that.find("div.num span").fadeIn();
										}

									}, 150);
						});


		$(".pin_list").on("mouseleave", "div.c", function(event) {
			var that = $(this);
			clearTimeout(inTimer);

			outTimer = setTimeout(function() {
				that.find("div.f").fadeOut();
				that.find("div.num span").fadeOut();
			}, 100);

		});


		$(".pin_list").on(
				"click",
				".f1",
				function() {
					if ($(this).hasClass("on")) {
						msc.ui.dialog.error("Already liked!");
						return false;
					} else if ($(this).hasClass("nologin")) {
						msc.user.login();
						return false;
					} else {
						var that = $(this);
						$.post('/ajax/ajax.php?ac=pai&op=add_pai', {
							pid : that.parent().attr('data-id')
						}, function(e) {
							if (e.error === 0) {
								msc.ui.dialog.success("Marked as Liked!");
								that.parent().parent().find("div.num span b")
										.html(
												parseInt(that.parent().parent()
														.find("div.num span b")
														.html()) + 1);
								that.addClass("on");
							} else if (e.error === -1) {
								msc.ui.dialog.error(e.data);
							} else {
								msc.ui.dialog.error('An exception occurred. Please try again.');
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


	<span
		style="position: fixed; bottom: 0px; left: 0px; background-color: rgba(219, 219, 182, 0.5); color: black;"
		id="statusbar"></span>
	<div id="SL_balloon_obj" alt="0" style="display: block;">
		<div id="SL_button" class="SL_ImTranslatorLogo"
			style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/imtranslator-s.png&quot;) repeat scroll 0% 0%; display: none; opacity: 1;"></div>
		<div id="SL_shadow_translation_result2" style="display: none;"></div>
		<div id="SL_shadow_translator" style="display: none;">
			<div id="SL_planshet">
				<div id="SL_arrow_up"
					style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/up.png&quot;) repeat scroll 0% 0%;"></div>
				<div id="SL_Bproviders">
					<div class="SL_BL_LABLE_ON" title="Google" id="SL_P0">G</div>
					<div class="SL_BL_LABLE_ON" title="Microsoft" id="SL_P1">M</div>
					<div class="SL_BL_LABLE_ON" title="Translator" id="SL_P2">T</div>
				</div>
				<div id="SL_alert_bbl" style="display: none;">
					<div id="SLHKclose"
						style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/delete.png&quot;) repeat scroll 0% 0%;"></div>
					<div id="SL_alert_cont"></div>
				</div>
				
			</div>
			<div id="SL_shadow_translation_result" style="visibility: visible;"></div>
			<div id="SL_loading" class="SL_loading"
				style="background: rgba(0, 0, 0, 0) url(&quot;moz-extension://d849e60a-97da-499c-b29d-89f6d220ce39/content/img/util/loading.gif&quot;) repeat scroll 0% 0%;"></div>
			<div id="SL_player2"></div>
			
			
		</div>
	</div>
</body>
</html>