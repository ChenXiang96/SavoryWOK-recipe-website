<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>菜谱大全_厨色</title>    
<meta name="keywords" content="菜谱,菜谱大全,家常菜谱大全,菜谱家常菜做法,家常菜图片做法大全">
<meta name="description" content="厨色为您提供【菜谱】家常菜图片做法大全,精选孕妇简单营养健康菜谱,中西餐快餐饭店电子菜谱等菜谱信息,分享美食图片视频、尽享生活乐趣。">
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.meishichina.com/recipe/">
<link rel="alternate" media="only screen and (max-width: 640px)" href="${ctx }/https://m.meishichina.com/recipe/">
<link rel="shortcut icon" href="${ctx }/https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon" href="${ctx }/images/cookbook/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx }/css/recipe2.css">
</head>
<body>

  <%@ include file="menu3.jsp" %>

<!-- 主框架 -->
<div class="wrap">
	<div class="w clear">



  <div class="recipe_index_n10 mt20 clear jtl">
<a href="${ctx }/https://home.meishichina.com/show-top-type-recipe.html" target="_blank" title="一周最热">
<img class="imgLoad" src="${ctx}/images/cookbook/r01.jpg" style="display: block;">
一周最热
</a>

<a href="${ctx }/https://home.meishichina.com/show-top-type-recipe-order-pop.html" target="_blank" title="人气菜肴">
<img class="imgLoad" src="${ctx}/images/cookbook/r02.jpg" style="display: block;">
人气菜肴
</a>

<a href="${ctx }/https://home.meishichina.com/recipe/xiaji/" target="_blank" title="夏季食谱">
<img class="imgLoad" src="${ctx}/images/cookbook/r03.jpg" style="display: block;">
夏季食谱
</a>

<a href="${ctx }/https://home.meishichina.com/recipe/gaoyanzhi/" target="_blank" title="高颜值">
<img class="imgLoad" src="${ctx}/images/cookbook/r04.jpg" style="display: block;">
高颜值
</a>

<a href="${ctx }/https://home.meishichina.com/recipe/kuaishoucai/" target="_blank" title="快手菜">
<img class="imgLoad" src="${ctx}/images/cookbook/r05.jpg" style="display: block;">
快手菜
</a>

<a href="${ctx }/https://home.meishichina.com/recipe/zaocan/" target="_blank" title="早餐">
<img class="imgLoad" src="${ctx}/images/cookbook/r06.jpg" style="display: block;">
早餐
</a>

<a href="${ctx }/https://home.meishichina.com/recipe-menu.html" target="_blank" title="家常菜谱">
<img class="imgLoad" src="${ctx}/images/cookbook/r07.jpg" style="display: block;">
家常菜谱
</a>
<a href="${ctx }/https://hongbei.meishichina.com/" target="_blank" title="烘焙大全">
<img class="imgLoad" src="${ctx}/images/cookbook/r08.jpg" style="display: block;">
烘焙大全
</a>
<a href="${ctx }/https://mamapai.meishichina.com/" target="_blank" title="亲子专区">
<img class="imgLoad" src="${ctx}/images/cookbook/r09.jpg" style="display: block;">
亲子专区
</a>
<a href="${ctx }/https://home.meishichina.com/recipe-list.html" target="_blank" title="所有菜谱">
<img class="imgLoad" src="${ctx}/images/cookbook/r10.jpg" style="display: block;">
所有菜谱
</a>
  </div>



  <div id="recipeindex_info">
	  <div id="recipeindex_info_wrap" style="position: static; top: 40px; z-index: 1111; left: 179.5px;">
		  <div class="ui_title">
			  <div class="ui_title_wrap clear">
				  <c:forEach items="${sessionScope.cList}" var="c">
                          <h3>
                          <a href="${ pageContext.request.contextPath }/findByCid/<c:out value="${c.cid}"/>/1" class="right3" target="_blank">
                             <c:out value="${c.cname}"></c:out> 
                          </a>
                          </h3>
                          </c:forEach>
				
			  </div>
		  </div>
	  </div>
  </div>

  <div class="big4_list clear mt10" id="recipeindex_living">
	  	  <ul class="on">
	  	  <c:forEach items="${ list}" var="p">
		 <li>
		  
		  <a title="cuisine item" href="${ctx }/health/howdo?pid=${p.pid}" target="_blank">
			  <i>
				  <img alt="cuisine item" class="imgLoad" src="${ctx}/${p.image }" style="display: block;">
			  </i>
			  <p name="pname">${p.pname }</p>
			  <input name="pid" id="pid" class="" value="${product.pid}" type="hidden">
		  </a>
		  
		  <a title="${p.pdesc }" href="" target="_blank" class="u">${p.pdesc }</a>
		 </li>
		  </c:forEach>
		  
		  
		  <!-- li>
		  <a title="烧茄子" href="https://home.meishichina.com/recipe-396460.html" target="_blank">
