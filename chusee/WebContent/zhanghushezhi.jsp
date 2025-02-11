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
<label>头像</label><br>

<img class="imgLoad" src="${not empty user.uimage ? ctx.concat(user.uimage) : ctx.concat('/js/n.jpg')}" data-src="${ctx}/https://i5.meishichina.com/data/avatar/010/91/22/91_avatar_big.jpg?x-oss-process=style/c120&amp;v=1527728841" width="120" height="120"><br><input name="avatarpic" class="inputS" type="file">
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