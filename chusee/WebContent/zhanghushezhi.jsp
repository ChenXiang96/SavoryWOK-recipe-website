<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>个人资料 - 厨色</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all_002.css">
</head>
<body>
<div class="top-bar" id="J_top_bar">
<ul class="bar-left left">
<li><a title="厨色" href="https://www.meishichina.com/" target="_blank" class="top_bar_logo"><i>厨色</i>首页</a></li>
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

<a href="https://www.meishichina.com/Mobile/" target="_blank" class="nr3"><img src="${ctx}/images/zhanghushezhi/nr3.png" width="18" height="18">客户端<img src="${ctx}/images/zhanghushezhi/msc_app.png" class="code">
</a>

<div class="right" id="J_top_bar_user"><ul class="clear bar-info right bar-isLogin" id="J_barUser"><li class="bar-tips bar-sign-tips" id="J_barSignTips"><i class="arrow"></i><b class="arrow"></b><a href="javascript:;" class="close">×</a>签到即可参加 0元购</li><li class="bar-tips bar-message-tips" id="J_barMessageTips"><i class="arrow"></i><b class="arrow"></b><a href="javascript:;" class="close">×</a><p><span></span>条新消息, <a href="https://member.meishichina.com/center/privately_list/" class="J_tips_look" target="_blank">查看</a></p><p><span></span>条通知, <a href="https://member.meishichina.com/center/my_notice_list/" class="J_tips_look" target="_blank">查看</a></p></li><li class="bar-item bar-loading images-loading bar-link"></li><li class="bar-link bar-item bar-reg"><a href="https://member.meishichina.com/user/register/" target="_blank">注册</a></li><li class="bar-link bar-item bar-login"><a href="https://member.meishichina.com/user/login/" target="_blank">登录</a></li><li class="bar-login J_down bar-item"><div class="bar-text"><a href="https://home.meishichina.com/meishi2.php?ac=qqlogin&amp;op=login"><img src="${ctx}/images/zhanghushezhi/nir1.png" width="18" height="18">QQ登录</a></div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="https://home.meishichina.com/meishi2.php?ac=sinalogin"><img src="${ctx}/images/zhanghushezhi/nir2.png" width="18" height="18">微博登录</a></li><li><a href="https://home.meishichina.com/meishi2.php?ac=wechatlogin&amp;op=login"><img src="${ctx}/images/zhanghushezhi/nir3.png" width="18" height="18">微信登录</a></li></ul></div></li><li class="bar-center J_down bar-item"><div class="bar-text">会员中心<i class="arrow"></i></div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="#" class="J_barLogin">会员中心</a></li><li><a href="#" class="J_barLogin">我的主页</a></li></ul></div></li><li class="bar-user J_down bar-item"><div class="bar-text"><div class="bar-text-userName" id="J_barUserName"><a href="https://home.meishichina.com/space-10912291.html" target="_blank" title="粒小米。的主页"><img alt="粒小米。" class="imgLoad" src="${ctx}/js/n.jpg" data-src="${ctx}/https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c80&amp;v=2018053109" width="30" height="30"><span>1</span></a></div><i class="arrow"></i></div><div class="bar-box"><ul><li class="bar-box-item-0 bar-box-item-fav"><a title="我的收藏" href="https://member.meishichina.com/center/my_fav_recipe/" target="_blank">收藏</a></li><li class="bar-box-item-1"><a title="管理中心" href="https://member.meishichina.com/center/" target="_blank">管理</a></li><li class="bar-box-item-2"><a title="私信" href="https://member.meishichina.com/center/privately_list/" target="_blank" id="privately_list">私信<span></span></a></li><li class="bar-box-item-3"><a title="通知" href="https://member.meishichina.com/center/my_notice_list/" target="_blank" id="my_notice_list">通知<span>(1)</span></a></li><li class="bar-box-item-4"><a title="退出" href="#" class="J_barExit">退出</a></li></ul></div></li><li class="bar-add J_down bar-item"><div class="bar-text"><img src="${ctx}/images/zhanghushezhi/nr1.png" width="18" height="18">发布</div><div class="bar-box"><ul><li class="bar-box-item-0"><a href="https://member.meishichina.com/center/recipe-add/" target="_blank" class="J_barLogin">发菜谱</a></li><li class="bar-box-item-1"><a href="https://member.meishichina.com/center/pai-add/" target="_blank" class="J_barLogin">发话题</a></li><li class="bar-box-item-2"><a href="https://member.meishichina.com/center/blog-add/" target="_blank" class="J_barLogin">发日志</a></li></ul></div></li><li class="bar-item bar-sign J_down" id="J_barSign"><a href="javascript:void(0);" class="bar-sign-text J_barLogin"><img src="${ctx}/images/zhanghushezhi/nr2.png" width="18" height="18">签到有礼</a><div class="bar-sign-box"><h3>签到 <b>0</b> 天</h3><p><b>5</b></p><a target="_blank" href="https://home.meishichina.com/event/lottery/">去抽奖</a></div></li></ul></div>				
</div>

	<!-- 主框架 -->
<div class="w_main clear">

<div class="mod_left">
<div class="menu_wrap">
<ul>
<li>
<a href="https://member.meishichina.com/center/">会员<br>中心</a>
</li>

<li>
<a class="on" href="https://member.meishichina.com/center/my_settings_profile/">账户<br>设置</a>
</li>
</ul>
</div>

</div>


 <!-- 右侧 -->
<div class="mod_right">

<div id="mod_location">
<div class="mod_location clear">

<div class="left">
<a href="${ctx }/center.jsp" class="on">个人资料</a>
<a href="${ctx }/xiugaimima.jsp">修改密码</a>
</div>

</div>
</div>


<form action="${ctx }/center/update?uid=${user.uid}" id="J_form" enctype="multipart/form-data" method="post">
<div class="mr_edit mr_edit_center clear">
<ul>

<li>
<!-- label>头像</label><br-->
<img class="imgLoad" src="${ctx}/js/n.jpg" data-src="${ctx}/https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c120&amp;v=1527728841" width="120" height="120"><br><input name="avatarpic" class="inputS" type="file">

</li>






<li>
<label>电子邮箱</label><br>
<input name="email" class="inputM" id="email" type="text" value="${user.email}">
</li>

<li><label>个人签名</label><br>
<input name="gexingqianming" class="inputL" id="gexingqianming" type="text" value="${user.gexingqianming}">
<input name="dob" class="" value="5574963549" type="hidden">
<input name="uid" id="uid" class="" value="${user.uid}" type="hidden">
</li>


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
<script src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/push.js"></script><script src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/hm.js"></script><script type="text/javascript" src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/all.js"></script>
<script type="text/javascript">
msc.user.init();
$("img.imgLoad").imgLoad();
</script>



<script type="text/javascript" src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-tools-region.js"></script>
<script type="text/javascript" src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-tools-region-data.js"></script>
<script type="text/javascript" src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-ui-select.js"></script>
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
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="${ctx}///hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="${ctx}/https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="${ctx}/http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script> 


</body></html>