<span class="copyright">独家</span>
			  <i>
				  <img alt="烧茄子" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275788634129724956.jpg" style="display: block;">
			  </i>
			  <p>烧茄子</p>
		  </a>
		  <a title="碗里姜膳家常菜" href="https://home.meishichina.com/space-10283742.html" target="_blank" class="u">碗里姜膳家常菜</a>
		  </li>
		  		  <li>
		  <a title="肉片炒茭白" href="https://home.meishichina.com/recipe-399597.html" target="_blank">
<span class="copyright">独家</span>
			  <i>
				  <img alt="肉片炒茭白" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275786015899724956.jpg" style="display: block;">
			  </i>
			  <p>肉片炒茭白</p>
		  </a>
		  <a title="米拉Miira" href="https://home.meishichina.com/space-10667631.html" target="_blank" class="u">米拉Miira</a>
		  </li>
		  		  <li>
		  <a title="肉末茄子" href="https://home.meishichina.com/recipe-399048.html" target="_blank">
<span class="copyright">独家</span>
			  <i>
				  <img alt="肉末茄子" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275787809699724956.jpg" style="display: block;">
			  </i>
			  <p>肉末茄子</p>
		  </a>
		  <a title="一米阳光612" href="https://home.meishichina.com/space-10244347.html" target="_blank" class="u">一米阳光612</a>
		  </li>
		  		  <li>
		  <a title="番茄苹果汁" href="https://home.meishichina.com/recipe-399592.html" target="_blank">
			  <i>
				  <img alt="番茄苹果汁" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275782368049724956.jpg" style="display: block;">
			  </i>
			  <p>番茄苹果汁</p>
		  </a>
		  <a title="飘零星" href="https://home.meishichina.com/space-5828748.html" target="_blank" class="u">飘零星</a>
		  </li>
		  		  <li>
		  <a title="素炒冬瓜" href="https://home.meishichina.com/recipe-399072.html" target="_blank">
<span class="copyright">独家</span>
			  <i>
				  <img alt="素炒冬瓜" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275781165749724956.jpg" style="display: block;">
			  </i>
			  <p>素炒冬瓜</p>
		  </a>
		  <a title="一米阳光612" href="https://home.meishichina.com/space-10244347.html" target="_blank" class="u">一米阳光612</a>
		  </li>
		  		  <li>
		  <a title="牛肉炒脆皮椒" href="https://home.meishichina.com/recipe-399590.html" target="_blank">
			  <i>
				  <img alt="牛肉炒脆皮椒" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/2018052915275771561549724956.jpg" style="display: block;">
			  </i>
			  <p>牛肉炒脆皮椒</p>
		  </a>
		  
		  <a title="緣豆兒" href="https://home.meishichina.com/space-8471333.html" target="_blank" class="u">緣豆兒</a>
		  </li>
		  		  <li>
		  <a title="蜂蜜西柚酱" href="https://home.meishichina.com/recipe-233339.html" target="_blank">
		  			  <i>
				  <img alt="蜂蜜西柚酱" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/c640_201509111441954080936.jpg" style="display: block;">
			  </i>
			  <p>蜂蜜西柚酱</p>
		  </a>
		  <a title="龙门客栈掌柜" href="https://home.meishichina.com/space-8526571.html" target="_blank" class="u">龙门客栈掌柜</a>
		  </li>
		  		  <li>
		  <a title="李子果泥" href="https://home.meishichina.com/recipe-233621.html" target="_blank">
		  			  <i>
				  <img alt="李子果泥" class="imgLoad" src="%E8%8F%9C%E8%B0%B1%E5%A4%A7%E5%85%A8_%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/c640_201509141442193565412.jpg" style="display: block;">
			  </i>
			  <p>李子果泥</p>
		  </a>
		  <a title="健康料理" href="https://home.meishichina.com/space-8493176.html" target="_blank" class="u">健康料理</a>
		  </li-->
		  		 
		 
		  	  </ul>
	  
</div>

