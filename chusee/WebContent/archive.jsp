<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>甄选__厨色</title>              
<meta name="keywords" content="甄选,品质厨房,甄选消费指南,美食指南,厨房生活,厨房生活指南,厨房消费指南" />
<meta name="description" content="厨色甄选频道，帮助广大网友买到高品质网购产品的热门推荐网站，每天为您精选优质的、实用的购物信息，涵盖厨电百货、食品生鲜、烘焙用品、母婴用品等类别，更有免费试用、抽奖等你参加。" />
<meta name="renderer" content="webkit">
<link rel="shortcut icon" href="https:images/zhenxuan/lib/f.ico"/>
<link rel="apple-touch-icon" href="images/zhenxuan/wapico.png" />
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css?v1=9">
<link rel="stylesheet" type="text/css" href="${ctx }/css/hen2.css?v1=2018-01-241">
<link rel="stylesheet" type="text/css" href="${ctx }/css/zhen_listing.css?v1=2016-12-26">

</head>
<body>
<%@ include file="menu3.jsp" %>



 

<!-- 主框架 -->
<div class="wrap">
	<div class="w clear">


<div class="zhen_index_n8 mt20 clear">


<a href="https://zhen.meishichina.com/listing/4834215/" target="_blank" title="限时秒杀">
<img src="${ctx }/images/zhenxuan/z01.jpg" class="imgLoad" >
限时秒杀
</a>

<a href="https://zhen.meishichina.com/listing/4834212/" target="_blank" title="白菜价">
<img src="${ctx }/images/zhenxuan/z02.jpg" class="imgLoad" >
白菜价
</a>

<a href="https://zhen.meishichina.com/listing/4834211/" target="_blank" title="买了又买">
<img src="${ctx }/images/zhenxuan/z03.jpg" class="imgLoad" >
买了又买
</a>

<a href="https://zhen.meishichina.com/listing/4834217/" target="_blank" title="厨房神器">
<img src="${ctx }/images/zhenxuan/z04.jpg" class="imgLoad" >
厨房神器
</a>

<a href="https://zhen.meishichina.com/listing/4834219/" target="_blank" title="镇店之宝">
<img src="${ctx }/images/zhenxuan/z05.jpg" class="imgLoad" >
镇店之宝
</a>

<a href="https://zhen.meishichina.com/listing/4836164/" target="_blank" title="海淘食光">
<img src="${ctx }/images/zhenxuan/z06.jpg" class="imgLoad" >
海淘食光
</a>

<a href="https://zhen.meishichina.com/listing/4917758/" target="_blank" title="葡萄酒">
<img src="${ctx }/images/zhenxuan/z07.jpg" class="imgLoad" >
葡萄酒
</a>
<a href="https://zhen.meishichina.com/listing/4859552/" target="_blank" title="咖啡">
<img src="${ctx }/images/zhenxuan/z08.jpg" class="imgLoad" >
咖啡
</a>
<a href="https://zhen.meishichina.com/listing/4856568/" target="_blank" title="杯子">
<img src="${ctx }/images/zhenxuan/z09.jpg" class="imgLoad" >
杯子
</a>
<a href="https://zhen.meishichina.com/listing/4788122/" target="_blank" title="悦烘焙">
<img src="${ctx }/images/zhenxuan/z10.jpg" class="imgLoad" >
悦烘焙
</a>    
</div>



<div class="ui_title mt30">
 <div class="ui_title_wrap clear" id="get_zhen_list_living">
<h2 class="on">发现尖货</h2>
<a class="right" href="javascript:void(0);" page="1" data="popular">一月人气推荐</a>
<a class="right" href="javascript:void(0);" page="1" data="product">最新品测</a>
<a class="right" href="javascript:void(0);" page="1" data="new">最新发布</a>
<a class="right on" href="javascript:void(0);" page="2" data="recom">最新推荐</a>
 </div>
</div>


<div id="zhen_list_living" class="zhen_list_living clear mt20">
<ul>
	<c:forEach items="${ list}" var="p">
	<li>
<a title="和其正凉茶饮料" href="https://zhen.meishichina.com/29395/" target="_blank" class="pic">
<i>
	<img src="${ctx }/${p.image }" class="imgLoad" >
