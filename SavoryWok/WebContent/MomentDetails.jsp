<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Moment Details</title>
<meta name="keywords" content="">
<meta name="description" content="description">
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/pai/905517/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.meishichina.com/pai/905517/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/all.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/pai2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/comment.css">

<script src="${pageContext.request.contextPath}/js/push.js"></script>
<script src="${pageContext.request.contextPath}/js/hm.js"></script>
<script src="${pageContext.request.contextPath}/js/share.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/share_style0_16.css">
<style>
.imgLoad1 {
	width: 60px;
	height: 60px;
}

.wrap {
	margin-top: 60px !important;
}

.space_right {
	margin-top: 30px !important;
}
</style>
</head>
<body>

	<%@ include file="MainMenu.jsp"%>


	<div class="wrap">
		<div class="w clear">
			<div class="space_left">

				<div class="ui_title">
					<div class="ui_title_wrap clear ">
						<h2 class="on">Moment Details</h2>
					</div>
				</div>

				<div class="pai_box">

					<a class="img" title="${t.uname }"
						href="${pageContext.request.contextPath}/center/get"
						target="_blank"> <img
						src="${pageContext.request.contextPath}${t.uimg}" class="imgLoad1"
						style="display: block;" width="48" height="48"></a>

					<p class="u">
						<a target="_blank" href="" class="t">${t.uname }</a> ${t.time }

					</p>
					<p class="c">
						<span class="subject">${t.tcontent }</span>
					</p>
					<div class="pic">
						<img src="${pageContext.request.contextPath}/images/${t.timg}"
							class="imgLoad"
							style="display: block; border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">
					</div>
				</div>


				<div id="comment">
					<div class="comment-wrap clear" data-dom="wrap">

						<div class="comment-list ">
							<div data-dom="list">
								<ul style="">

									<c:forEach items="${sessionScope.clist}" begin="0" var="ct">

										<li data-id="${ct.ctid }">
											<div class="pic">
												<a title="Visit" target="_blank"
													href="${pageContext.request.contextPath}/center/get"><img
													src="${pageContext.request.contextPath}${ct.uimg}"
													class="imgLoad" style="display: block;" width="48"
													height="48"></a>
											</div>
											<div class="detail">
												<div class="tools">
													<div class="left">
														<a target="_blank"
															href="${pageContext.request.contextPath}/center/get"
															title="Visit">${ct.uname }</a><span
															data-time="1433395511" class="subtime">${ct.ctime }</span>
													</div>
													<div class="right">
														<a class="reply" href="javascript:void(0);">Reply</a>
													</div>
												</div>
												<div class="content">${ct.cdes }</div>
											</div>

										</li>
									</c:forEach>
								</ul>
							</div>
						</div>


						<form
							action="${pageContext.request.contextPath}/commentadd?uid=${user.uid}&tid=${t.tid}"
							method="post">
							<div class="comment-pai">
								<a target="_blank"
									href="${pageContext.request.contextPath}/center/get" class="t"><img
									src="${pageContext.request.contextPath}${ user.uimage}"
									data-src="${pageContext.request.contextPath}${ user.uimage}"
									class="imgLoad1 comment-pai-img" width="48" height="48"></a>

								<div data-dom="add" class="comment-post comment-add">

									<div class="comment-post-text">
										<div class="comment-post-text-inner">
											<input type="textarea" title="Share your awesome comment!"
												class="text ui-webkit-scrollbar" id="cdes" name="cdes">

										</div>
									</div>
									<div class="comment-post-tools clear">
										<div class="left">
											<a title="插入表情" data-type="smilies"
												class="J_event comment-smilies-a" href="javascript:void(0);"></a><span
												class="tips">Share your awesome comment!</span>
										</div>
										<div class="right">
											<input class="comment-btn add_submit" value="Add comment"
												type="submit">
										</div>
									</div>
								</div>

							</div>
						</form>

					</div>

				</div>


			</div>


			<div class="space_right">
				<a class="r_pai-add" target="_blank"
					href="EditPost.jsp?uid=${user.uid}" title="Share a Moment">Share a Moment</a>
				<div class="mt20">
					<a title="Cheer in Every Bite" href="#"
						target="_blank"> <script>
							
						</script><img
						src="${pageContext.request.contextPath}/Banner-images/Comment-details-banner.jpg"
						class="imgLoad" style="display: block; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.5); border-radius: 8px;" width="300" height="500">
					</a>
				</div>

				<div class="mt20" id="smnbk"></div>



			</div>


		</div>
	</div>
	<style type="text/css">
.r_pai-add:hover {
	background-color: orange; 
	color: white;
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

.subject {
	font-size: 1.1em;
}

.t {
	font-size: 1.1em !important;
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
	<%@include file="MainFooter.jsp"%>

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
	<div class="fixed-footer"
		style="left: 1179.5px; right: auto; bottom: 142.383px;">
		<a href="javascript:;" title="Back to Top"
			onclick="window.scrollTo(0,0);" class="fixed-footer-go"
			style="display: inline;"></a>
		<div class="fixed-footer-weixin">
			<div class="fixed-footer-weixin-inner">
				<span>SavoryWok</span>
			</div>
		</div>
	</div>


	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/msc-ui-smilies.js"></script>
	<script type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=11097"></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/pai.js"></script>


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