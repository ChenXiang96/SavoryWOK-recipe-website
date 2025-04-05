<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员中心 - 厨色</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon"
	href="${ctx}/https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="${ctx}/https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx}/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/all_002.css">
<link rel="stylesheet" type="text/css" href="${ctx}/css/center_home.css">
<style>
/* 覆盖Bootstrap对图片的影响 */
.imgLoad {
	max-width: 120px !important; /* 保持原有图片尺寸 */
	height: auto !important;
}
/* 修复主内容区偏移 */
.w_main {
	margin-top: 80px; /* 根据菜单实际高度调整 */
}
</style>
</head>
<body>

	<div class="top-menu-container">
		<!-- 新增的隔离容器 -->
		<%@ include file="menu3.jsp"%>
	</div>
	<!-- 主框架 -->
	<div class="w_main clear">


		<div class="mod_left">
			<div class="menu_wrap">
				<ul>
					<li><a class="on" href="${ctx}/center/get?uid=${user.uid}">会员<br>中心
					</a></li>

					<li><a href="${ctx}/center/zhanghu?uid=${user.uid}">账户<br>设置
					</a></li>
				</ul>
			</div>

		</div>


		<!-- 右侧 -->
		<div class="mod_right">


			<div class="space_info clear">

				<div class="pic">
					<a href="${ctx}/center/zhanghu" target="_blank"> <img
						class="imgLoad" src="${ctx}${user.uimage}"
						data-src="${ctx}${user.uimage}?t=<%=System.currentTimeMillis()%>"
						width="150" height="150">
					</a>
				</div>





				<div class="detail">

					<em><a href="${ctx}/center/zhanghu" target="_blank">${user.username}</a></em>


					<ul class="substatus">

						<li>${user.gexingqianming }</li>

					</ul>



				</div>
			</div>


			<div class="home_right mt30">






				<div class="ui_list_2_48 clear">
					<ul>
					</ul>
				</div>

				<div class="ui_title mt20">
					<div class="ui_title_wrap">
						<h3>我关注的人</h3>
					</div>
				</div>

				<div class="ui_list_2_48 clear"></div>

			</div>


			<div class="home_left mt30">

				<div class="ui_title">
					<div class="ui_title_wrap" id="J_feed_nav">

						<a href="${ctx}/center/myTopics?uid=${user.uid}" data-type="my"
							class="${not empty sessionScope.myTopicList ? 'on' : ''}">
							我的动态 </a> <a href="${ctx}/center/commentedTopics?uid=${user.uid}"
							class="${not empty sessionScope.commentedTopicList ? 'on' : ''}">
							我评论过的动态 </a>


					</div>
				</div>


				<div class="ui_list_5 mt10" id="J_feed_wrap">
					<ul id="J_feed_list">
						<c:choose>
							<%-- 我的动态模式 --%>
							<c:when test="${not empty sessionScope.myTopicList}">
								<c:forEach items="${sessionScope.myTopicList}" var="t">
									<li>
										<div class="subline">
											<div class="subtime"
												data-time="<fmt:formatDate value="${t.time}" pattern="yyyyMMddHHmmss"/>">
												<fmt:formatDate value="${t.time}" pattern="yyyy-MM-dd HH:mm" />
											</div>
											<div class="subtitle">
												<a href="${ctx}/center/get?uid=${t.uid}" target="_blank">${t.uname}</a>
												发表了新话题
											</div>
										</div>
										<div class="subcontent img_120">
											<div class="pp">
												<a href="${ctx}/commentshow?tid=${t.tid}&uid=${t.uid}"
													target="_blank"> <strong>${t.ttitle}</strong><br>
													${t.tcontent}
												</a>
											</div>
											<c:if test="${not empty t.timg}">
												<c:set var="images" value="${fn:split(t.timg, '@')}" />
												<c:forEach items="${images}" var="img">
													<img class="imgLoad" src="${ctx}/images/blank.gif"
														data-src="${ctx}/images/${img}" width="120">
												</c:forEach>
											</c:if>
										</div>
									</li>
								</c:forEach>
							</c:when>

							<%-- 评论过的动态 --%>
							<c:when test="${not empty sessionScope.commentedTopicList}">
								<c:forEach items="${sessionScope.commentedTopicList}"
									var="commented">
									<li>
										<div class="subline">
											<div class="subtime"
												data-time="<fmt:formatDate value="${commented.time}" pattern="yyyyMMddHHmmss"/>">
												<fmt:formatDate value="${commented.time}"
													pattern="yyyy-MM-dd HH:mm" />
											</div>
											<div class="subtitle">
												<a href="${ctx}/center/get?uid=${commented.uid}"
													target="_blank">${commented.uname}</a> 发表了新话题
											</div>
										</div>
										<div class="subcontent img_120">
											<div class="pp">
												<a
													href="${ctx}/commentshow?tid=${commented.tid}&uid=${commented.uid}"
													target="_blank"> <strong>${commented.ttitle}</strong><br>
													${commented.tcontent}
												</a>
											</div>
											<c:if test="${not empty commented.timg}">
												<c:set var="images" value="${fn:split(commented.timg, '@')}" />
												<c:forEach items="${images}" var="img">
													<img class="imgLoad" src="${ctx}/images/blank.gif"
														data-src="${ctx}/images/${img}" width="120">
												</c:forEach>
											</c:if>
										</div>
									</li>
								</c:forEach>
							</c:when>

							<%-- 默认显示的评论动态 --%>
							<c:otherwise>
								<li style=""><div class="subline"></div>
									<div class="subcontent img_120">

										<div class="detail">
											<p>您还没发布过动态</p>
										</div>
									</div></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<div class="ui-loading mt20" id="J_feed_load">
					<a href="${ctx}/javascript:void(0);" class="">查看更多动态</a>
				</div>

			</div>


		</div>
		<!-- 右侧结束 -->
		<%@ include file="footer3.jsp"%>
	</div>

	<script src="${ctx}/js/push.js"></script>
	<script src="${ctx}/js/hm.js"></script>
	<script type="text/javascript" src="${ctx}/js/all.js"></script>
	<script type="text/javascript">
		msc.user.init();
		$("img.imgLoad").imgLoad();
	</script>
	<script type="text/javascript" src="${ctx}/js/msc-tools-date.js"></script>
	<!-- <script type="text/javascript" src="${ctx}/js/feed.js"></script> -->
	<script type="text/javascript">

    $("#search").click(function () {
        var q = $("#q").val().replace(/\s+/g, "").replace("　", "");
        window.location.href = '//home.meishichina.com/search/' + (q == "" ? '' : q + '/')
    });
    $("#q").keydown(function (e) {
        if (e.keyCode == 13) $("#search").click()
    });

    // var feed = msc.tools.feed;


    $("#J_feed_nav a").click(function () {


        if ($(this).hasClass('on') || $("#J_feed_load a").hasClass('on'))
            return false;

        feed.config.data.type = $(this).attr("data-type");
        if ($(this).attr("data-type") == 'uid')
            feed.config.data.uid = $(this).attr("data-uid");

        feed.reload();
        $(this).addClass("on").siblings().removeClass("on");
        return false;
    });

    $(".show_tip").click(function () {
        msc.ui.dialog.alert({
            content: ['<h3><img src="${ctx}/images/center/msc_app.png" style="width:100px;display:inline-block;"></h3><p style="font-size:14px;color:#333;margin:5px 0px -15px;">扫一扫，下载客户端<br>参加幸运草抽奖、免费试用、美粒兑换奖品</p>', ''],
            ok: function () {
            },
            title: "提示"
        });
    });
</script>

	<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="${ctx}/js/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="${ctx}/js/push.js"}else{bp.src="${ctx}/js/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script>



</body>
</html>