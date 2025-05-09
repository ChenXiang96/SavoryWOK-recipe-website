<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Share a Moment</title>
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
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">
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
	margin-left: 145px;
	margin-top: 20px;
}

.footer-area {
	padding: 10px 0;
	margin-right: 130px;
}

#J_form {
	margin-top: 100px !important;
}

.J_upload input {
	height: 32px;
}

.J_upload {
	display: flex;
	align-items: center;
	gap: 12px;
}

.custom-upload-wrapper {
	position: relative;
	display: inline-flex;
	align-items: center;
	gap: 12px;
	padding: 8px 0;
}

.img_status {
	color: #666;
	font-size: 14px;
	white-space: nowrap;
	line-height: 1.5;
}

.custom-upload-btn {
	background: #4CAF50;
	color: white;
	padding: 8px 16px;
	border-radius: 4px;
	cursor: pointer;
	border: none;
	font-size: 14px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
}

#uploadfile {
	position: absolute;
	left: 0;
	top: 0;
	opacity: 0;
	width: 100%;
	height: 100%;
	cursor: pointer;
}

.footer-info {
	margin-right: 200px;
}
</style>
</head>
<body>


	<div class="w_main clear">
		<%@ include file="MainMenu.jsp"%>



		<div class="mod_right">

			<div id="mod_location">
				<div class="mod_location clear">

					<div class="left">
						<a href="#" title="Share a Moment" class="return"> </a> 
						<span style="font-family: 'Montserrat', 'Helvetica Neue', sans-serif; color: orange; font-weight: bold; font-size: 21px;">Share a Moment</span>
					</div>

				</div>
			</div>

			<form
				action="${ pageContext.request.contextPath}/topicupdate?uid=${user.uid}"
				id="J_form" enctype="multipart/form-data" method="post">
				<div class="mr_edit mr_edit_center clear"
					style="display: flex; justify-content: space-between; align-items: flex-start; margin-left: 60px;">
					<ul style="flex: 1; margin-right: 20px; min-width: 0;">
						<li><label class="must">Add Photos</label><br>

							<div class="J_upload">
								<div class="custom-upload-wrapper">
									<button type="button" class="custom-upload-btn"
										title="Select images (PNG, JPG, GIF)">Choose Images</button>
									<span class="img_status" id="multi_cover_status">No
										files chosen</span> <input name="uploadfile" multiple class="J_img"
										id="uploadfile" accept="image/png,image/gif,image/jpeg"
										type="file" title="Click to select files">
								</div>
							</div>
							<div id="cover" class="clear"></div></li>
						<li><label>Add a Title (Optional)</label><br> <input
							id="title" name="title" class="inputM" type="text"></li>
						<li><label class="must">Describe Your Moment</label><br>
							<textarea id="message" name="message" style="height: 300px;"></textarea>

							<div style="margin-top: 20px; text-align: left;">
								<input class="btn1"
									style="box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);" name="submit"
									value="Post Now" type="submit">
							</div></li>
					</ul>

					<div
						style="width: 300px; flex-shrink: 0; transform: translateX(110px);">
						<img src="Banner-images/right-banner3.png" alt="Share a Moment"
							style="max-width: 100%; height: 500px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);">
					</div>


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
			<%@ include file="MainFooter.jsp"%>



		</div>
	
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

	<script>
		document.getElementById('uploadfile').addEventListener(
				'change',
				function(e) {
					const status = document
							.getElementById('multi_cover_status');
					const files = e.target.files;

					if (files.length === 0) {
						status.textContent = 'No files chosen';
					} else if (files.length === 1) {
						status.textContent = files[0].name;
					} else {
						status.textContent = files.length + ' files selected';
					}
				});
	</script>



	<span
		style="position: fixed; bottom: 0px; left: 0px; background-color: rgba(219, 219, 182, 0.5); color: black;"
		id="statusbar"></span>
</body>
</html>