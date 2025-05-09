<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Change Password</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="" />
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico" />
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png" />
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/lib/all.css?v1=9">
<link rel="stylesheet" type="text/css"
	href="https://static.meishichina.com/v6/css/app/center/all.css?v1=2017-08-17">

<style>

.mod_right {
	width: 900px !important;
	margin-right: 0 !important;
	padding-right: 0 !important;
	float: left;

}

.mod_right>* {
	max-width: 100% !important;
	margin-right: 0 !important;
	padding-right: 0 !important;
}
.inputS{
  width: 250px !important;

}
.account_center_right_banner {
	width: 18%;
	float: left;
	margin-left: 10%;
	margin-top: 50px;
	position: sticky;
	top: 100px;
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
					<li><a href="${ctx}/center/get?uid=${user.uid}">My<br>Activity
					</a></li>

					<li><a class=on
						href="${ctx}/center/zhanghu?uid=${user.uid}">Account<br>Settings
					</a></li>
				</ul>
			</div>

		</div>


		<div class="mod_right">

			<div id="mod_location">
				<div class="mod_location clear">

					<div class="left">
						<a href="${ctx }/center/zhanghu">Your Profile</a> <a
							href="${ctx }/xiugaimima.jsp" class=on>Change Password</a>
					</div>

				</div>
			</div>

			<form action="${ctx }/center/update" id="J_form"
				enctype="multipart/form-data" method="post">

				<div class="mr_edit mr_edit_center clear">
					<ul>
						<li><label>New Password</label><br> <input
							class="inputS" id="J_password_new" name="newpassword1"
							type="password" autocomplete="off"
							placeholder="Must be 7–14 characters"></li>

						<li><label>Confirm Password</label><br> <input
							class="inputS" id="J_password_new_2" name="newpassword2"
							type="password" autocomplete="off"></li>



					</ul>
					<input name="submit" value="Update Password" class="btn1" type="submit">

				</div>

				<div class="mr_edit mr_edit_fixed clear">
					<ul>



					</ul>
				</div>

			</form>


		</div>

		<div class="account_center_right_banner">
			<a title="Account_setting_banner" href="" target="_blank"> <img alt=""
				src="${pageContext.request.contextPath}/Banner-images/Account_setting_banner.jpg"
				height=500
				style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">
			</a>
		</div>
	</div>
	<%@ include file="MainFooter.jsp"%>
	<script type="text/javascript"
		src="//static.meishichina.com/v6/js/lib/all.js?v1=20170218"></script>
	<script type="text/javascript">
		msc.user.init();
		$("img.imgLoad").imgLoad();
	</script>



	<script type="text/javascript">
		$("#J_form").submit(
				function() {

					if ($('#J_password').length > 0
							&& $('#J_password').val() == '') {
						msc.ui.dialog.error('Please enter your current password');
						$("#J_password").focus();
					}

					else if ($('#J_password_new').val() == '') {
						msc.ui.dialog.error('Please enter new password');
						$('#J_password_new').focus();
					}

					else if ($('#J_password_new').val().length < 7
							|| $('#J_password_new').val().length > 14) {
						msc.ui.dialog.error('Password must be 7-14 characters');
						$('#J_password_new').val('').focus();
					}

					else if ($('#J_password_new_2').val() == '') {
						msc.ui.dialog.error('Please confirm your password');
						$('#J_password_new_2').focus();
					}

					else if ($('#J_password_new').val() != $(
							'#J_password_new_2').val()) {
						msc.ui.dialog.error('Confirm password is different');
					}

					else {
						msc.ui.dialog.loading();
						return true;
					}

					return false;
				});
	</script>
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
</body>
</html>

