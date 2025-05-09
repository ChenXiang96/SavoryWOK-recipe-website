<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Theme Details</title>
<meta name="keywords" content="Theme Details" />
<meta name="description" content="Theme Details" />
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent"
	content="format=xhtml; url=https://m.meishichina.com/mofang/dapaidang/">
<link rel="alternate" media="only screen and (max-width: 640px)"
	href="https://m.meishichina.com/mofang/dapaidang/">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico" />
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/app/mofang/mofang3.css?v1=2017-08-17">

<link
	href="https://fonts.googleapis.com/css2?family=Satisfy:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Lato:wght@400&display=swap"
	rel="stylesheet">
<style>
.sliderh {
	width: 100%;
	height: 350px;
	clear: both;
	position: relative;
	overflow: hidden;
	margin-top: 0px;
}

h3 {
	font-weight: 600 !important;
	margin: 1.2em 0 !important;
	color: #333 !important;
}

h3.caname-title {
	font-family: 'Montserrat', serif !important;
	font-size: 36px !important;
	letter-spacing: 0.5px;
}

h4.title-description {
	font-family: 'Lato', sans-serif !important;
	font-size: 20px !important;
	font-weight: 400;
	line-height: 1.6;
}

h4.title-description {
	margin-bottom: 80px !important;
}

h5.subtitle-description {
	font-family: 'Lato', sans-serif !important;
	font-size: 18px !important;
	font-weight: 400;
	line-height: 1.6;
}

h5.subtitle-description {
	margin-bottom: 40px !important;
}

.mo {
	margin-top: 40px !important;
}
</style>
</head>

<body>






	<%@ include file="MainMenu.jsp"%>

	<div class="sliderh">
		<div id="sliderh" style="width: 100%">
			<ul>
				<li class="show1"
					style="width:100%;
           min-height:520px;
           margin-top:30px;
           background:url(${ctx}/<c:out value="${title_banner_img}"/>) no-repeat center bottom; background-size: cover; transform: scale(1);">
					<h1>
						<a href="https://www.meishichina.com/mofang/dapaidang/"
							title="Theme Details" id="mof_h1">Theme Details</a>
					</h1>
				</li>
			</ul>
		</div>
	</div>
	<div class="msb">
		<input type="hidden" id="mof_fcover"
			value="https://i3.meishichina.com/attachment/mofang/2018/06/11/2018061115287010517948197577.jpg">
		<input type="hidden" id="mof_domain" value="dapaidang">




		<h3 class="caname-title">
			<c:out value="${caname}" />
		</h3>

		<h4 class="title-description">
			<c:out value="${title_description}" />
		</h4>


		<c:forEach items="${subCategories}" var="sub">
			<div class="sub-category">
				<div class="mo">
					<h2>
						<c:out value="${sub.casname}" />
					</h2>
				</div>
				<h5 class="subtitle-description">
					<c:out value="${sub.subtitle_description}" />
				</h5>
				<div class="msb_list clear">
					<ul>
						<c:forEach items="${categoryDishesMap[sub.casid]}" var="dish">
							<li>
								<div class="pic">
									<a href="${ctx}/getDishById/${dish.id}" target="_blank"> <img
										data-src="${ctx}/${dish.image}"
										src="//static.meishichina.com/v6/img/blank.gif"
										class="imgLoad"
										style="width: 100%; height: 200px; object-fit: cover; object-position: center; border-radius: 10px" />
										<span><c:out value="${dish.name}" /></span>
									</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</c:forEach>

		<%@ include file="MainFooter.jsp"%>


		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>

		<script type="text/javascript"
			src="//static.meishichina.com/v6/js/app/mofang/all2.js?v1=1"></script>
		<script type="text/javascript">
var inTimer,outTimer;

$(".pin_list").on("mouseenter","div.c",function(event){
		var that = $(this);

		inTimer = setTimeout(function() {
			if (that.find("div.f").html() == '') {
			var id = that.find("div.f").attr("data-id");


			$.ajax({
type: "GET",
url: "/ajax/ajax.php?ac=commondata&op=get_common_data_num",
data: {
id: id,
type: "pai"
},
dataType: "json",
success: function(d) {
if (d.error === 0){
var islike =(d.data.islike==1)?" on":"";
var isfav=(d.data.isfav==1)?" on":"";
var islogin=(d.data.loginuid==0)?" nologin":"";
that.find("div.f").html('<a href="javascript:void(0);" class="f1'+islike+islogin+'" title="Like"><i></i></a>').show();
}


}
});
} 
else  
that.find("div.f").show();


}, 150);
});


$(".pin_list").on("mouseleave","div.c",function(event){
		var that = $(this);
		clearTimeout(inTimer);

		outTimer = setTimeout(function() {
			that.find("div.f").hide();
			}, 100);

		});

$(".pin_list").on("click",".f1",function(){
		if($(this).hasClass("on")){
		msc.ui.dialog.error("You have already liked this Theme!");
		return false;
		}
		else if($(this).hasClass("nologin")){
		msc.user.login();
		return false;
		}
		else{
		var that =$(this);
		$.post('/ajax/ajax.php?ac=pai&op=add_pai', {
id:that.parent().attr('data-id')
}, function(e) {
if (e.error === 0) {
msc.ui.dialog.success("Add like successfully");
//that.find("b").html(parseInt(that.find("b").html()) + 1);
that.addClass("on");
}
else if(e.error === -1){
msc.ui.dialog.error(e.data);
}
else{
msc.ui.dialog.error('An exception occurred. Please try again.');
}

},"json");
}
});
</script>
		<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script>
</body>
</html>