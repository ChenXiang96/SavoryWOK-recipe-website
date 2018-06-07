<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发布新话题 - 厨色</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="" />
<link rel="shortcut icon" href="https://static.meishichina.com/v6/img/lib/f.ico"/>
<link rel="apple-touch-icon" href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/center/all.css?v1=2017-08-17">
<link rel="stylesheet" type="text/css" href="https://static.meishichina.com/v6/css/app/center/center_pai.css?v1=2017-10-12">
</head>
<body>

<!-- 主框架 -->
<div class="w_main clear">

 <!-- 右侧 -->
<div class="mod_right">

<div id="mod_location">
<div class="mod_location clear">

<div class="left">
<a href="https://member.meishichina.com/center/my_pai_list/" title="回到我的话题" class="return"> </a>
发布新话题
</div>
</div>
</div>


<form action="topic/test" id="J_form" enctype="multipart/form-data" method="post">
<div class="mr_edit mr_edit_center clear">
	<ul>
		<li class="low_tip">您的浏览器版本太低，无法使用新版发布话题，请升级。 <a href="#" target="_blank">点击进入老版编辑页</a></li>
		<li>
			<label class="must">上传图片（最多9张）</label><br>
			<div class="J_upload">上传图片
				<input multiple class="J_img" id="J_m_cover" accept="image/png,image/gif,image/jpeg"  type="file">
			</div>
			<span class="img_status" id="multi_cover_status"> </span>
			<div id="cover" class="clear">
			</div>
		</li>
		
		<li>
			<label>加个标题（非必填）</label><br>
			<input id="com_title" name="title" class="inputM" type="text">
		</li>
		
		
		
		<li>
			<label class="must">写话题</label><br>
			<textarea id="J_message" name="message" style="height:300px;"></textarea>
		</li>
	</ul>

</div>

<div class="mr_edit mr_edit_fixed clear">
<ul>
<li>
<label>发表到小组</label><br>
<input type="hidden" id="things_type1" name="classify" value="1">
<div class="things_type1 clear">
<span data-value="1" class="on">&nbsp;美食随手拍&nbsp;</span>
<span data-value="2">&nbsp;烘焙圈&nbsp;</span>
<span data-value="3">&nbsp;妈妈派&nbsp;</span>
<span data-value="4">&nbsp;饮食健康&nbsp;</span>
<span data-value="5">&nbsp;厨艺交流&nbsp;</span>
<span data-value="6">&nbsp;最美之物&nbsp;</span>
<span data-value="7">&nbsp;美好时光&nbsp;</span>
<span data-value="99">&nbsp;帮助与反馈&nbsp;</span>
</div>
</li>





<li> <br>
<script async type="text/javascript" src="//api.geetest.com/get.php?gt=a7ffd11a343b1150f6e20c6a0227c9df"></script>
</li>
 

</ul>
<input class="btn1" name="submit" type="submit" value="发布话题">
</div>

</form>

<form  id="form" >
	<input type="hidden" name="policy" value="eyJleHBpcmF0aW9uIjoiMjAxOC0wNi0wN1QwODoxNzo1NVoiLCJjb25kaXRpb25zIjpbWyJjb250ZW50LWxlbmd0aC1yYW5nZSIsMCwxMDQ4NTc2MDAwXSxbInN0YXJ0cy13aXRoIiwiJGtleSIsImF0dGFjaG1lbnRcL3BhaVwvMjAxOFwvMDZcLzA3Il1dfQ==">
	<input type="hidden" name="signature" value="xJDkkpOqL9QPIy+fbWINzqPyGEc=">
	<input type="hidden" name="OSSAccessKeyId" value="M4bWNA1UuKfM7hQR">
	<input type="hidden" name="callback" value="eyJjYWxsYmFja1VybCI6Imh0dHBzOlwvXC9tZW1iZXIubWVpc2hpY2hpbmEuY29tXC9hamF4XC9hamF4LnBocD9hYz1hbGl5dW5vc3Mmb3A9Y2FsbGJhY2tvc3MiLCJjYWxsYmFja0JvZHkiOiJ1cmw9JHtvYmplY3R9JnNpemU9JHtzaXplfSZtaW1lVHlwZT0ke21pbWVUeXBlfSZoZWlnaHQ9JHtpbWFnZUluZm8uaGVpZ2h0fSZ3aWR0aD0ke2ltYWdlSW5mby53aWR0aH0iLCJjYWxsYmFja0JvZHlUeXBlIjoiYXBwbGljYXRpb25cL3gtd3d3LWZvcm0tdXJsZW5jb2RlZCJ9">
</form>
<input type="hidden" id="oss_key" value="attachment/pai/2018/06/07/20180607">
<input type="hidden" id="user_id" value="10922939">


		</div><!-- 右侧结束 -->
</div>
<script type="text/javascript" src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
<script type="text/javascript">
msc.user.init();
$("img.imgLoad").imgLoad();
</script>
 <script type="text/javascript" src="//static.meishichina.com/v6/js/lib/jquery.dragsort.js"></script>
<script type="text/javascript" src="//static.meishichina.com/v6/js/app/center/center_pai2.js?v1=2018-04-10"></script>

<script>
$("li.top_bar_more").hoverDelay(function(){$("li.top_bar_more div").show()},function(){$("li.top_bar_more div").hide()},200,200);var _hmt=_hmt||[];(function(){var hm=document.createElement("script");hm.src="//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(hm,s)})();
(function(){var bp=document.createElement("script");var curProtocol=window.location.protocol.split(":")[0];if(curProtocol==="https"){bp.src="https://zz.bdstatic.com/linksubmit/push.js"}else{bp.src="http://push.zhanzhang.baidu.com/push.js"}var s=document.getElementsByTagName("script")[0];s.parentNode.insertBefore(bp,s)})();
</script>
</body>
</html>

    