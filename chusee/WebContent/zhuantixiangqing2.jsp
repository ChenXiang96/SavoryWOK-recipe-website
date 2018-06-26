<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>不一样的大排档_专题_美食天下</title>
<meta name="keywords" content="不一样的大排档,大排档,大排档小吃,大排档美食,烧烤,肉串,小龙虾" />
<meta name="description" content="大排档,大排档小吃,大排档美食,烧烤,肉串,小龙虾" />
<meta name="renderer" content="webkit">
<meta http-equiv="mobile-agent" content="format=xhtml; url=https://m.meishichina.com/mofang/dapaidang/">
<link rel="alternate" media="only screen and (max-width: 640px)" href="https://m.meishichina.com/mofang/dapaidang/">
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico"/>
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/mofang/mofang3.css?v1=2017-08-17">
<style>
.sliderh {
    width: 100%;
    height: 350px;
    clear: both;
    position: relative;
    overflow: hidden;
    margin-top: 0px;
}

</style>
</head>

<body>






  <%@ include file="menu3.jsp" %>

<div class="sliderh">
<div id="sliderh" style="width:100%">
<ul>
<li class="show1" style="width:100%;background:url(https://i3.meishichina.com/attachment/mofang/2018/06/13/2018061315288542096898197577.jpg) no-repeat center"><h1><a href="https://www.meishichina.com/mofang/dapaidang/" title="不一样的大排档" id="mof_h1">不一样的大排档</a></h1></li>
</ul>
</div>
</div>
<div class="msb">
<input type="hidden" id="mof_fcover" value="https://i3.meishichina.com/attachment/mofang/2018/06/11/2018061115287010517948197577.jpg">
<input type="hidden" id="mof_domain" value="dapaidang">
<div class="recipeArction clear">
<p id="mof_desc">
<c:out value="${subject.pdesc }"/>
</p>
<div class="bdsharebuttonbox" id="bdshare">
<a title="分享到新浪微博" href="#" class="bds_tsina" id="bds_tsina" data-cmd="tsina"></a><a title="分享到QQ空间" href="#" class="bds_qzone" id="bds_qzone" data-cmd="qzone"></a><a title="分享到QQ好友" href="#" class="bds_sqq" id="bds_sqq" data-cmd="sqq"></a><a data-cmd="weixin" id="bds_weixin" class="bds_weixin" href="#"></a>
</div>
</div>

<div class="mo">
<h2>
<c:forEach items="${sessionScope.cList2}" var="c">
   <a title="健康首页"   href="${ pageContext.request.contextPath }/findByCaid/<c:out value="${c.caid}"/>/1"  target="_blank">
        <c:out value="${c.caname}"></c:out>
    </a>
</c:forEach>

</h2>
</div>
<p>
<c:out value="${subject.pcontent }"/>
</p>
<div class="msb_list clear">
<ul>
 <c:forEach var="p" items="${subjects}">
<li>
<div>
<a target="_blank" href="${ pageContext.request.contextPath }/findByPid2/<c:out value="${p.pid}"/>">
						<img width="180" height="180" src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>" data-src="${pageContext.request.contextPath}/<c:out value="${p.image}"/>"  class="imgLoad">
<span>羊肉串</span>
</a>
</div>
</li>
</c:forEach>


</ul>
</div>

  <%@ include file="footer3.jsp" %>


<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>

<script type="text/javascript" src="//static.meishichina.com/v6/js/app/mofang/all2.js?v1=1"></script>
<script type="text/javascript">
var inTimer,outTimer;
//绑定鼠标进入事件
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
that.find("div.f").html('<a href="javascript:void(0);" class="f1'+islike+islogin+'" title="喜欢"><i></i></a>').show();
}


}
});
} 
else  
that.find("div.f").show();


}, 150);
});

//绑定鼠标离开事件
$(".pin_list").on("mouseleave","div.c",function(event){
		var that = $(this);
		clearTimeout(inTimer);

		outTimer = setTimeout(function() {
			that.find("div.f").hide();
			}, 100);

		});
//列表喜欢
$(".pin_list").on("click",".f1",function(){
		if($(this).hasClass("on")){
		msc.ui.dialog.error("您已经喜欢过该话题!");
		return false;
		}
		else if($(this).hasClass("nologin")){
		msc.user.login();
		return false;
		}
		else{
		var that =$(this);
		$.post('/ajax/ajax.php?ac=pai&op=add_pai', {
pid:that.parent().attr('data-id')
}, function(e) {
if (e.error === 0) {
msc.ui.dialog.success("添加喜欢成功");
//that.find("b").html(parseInt(that.find("b").html()) + 1);
that.addClass("on");
}
else if(e.error === -1){
msc.ui.dialog.error(e.data);
}
else{
msc.ui.dialog.error('出现异常，请重试');
}

},"json");
}
});
</script>
<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> </body>
</html>