</i>
<p>${p.pname}</p>
<span>${p.price}</span>
</a>
<a target="_blank" class="buy" href="https://zhen.meishichina.com/29395/redirect/" rel="nofollow">购买</a>
</li>
</c:forEach>

</ul>
</div>
</div>
<%@ include file="footer2.jsp" %>

<!-- 引用全站js -->
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
<script type="text/javascript"> 
msc.goTop.init();
msc.user.init();
$("img.imgLoad").imgLoad();
//搜索不动
$("#search").click(function(){var q=$("#q").val().replace(/\s+/g,"").replace("　","");window.location.href='https://home.meishichina.com/search/'+(q==""?'':q+'/')});$("#q").keydown(function(e){if(e.keyCode==13)$("#search").click()});

//hover延时，右侧导航
$("#navlist").hoverDelay(function(){
$('.navlist_a').addClass('on');
$("#navlist_sub").slideDown('2000');
},function(){
$("#navlist_sub").slideUp('2000');
$('.navlist_a').removeClass('on');
},200,200);

$("#navlist").click(function(){
if($('.navlist_a').hasClass("on")){
$("#navlist_sub").slideUp('2000');
$('.navlist_a').removeClass('on');
}
else{
$('.navlist_a').addClass('on');
$("#navlist_sub").slideDown('2000');
}
});
</script>

<script src="//static.meishichina.com/res/web/scripts/slider2.js" type="text/javascript" ></script>
<script type="text/javascript">
  
var sudoSlider = $("#zhen_index_slider").sudoSlider({speed:600,slideCount:3,movecount:3,prevHtml:'<a class="prevBtn" href="javascript:void(0);"><i>&nbsp;</i></a>',nextHtml:'<a class="nextBtn" href="javascript:void(0);"><i>&nbsp;</i></a>',continuous: true});



//加载商品
$("#get_zhen_list_living a").click(function(){
if($(this).hasClass('on'))
return false;
else{
$("#get_zhen_list_living a").removeClass('on');
$(this).addClass('on').attr("page",1);
var view=$(this).attr("data");
get_zhen_list_living(view,1);
}
});


$("#zhen_list_loading a").click(function(){
if($(this).hasClass('on')||$(this).hasClass('on2'))
return false;
else{
$(this).addClass("on");
var view=$("#get_zhen_list_living a.on").attr("data");
var pageindex=$("#get_zhen_list_living a.on").attr("page");
get_zhen_list_living(view,pageindex);
}
});


function get_zhen_list_living(view,pageindex){

$.get(msc.tools.getAjaxUrl({
		ac: "commodity",
		op: "getMoreDiffStateCommodityList"
	}), {
		view:view,
		pageindex:pageindex

	},
	function(d) {
		var i,html='';
		if (d.error == 0) {
for(i=0;i<d.data.length;i++)
html+='<li class="feed"><a title="'+d.data[i]["cname"]+'" href="https://zhen.meishichina.com/'+d.data[i]["cid"]+'/" target="_blank" class="pic"><i><img src="'+d.data[i]["cpicurl"]+'" class="imgLoad" ></i><p>'+d.data[i]["cname"]+'</p><span>￥'+d.data[i]["cprice"]+'</span></a><a target="_blank" class="buy" href="https://zhen.meishichina.com/'+d.data[i]["cid"]+'/redirect/" rel="nofollow">购买</a></li>';

if(pageindex==1)
$("#zhen_list_living ul").html(html);
else
$("#zhen_list_living ul").append(html);
$("#zhen_list_living ul li.feed").fadeIn();
$("#zhen_list_living ul li.feed img.imgLoad").imgLoad();
$("#get_zhen_list_living a.on").attr("page",parseInt(pageindex)+1);
$("#zhen_list_loading a").removeClass("on");
}else if (d.error == -2) {
$("#zhen_list_loading a").html("没有了~").removeClass("on").addClass("on2");
}
else{
msc.ui.dialog.error("发生异常，请重试");
$("#zhen_list_loading a").removeClass("on");
		}
	},
	"json");

}

$("#zhen_index_slider li a").hover(function(){
$(this).find("div").hide();
$(this).find("p").fadeOut('600');
},function(){
$(this).find("div").show();
$(this).find("p").fadeIn('600');
}
);

</script>
<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> </body>
</html>

    