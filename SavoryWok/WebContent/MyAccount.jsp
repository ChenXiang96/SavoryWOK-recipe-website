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
<title>Account_Settings</title>
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Cal+Sans&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Satisfy&family=Special+Gothic+Expanded+One&family=Tagesschrift&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Cal+Sans&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Oswald:wght@200..700&family=Protest+Riot&family=Satisfy&family=Special+Gothic+Expanded+One&family=Tagesschrift&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Cal+Sans&family=Comic+Relief:wght@400;700&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Oswald:wght@200..700&family=Protest+Riot&family=Satisfy&family=Special+Gothic+Expanded+One&family=Tagesschrift&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Cal+Sans&family=Comic+Relief:wght@400;700&family=Edu+QLD+Beginner:wght@400..700&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Oswald:wght@200..700&family=Protest+Riot&family=Satisfy&family=Special+Gothic+Expanded+One&family=Tagesschrift&display=swap" rel="stylesheet"><style>
.imgLoad {
	max-width: 120px !important;
	height: auto !important;
}

.w_main {
	margin-top:20px;
}
.mod_right {
    width: 70% !important; 
    margin-right: 0 !important;
    padding-right: 0 !important;
    float: left;
    margin-left: 30px !important;

}

.mod_right > * {
    max-width: 100% !important;
    margin-right: 0 !important;
    padding-right: 0 !important;
}
.account_center_right_banner {
    width: 18%;           
    float: left;            
    margin-left: 6%;       
    margin-top: 40px;       
    position: sticky;
    top: 100px;            
}


.subtitle a{
    font-family: "Cal Sans", sans-serif;
    font-weight: 500;
    font-size: 18px;
    color: #333;
}

.post_detail strong {
    font-family: "Oswald", sans-serif;
    font-weight: 600;
    font-size: 16px;
    color: #333;
}

.post_detail a {
    font-family: "Comic Relief", system-ui;
    font-weight: 400;
    font-size: 14px;
    color: #666;
    line-height: 1.6;
}

.substatus li{
    font-family: "Edu QLD Beginner", cursive;
    font-weight: 400;
    font-style: normal;
    font-size: 18px;
    color:#FFA500 !important;
}
</style>
</head>
<body>

	<div class="top-menu-container">
		<%@ include file="MainMenu.jsp"%>
	</div>
	<div class="w_main clear">
		<div class="mod_left">
			<div class="menu_wrap">
				<ul>
					<li><a class="on" href="${ctx}/center/get?uid=${user.uid}">My<br>Activity
					</a></li>

					<li><a href="${ctx}/center/zhanghu?uid=${user.uid}">Account<br>Settings
					</a></li>
				</ul>
			</div>

		</div>

		<div class="mod_right">


			<div class="space_info clear">

				<div class="pic">
					<a href="${ctx}/center/zhanghu" target="_blank"> 
					  <img class="imgLoad" src="${ctx}${user.uimage}" data-src="${ctx}${user.uimage}?t=<%=System.currentTimeMillis()%>" >
					</a>
				</div>

				<div class="detail">

					<em><a href="${ctx}/center/zhanghu" target="_blank">${user.username}</a></em>


					<ul class="substatus">

						<li>${user.gexingqianming }</li>

					</ul>



				</div>
			</div>


			<div class="home_left mt30">

				<div class="ui_title">
					<div class="ui_title_wrap" id="J_feed_nav">

						<a href="${ctx}/center/myTopics?uid=${user.uid}" data-type="my"
							class="${not empty sessionScope.myTopicList ? 'on' : ''}">
							My Posts </a> <a href="${ctx}/center/commentedTopics?uid=${user.uid}"
							class="${not empty sessionScope.commentedTopicList ? 'on' : ''}">
							Commented Posts </a>


					</div>
				</div>


				<div class="ui_list_5 mt10" id="J_feed_wrap">
					<ul id="J_feed_list">
						<c:choose>
							
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
												shared a special moment:
											</div>
										</div>
										<div class="subcontent img_120">
											<div class="post_detail">
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
													target="_blank">${commented.uname}</a> shared a special moment:
											</div>
										</div>
										<div class="subcontent img_120">
											<div class="post_detail">
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

							<c:otherwise>
								<li style=""><div class="subline"></div>
									<div class="subcontent img_120">

										<div class="detail">
											<p>You haven’t shared any posts yet</p>
										</div>
									</div></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>

				<div class="ui-loading mt20" id="J_feed_load">
					<a href="${ctx}/javascript:void(0);" class="">Show more posts</a>
				</div>

			</div>
		</div>

		<div class="account_center_right_banner">
			<a title="account_center_banner" href="" target="_blank"> 
			<img alt=""
				src="${pageContext.request.contextPath}/Banner-images/Account_Activity_banner.jpg"
				height=500
				style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">
			</a>
		</div>


		<%@ include file="MainFooter.jsp"%>
	</div>

	<script src="${ctx}/js/push.js"></script>
	<script src="${ctx}/js/hm.js"></script>
	<script type="text/javascript" src="${ctx}/js/all.js"></script>
	<script type="text/javascript">
		msc.user.init();
		$("img.imgLoad").imgLoad();
	</script>
	<script type="text/javascript" src="${ctx}/js/msc-tools-date.js"></script>
	
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
            content: ['<h3><img src="${ctx}/images/center/msc_app.png" style="width:100px;display:inline-block;"></h3><p style="font-size:14px;color:#333;margin:5px 0px -15px;">Scan and download the APP</p>', ''],
            ok: function () {
            },
            title: "tips"
        });
    });
</script>

	<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="${ctx}/js/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="${ctx}/js/push.js"}else{bp.src="${ctx}/js/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script>



</body>
</html>