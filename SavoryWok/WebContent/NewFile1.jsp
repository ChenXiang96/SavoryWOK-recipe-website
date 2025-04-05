
	
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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人资料 - 美食天下</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="" />
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico"/>
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/center/all.css?v1=2017-08-17">
</head>
<body>
<div class="top-bar" id="J_top_bar">
<ul class="bar-left left">
<li><a title="美食天下" href="https://www.meishichina.com/" target="_blank" class="top_bar_logo"><i>美食天下</i>首页</a></li>
      <li> <a title="菜谱" href="https://home.meishichina.com/recipe.html" target="_blank">菜谱</a></li>
      <li> <a title="食材" href="https://www.meishichina.com/YuanLiao/" target="_blank">食材</a></li>
	  <li> <a title="珍选" href="https://zhen.meishichina.com/" target="_blank">珍选</a></li>
	  <li> <a title="健康" href="https://www.meishichina.com/Health/" target="_blank">健康</a></li>
	  <li> <a title="专题" href="https://www.meishichina.com/mofang/" target="_blank">专题</a></li>
	  <li> <a title="社区" href="https://home.meishichina.com/" target="_blank">社区</a></li>
	  <li> <a title="话题" href="https://home.meishichina.com/pai.html" target="_blank">话题</a></li>
      <li> <a title="活动" href="https://home.meishichina.com/event/" target="_blank">活动</a></li>
	  <li> <a title="搜索" href="https://home.meishichina.com/search/" target="_blank">搜索</a></li>
	  <li class="top_bar_more"><i></i>
	  <div>
	  <a title="烘焙" href="https://hongbei.meishichina.com/" target="_blank">烘焙</a>
	  <a title="妈妈派" href="https://mamapai.meishichina.com/" target="_blank">妈妈派</a>
	  </div>
	  </li>
    </ul>

<a href="https://www.meishichina.com/Mobile/" target="_blank" class="nr3"><img src="//static.meishichina.com/v6/img/lib/nr3.png" width=18 height=18>客户端<img src="//static.meishichina.com/v6/img/model/msc_app.png" class="code">
</a>

<div class="right" id="J_top_bar_user"></div>				
</div>

	<!-- 主框架 -->
<div class="w_main clear">

<div class="mod_left">
<div class="menu_wrap">
<ul>
<li>
<a  href="https://member.meishichina.com/center/">会员<br>中心</a>
</li>
<li>
<a  href="https://member.meishichina.com/center/my_recipe_me/">菜谱</a>
</li>
<li>
<a  href="https://member.meishichina.com/center/my_pai_list/">话题</a>
</li>
<li>
<a   href="https://member.meishichina.com/center/my_blog_list/">日志</a>
</li>
<li>
<a  href="https://member.meishichina.com/center/my_collect_me/">菜单</a>
</li>
<li>
<a  href="https://member.meishichina.com/center/my_fav_recipe/">收藏</a>
</li>
<li>
<a class=on href="https://member.meishichina.com/center/my_settings_profile/">账户<br>设置</a>
</li>
</ul>
</div>

</div>


 <!-- 右侧 -->
<div class="mod_right">

<div id="mod_location">
<div class="mod_location clear">

<div class="left">
<a href="https://member.meishichina.com/center/my_settings_profile/" class=on>个人资料</a>
<a href="https://member.meishichina.com/center/my_settings_address/" >收货地址</a>
<a href="https://member.meishichina.com/center/my_settings_password/" >修改密码</a>
</div>

</div>
</div>

<form action="/center/my_settings_profile/" id="J_form"  enctype="multipart/form-data" method="post">

<div class="mr_edit mr_edit_center clear">
<ul>

<li>
<label>头像</label><br>
<img class="imgLoad" src="//static.meishichina.com/v6/img/blank.gif" data-src="https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c120&v=1529377311" width=120 height=120 /><br><input name="avatarpic" class="inputS" type="file">

</li>


<li>
<label>性别</label><br>
<input type="hidden" id="things_type1" name="sex" value="0">
<div class="things_type1 clear">
<span data-value="1" >&nbsp;&nbsp;男&nbsp;&nbsp;</span>
<span data-value="2" >&nbsp;&nbsp;女&nbsp;&nbsp;</span>
<span data-value="" class="on">&nbsp;保密&nbsp;</span>
</div>
</li>

<li>
<label>家乡</label><br>
<select name="birthprovince" id="J_birthprovince" data-width="100" style="display:none">
<option value=""></option>
</select>

<select name="birthcity" id="J_birthcity" data-width="100" style="display:none">
<option value=""></option>
</select>
</li>

<li>
<label>电子邮箱</label><br>
<input name="email" class="inputM" type="text" id="J_email" value="">
</li>

<li><label>个人签名</label><br>
<input name="sign" class="inputL" type="text" id="J_sign" value="">
</li>
<input name="dob" type="hidden" class="" value="9689923011">
<input name="uiue" type="hidden" class="" value="10912291">

</ul>
<input name="save_submit" value="保存修改" class="btn1" type="submit">
</div>

<div class="mr_edit mr_edit_fixed clear">
<ul>

 

</ul>
</div>

</form>


		</div><!-- 右侧结束 -->
</div>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
<script type="text/javascript">
msc.user.init();
$("img.imgLoad").imgLoad();
</script>



<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-tools-region.js"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-tools-region-data.js"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/msc-ui-select.js"></script>
<script type="text/javascript">
new msc.tools.region({
        province: "#J_birthprovince",
        city: "#J_birthcity",
        auto: true
    });
msc.ui.select({
        id: "#J_form select",
        width: function() {
            return this.getAttribute("data-width") || 120;
        },
        defaultValue: true
    });

$(".things_type1 span").click(function(){
var id=$(this).attr("data-value");
$(".things_type1 span").removeClass("on");
$(this).addClass("on");
$("#things_type1").val(id);
}
);


$("#J_form").submit(function(){
if($("#J_birthprovince").val() && $("#J_birthcity").val() === '请选择市'){
msc.ui.dialog.error('家乡地址不完整');
}
else if($("#J_email").val() && !/^[0-9a-z_][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\.){1,4}[a-z]{2,4}$/.test($("#J_email").val())){
msc.ui.dialog.error('电子邮箱格式不正确');
$("#J_email").focus();
}
else if($("#J_sign").val().length>30){
msc.ui.dialog.error('个人签名最多输入30字符');
$("#J_email").focus();
}
else{
msc.ui.dialog.loading();
return true;
}

return false;
});
</script>
<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> </body>
</html>

