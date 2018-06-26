<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>发布新话题 - 美食天下</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath}/css/all.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath}/css/all_002.css">
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath}/css/center_pai.css">
<link rel="stylesheet"
	href="${ pageContext.request.contextPath}/css/style_https.css">
	
<style>
.mr_edit_fixed {

    position: absolute;
 
}
#mod_location {

    position: absolute;


}
.mod_right {
    padding: 40px 20px 40px 130px;
    margin-left: 80px;
}
#mod_location {
    position: absolute; 
    margin-left: 80px;
}
.footer-area {
    padding: 10px 0;
    margin-right: 130px;
}
</style>
</head>
<body>

	<!-- 主框架 -->
	<div class="w_main clear">
<%@ include file="menu3.jsp" %>


		<!-- 右侧 -->
		<div class="mod_right">

			<div id="mod_location">
				<div class="mod_location clear">

					<div class="left">
						<a href="https://member.meishichina.com/center/my_pai_list/"
							title="回到我的话题" class="return"> </a> 发布新话题
					</div>
				</div>
			</div>
			
			<form action="${ pageContext.request.contextPath}/topicupdate?uid=${user.uid}"
				id="J_form" enctype="multipart/form-data" method="post">
				<div class="mr_edit mr_edit_center clear">
					<ul>
						<li>
							<label class="must">上传图片（最多9张）</label><br>
							<div class="J_upload">
							
								<input name ="uploadfile" multiple="" class="J_img" id="uploadfile"
									accept="image/png,image/gif,image/jpeg" type="file">
							</div> 
								<span class="img_status" id="multi_cover_status"> </span>
								<div id="cover" class="clear"></div></li>
								<li><label>加个标题（非必填）</label><br> <input id="title" name="title" class="inputM" type="text"></li>
								<li><label class="must">写话题</label><br> <textarea id="message" name="message" style="height: 300px;"></textarea>
						</li>
					</ul>
				</div>
				<div class="mr_edit mr_edit_fixed clear">
					<ul>
                    	<%-- <li> <br>
							<script src="${ pageContext.request.contextPath}/js/push.js"></script><script src="${ pageContext.request.contextPath}/js/hm.js"></script><script async="" type="text/javascript" src="/get.php"></script><div style="touch-action: none;" class="gt_holder gt_float"><div class="gt_widget gt_hide"><div class="gt_holder_top"></div><div class="gt_box_holder" style="height: 116px;"><div class="gt_box"><div class="gt_loading"><div class="gt_loading_icon"></div><div class="gt_loading_text">加载中...</div></div><a class="gt_bg gt_show" style="background-image: none;"><div class="gt_cut_bg gt_show"><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -157px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -145px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -265px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -277px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -181px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -169px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -241px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -253px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -109px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -97px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -289px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -301px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -85px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -73px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -25px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -37px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -13px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -1px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -121px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -133px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -61px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -49px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -217px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -229px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -205px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -193px -58px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -145px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -157px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -277px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -265px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -169px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -181px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -253px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -241px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -97px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -109px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -301px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -289px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -73px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -85px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -37px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -25px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -1px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -13px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -133px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -121px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -49px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -61px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -229px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -217px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -193px 0px;"></div><div class="gt_cut_bg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/bg/b56cc47cf.jpg&quot;); background-position: -205px 0px;"></div></div><div class="gt_slice gt_show" style="left: 0px; background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/slice/b56cc47cf.png&quot;); width: 64px; height: 53px; top: 0px;"></div></a><a class="gt_fullbg gt_show" style="cursor: default; background-image: none;"><div class="gt_cut_fullbg gt_show"><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -157px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -145px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -265px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -277px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -181px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -169px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -241px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -253px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -109px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -97px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -289px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -301px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -85px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -73px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -25px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -37px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -13px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -1px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -121px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -133px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -61px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -49px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -217px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -229px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -205px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -193px -58px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -145px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -157px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -277px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -265px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -169px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -181px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -253px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -241px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -97px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -109px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -301px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -289px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -73px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -85px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -37px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -25px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -1px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -13px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -133px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -121px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -49px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -61px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -229px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -217px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -193px 0px;"></div><div class="gt_cut_fullbg_slice" style="background-image: url(&quot;https://static.geetest.com/pictures/gt/5629ed821/5629ed821.jpg&quot;); background-position: -205px 0px;"></div></div><div class="gt_flash" style="height: 94px;"></div><div class="gt_ie_success"></div></a><a class="gt_curtain gt_hide" style="background-image: none;"><div class="gt_curtain_bg_wrap"><div class="gt_curtain_bg"><div class="gt_cut_curtain"></div></div></div><div class="gt_curtain_button gt_hide"></div></a><a class="gt_box_tips" style="display: none;"></a></div><div class="gt_info"><div class="gt_info_tip"><div class="gt_info_icon"></div><div class="gt_info_text"></div></div></div></div><div class="gt_bottom"><a class="gt_refresh_button"><div class="gt_refresh_tips">刷新验证</div></a><a class="gt_help_button" href="http://www.geetest.com/contact#report" target="_blank"><div class="gt_help_tips">帮助反馈</div></a><a class="gt_logo_button" href="http://www.geetest.com/first_page" target="_blank"></a></div></div><div class="gt_input"><input class="geetest_challenge" name="geetest_challenge" type="hidden"><input class="geetest_validate" name="geetest_validate" type="hidden"><input class="geetest_seccode" name="geetest_seccode" type="hidden"></div><div class="gt_slider"><div class="gt_guide_tip gt_show">按住左边滑块，拖动完成上方拼图</div><div class="gt_slider_knob gt_show" style="left: 0px;"></div><div class="gt_curtain_tip gt_hide">点击上图按钮并沿道路拖动到终点处</div><div class="gt_curtain_knob gt_hide">移动到此开始验证</div><div class="gt_ajax_tip gt_ready"></div></div></div>
						</li> --%>
					</ul>
					<input class="btn1" name="submit" value="发布话题" type="submit">
				</div>
			</form>

			<form id="form">
				<input name="policy"
					value="eyJleHBpcmF0aW9uIjoiMjAxOC0wNi0wN1QwODoyMjoxNloiLCJjb25kaXRpb25zIjpbWyJjb250ZW50LWxlbmd0aC1yYW5nZSIsMCwxMDQ4NTc2MDAwXSxbInN0YXJ0cy13aXRoIiwiJGtleSIsImF0dGFjaG1lbnRcL3BhaVwvMjAxOFwvMDZcLzA3Il1dfQ=="
					type="hidden"> <input name="signature"
					value="8MrrpgxsB6BC7/xsPH3+Q4qJ4Kc=" type="hidden"> <input
					name="OSSAccessKeyId" value="M4bWNA1UuKfM7hQR" type="hidden">
				<input name="callback"
					value="eyJjYWxsYmFja1VybCI6Imh0dHBzOlwvXC9tZW1iZXIubWVpc2hpY2hpbmEuY29tXC9hamF4XC9hamF4LnBocD9hYz1hbGl5dW5vc3Mmb3A9Y2FsbGJhY2tvc3MiLCJjYWxsYmFja0JvZHkiOiJ1cmw9JHtvYmplY3R9JnNpemU9JHtzaXplfSZtaW1lVHlwZT0ke21pbWVUeXBlfSZoZWlnaHQ9JHtpbWFnZUluZm8uaGVpZ2h0fSZ3aWR0aD0ke2ltYWdlSW5mby53aWR0aH0iLCJjYWxsYmFja0JvZHlUeXBlIjoiYXBwbGljYXRpb25cL3gtd3d3LWZvcm0tdXJsZW5jb2RlZCJ9"
					type="hidden">
			</form>
			<input id="oss_key" value="attachment/pai/2018/06/07/20180607"
				type="hidden"> <input id="user_id" value="10666843"
				type="hidden">
				<%@ include file="footer3.jsp" %>
				


		</div>
		<!-- 右侧结束 -->
	</div>
	<script type="text/javascript"
		src="${ pageContext.request.contextPath}/js/all.js"></script>
	<script type="text/javascript">
		msc.user.init();
		$("img.imgLoad").imgLoad();
	</script>  
	<script type="text/javascript"
		src="${ pageContext.request.contextPath}/js/jquery.js"></script>
	<script type="text/javascript"
		src="${ pageContext.request.contextPath}/js/center_pai2.js"></script>

	<script>
		$("li.top_bar_more").hoverDelay(function() {
			$("li.top_bar_more div").show()
		}, function() {
			$("li.top_bar_more div").hide()
		}, 200, 200);
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		(function() {
			var bp = document.createElement("script");
			var curProtocol = window.location.protocol.split(":")[0];
			if (curProtocol === "https") {
				bp.src = "https://zz.bdstatic.com/linksubmit/push.js"
			} else {
				bp.src = "http://push.zhanzhang.baidu.com/push.js"
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s)
		})();
	</script>



	<span
		style="position: fixed; bottom: 0px; left: 0px; background-color: rgba(219, 219, 182, 0.5); color: black;"
		id="statusbar"></span>
</body>
</html>