</div>
<style type="text/css">
.footer-area{padding:10px 0}.footer-area .w{padding-top:10px;border-top:1px solid #e8e8e8}.footer-area a{color:#666}.footer-area a:hover{color:#ff6767}.ft1{clear:none;float:left;font-size:11px;color:#666;width:680px;padding-top:10px}.ft1 .c3b{color:#c90;font-size:14px;font-weight:700;margin-bottom:6px}.ft1 .c3b a{color:#f50}.ft1 .c3c{color:#aaa;font-size:12px;margin-bottom:6px}.ft2,.ft3,.ft4{clear:none;float:right;text-align:center}.ft3{margin:0 25px}
</style>


<%@ include file="footer3.jsp" %>


<!-- 引用全站js -->
<script src="${ctx}/js/push.js"></script><script src="${ctx}/js/hm.js"></script>

<script type="text/javascript" src="${ctx}/js/get_num.js"></script>
<script type="text/javascript" src="${ctx}/js/recipe_navlist.js"></script>
<script type="text/javascript">	
msc.goTop.init();
msc.user.init();
$("img.imgLoad").imgLoad();
//搜索
$("#search").click(function(){var q=$("#q").val().replace(/\s+/g,"").replace("　","");window.location.href='https://home.meishichina.com/search/'+(q==""?'':q+'/')});$("#q").keydown(function(e){if(e.keyCode==13)$("#search").click()});
</script>
<div class="fixed-footer" style="left: 1400.5px; right: auto; bottom: 10px;"><a href="${ctx }/javascript:;" title="点击返回页面顶部" onclick="window.scrollTo(0,0);" class="fixed-footer-go" style="display: none;">
</a><div class="fixed-footer-weixin"><div class="fixed-footer-weixin-inner"><span>厨色手机客户端</span></div></div></div>
<script src="${ctx}/images/cookbook/slider2.js" type="text/javascript"></script>
<script type="text/javascript">
var sudoSlider = $("#home_index_slider").sudoSlider({speed:600,slideCount:3,movecount:3,prevHtml:'<a class="prevBtn" href="${ctx }/javascript:void(0);"><i>&nbsp;</i></a>',nextHtml:'<a class="nextBtn" href="${ctx }/javascript:void(0);"><i>&nbsp;</i></a>',continuous: true});


$(window).scroll(function() {
		var omng = $('#recipeindex_info_wrap').offset();
		var jtl = $('.recipe_index_n10').offset();



		if (omng.top < $(document).scrollTop() + 40) {
		$('#recipeindex_info_wrap').css({
position: 'fixed',
top:40,
'z-index':1111,
left:omng.left
})
		} else if (omng.top < jtl.top + 75  ) {
		$("#recipeindex_info_wrap").css({
position: 'static' 
})
		}

		});

$("#recipeindex_info_wrap a").click(function(){
		if($(this).parent().hasClass('on'))
		return false;
		else{
		$("#recipeindex_info_wrap h3").removeClass('on');
		$(this).parent().addClass('on');
		$("#recipeindex_living ul").removeClass('on').hide();
		$("#recipeindex_living ul:eq("+$(this).parent().index()+")").fadeIn().addClass("on");
		}
		});

$("#recipeindex_living_loading a").click(function(){
		if($(this).hasClass('on')||$(this).hasClass('on2'))
		return false;
		else{
		$(this).addClass("on");

		var classid = $("#recipeindex_info_wrap h3.on a").attr("data"),
		orderby = $("#recipeindex_info_wrap h3.on a").attr("order"),
		page = $("#recipeindex_info_wrap h3.on a").attr("page");

		$.get('/ajax/ajax.php?ac=recipe&op=getMoreDiffStateRecipeList', {
classid:classid,
orderby:orderby,
page:page
},
function(d) {
var i,html='';
if (d.error == 0) {
for(i=0;i<d.data.length;i++)
html+='<li class=""><a title="'+d.data[i]["title"]+'" href="${ctx }/https://home.meishichina.com/recipe-'+d.data[i]["id"]+'.html" target="_blank">'+(d.data[i]["copyright"]==5?'<span class="copyright">独家</span>':'')+'<i><img alt="'+d.data[i]["title"]+'" class="imgLoad" src="${ctx}/'+d.data[i]["mscover"]+'"></i><p>'+d.data[i]["title"]+'</p></a><a title="'+d.data[i]["username"]+'" href="${ctx }/https://home.meishichina.com/space-'+d.data[i]["uid"]+'.html" target="_blank" class="u">'+d.data[i]["username"]+'</a></li>';

$("#recipeindex_living ul.on").append(html);
//$("#recipeindex_living ul li.feed").fadeIn();
//$("#recipeindex_living ul li.feed img.imgLoad").imgLoad();
$("#recipeindex_info_wrap h3.on a").attr("page",parseInt(page)+1);
$("#recipeindex_living_loading a").removeClass("on");
}else if (d.error == -2) {
$("#recipeindex_living_loading a").html("没有了~").removeClass("on").addClass("on2");
}
else{
msc.ui.dialog.error("发生异常，请重试");
$("#recipeindex_living_loading a").removeClass("on");
		}
	},
	"json");


}
});


</script>
<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="${ctx}///hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="${ctx}/https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="${ctx}/http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> 


</body></html>