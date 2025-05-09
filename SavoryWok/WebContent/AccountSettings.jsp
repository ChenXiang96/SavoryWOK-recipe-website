<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Account Profile</title>
<meta name="renderer" content="webkit">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="shortcut icon"
	href="https://static.meishichina.com/v6/img/lib/f.ico">
<link rel="apple-touch-icon"
	href="https://static.meishichina.com/v6/img/lib/wapico.png">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all.css">
<link rel="stylesheet" type="text/css" href="${ctx }/css/all_002.css">

<style>
.mod_right {
	width: 55% !important;
	margin-right: 0 !important;
	padding-right: 0 !important;
	float: left;
	margin-left: 80px !important;
}

.mod_right>* {
	max-width: 100% !important;
	margin-right: 0 !important;
	padding-right: 0 !important;
}

#personal_tagline {
	width: 300px !important;
	max-width: 100% !important;
}

.imgLoad {
	width: 120px !important;
}

#email {
	width: 300px !important;
	max-width: 100% !important;
}

.mod_location {
	margin-left: 200px !important;
}

.account_center_right_banner {
	width: 18%;
	float: left;
	margin-left: 10%;
	margin-top: 50px;
	position: sticky;
	top: 100px;
}

.inputS {
	opacity: 0;
	position: absolute;
	z-index: -1;
}

.custom-file-upload {
	display: inline-block;
	padding: 6px 12px;
	background: #32CD32;
	color: white !important;
	border-radius: 4px;
	cursor: pointer;
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

					<li><a class="on"
						href="${ctx}/center/zhanghu?uid=${user.uid}">Account<br>Settings
					</a></li>
				</ul>
			</div>

		</div>


		<div class="mod_right">

			<div id="mod_location">
				<div class="mod_location clear">

					<div class="left">
						<a href="${ctx }/center.jsp" class="on">Your Profile</a> <a
							href="${ctx }/ChangePassword.jsp">Change Password</a>
					</div>

				</div>
			</div>


			<form
				action="${ctx }/center/update?uid=${user.uid}&t=<%=System.currentTimeMillis()%>"
				id="J_form" enctype="multipart/form-data" method="post">

				<div class="mr_edit mr_edit_center clear">
					<ul>


						<li><label>Your Avatar</label><br> <img class="imgLoad"
							src="${not empty user.uimage ? ctx.concat(user.uimage) : ctx.concat('/js/n.jpg')}"
							width="120" height="120"><br>
							<div
								style="display: flex; align-items: center; gap: 10px; margin-top: 8px">
								<label class="custom-file-upload"> <input
									name="avatarpic" class="inputS" type="file"
									onchange="showFileName(this)"> Choose images
								</label> <span id="file-name" style="color: #666">No Files Chosen</span>
							</div></li>



						<li><label>E-mail</label><br> <input name="email"
							class="inputM" id="email" type="text" value="${user.email}">
						</li>

						<li><label>Say Something About You</label><br> <input
							name="personal_tagline" class="inputL" id="personal_tagline"
							type="text" value="${user.gexingqianming}"> <input
							name="dob" class="" value="5574963549" type="hidden"> <input
							name="uid" id="uid" class="" value="${user.uid}" type="hidden">
						</li>


					</ul>

					<input name="save_submit" value="Update Profile" class="btn1"
						type="submit">
				</div>

				<div class="mr_edit mr_edit_fixed clear">
					<ul>



					</ul>
				</div>
			</form>





		</div>
	

		<div class="account_center_right_banner">
			<a title="厨色客户端" href="" target="_blank"> <img alt=""
				src="${pageContext.request.contextPath}/Banner-images/Account_setting_banner.jpg"
				height=500
				style="border-radius: 8px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.4);">
			</a>
		</div>
	</div>

	<%@ include file="MainFooter.jsp"%>
	<script
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/push.js"></script>
	<script
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/hm.js"></script>
	<script type="text/javascript"
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/all.js"></script>
	<script type="text/javascript">
		msc.user.init();
		$("img.imgLoad").imgLoad();
	</script>



	<script type="text/javascript"
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-tools-region.js"></script>
	<script type="text/javascript"
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-tools-region-data.js"></script>
	<script type="text/javascript"
		src="${ctx}/%E4%B8%AA%E4%BA%BA%E8%B5%84%E6%96%99%20-%20%E7%BE%8E%E9%A3%9F%E5%A4%A9%E4%B8%8B_files/msc-ui-select.js"></script>
	<script type="text/javascript">
		new msc.tools.region({
			province : "#J_birthprovince",
			city : "#J_birthcity",
			auto : true
		});
		msc.ui.select({
			id : "#J_form select",
			width : function() {
				return this.getAttribute("data-width") || 120;
			},
			defaultValue : true
		});

		$(".things_type1 span").click(function() {
			var id = $(this).attr("data-value");
			$(".things_type1 span").removeClass("on");
			$(this).addClass("on");
			$("#things_type1").val(id);
		});

		$("#J_form")
				.submit(
						function() {
							if ($("#J_birthprovince").val()
									&& $("#J_birthcity").val() === 'Please select city') {
								msc.ui.dialog.error('Incomplete address');
							} else if ($("#J_email").val()
									&& !/^[0-9a-z_][_.0-9a-z-]{0,31}@([0-9a-z][0-9a-z-]{0,30}\.){1,4}[a-z]{2,4}$/
											.test($("#J_email").val())) {
								msc.ui.dialog.error('The email address format is incorrect');
								$("#J_email").focus();
							} else if ($("#J_sign").val().length > 30) {
								msc.ui.dialog.error('Maximum of 30 characters');
								$("#J_email").focus();
							} else {
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
			hm.src = "${ctx}///hm.baidu.com/hm.js?fb9cd9dcdda23cee0c7357db9be24acb";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s)
		})();
		(function() {
			var bp = document.createElement("script");
			var curProtocol = window.location.protocol.split(":")[0];
			if (curProtocol === "https") {
				bp.src = "${ctx}/https://zz.bdstatic.com/linksubmit/push.js"
			} else {
				bp.src = "${ctx}/http://push.zhanzhang.baidu.com/push.js"
			}
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(bp, s)
		})();
	</script>
	<script>
function showFileName(input) {
    const fileNameSpan = document.getElementById('file-name');
    fileNameSpan.textContent = input.files[0] 
        ? input.files[0].name 
        : "No Files Chosen";
}
</script>



</body>
</html>