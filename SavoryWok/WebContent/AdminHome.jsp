<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>SavoryWok-Admin-Dashboard-Sign-In</title>
<meta name="keywords" content="Admin_Dashboard">
<meta name="description" content="Admin_Dashboard_description">
<meta name="viewport" content="width=device-width">
<link href="${ctx }/public/css/base.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/public/css/login.css" rel="stylesheet"
	type="text/css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Alegreya:ital,wght@0,400..900;1,400..900&family=Fjalla+One&family=Gupter:wght@400;500;700&family=Italianno&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Oleo+Script:wght@400;700&family=Protest+Riot&family=Satisfy&family=Special+Gothic+Expanded+One&display=swap"
	rel="stylesheet">
<style>
.logo1 {
	margin-left: 18px;
	max-width: 600px;
}

.user {
	margin-left: 30px;
	margin-top: 20px;
}

.login_form>div>button {
	font-family: Arial, sans-serif;
	font-size: 20px;
	font-weight: bold;
}

.admin-slogan {
	font-family: "Satisfy", cursive;
	font-size: 1.8em;
	letter-spacing: 0.05em;
	color: #FFD700;
	text-align: center;
	margin: 20px 0 30px;
	text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.3);
	font-weight: 300;
	line-height: 1.4;
}

.admin-slogan {
	animation: fadeInUp 0.8s ease-out;
}

@
keyframes fadeInUp {from { opacity:0;
	transform: translateY(15px);
}

to {
	opacity: 1;
	transform: translateY(0);
}

}
body {
	background: url('${ctx}/Banner-images/Admin-Background.jpg') no-repeat
		center center fixed;
	background-size: cover;
}
</style>
<body>

	<div class="login">
		<form action="${ctx }/adm/login" method="post" id="form">
			<div class="logo1">
				<img class="imgl"
					src="${pageContext.request.contextPath}/images/logo.png" alt="logo"
					style="max-width: 65%; display: block; margin: 0 auto;" />

				<div class="admin-slogan">Welcome to Your Admin Dashboard</div>

			</div>
			<div class="login_form">
				<div class="user">
					<input class="text_value" value="" name="username" type="text"
						id="username" placeholder="Username"> <input
						class="text_value" value="" name="password" type="password"
						id="password" placeholder="Password">
				</div>
				<div style="text-align: center; margin-top: 20px;">
					<button type="submit"
						style="padding:10px 60px; 
               margin-top: 20px;
               background:#FFA500;
               color:white;
               border:none;
               border-radius:4px; 
               cursor:pointer;
               font-family: 'Arial', sans-serif;  
               font-weight: 600;                 
               font-size: 16px;              
               letter-spacing: 1px;">
						
						Go
					</button>

				</div>
				<div style="width: 100%; text-align: center; margin-top: 15px;">
					<font color="white">${errorinfo}</font>
				</div>
			</div>


			<div id="tip"></div>
			<div class="foot">
				<a href="${pageContext.request.contextPath }/index" target="_blank"
					title="Backend-login Page"></a>
			</div>
		</form>
	</div>
	<script>
		var basedir = 'public/ui/';
	</script>
	<script src="${ctx }/public/ui/do.js"></script>
	<script src="${ctx }/public/ui/config.js"></script>
	<script>
		Do
				.ready(
						'form',
						function() {
							$("#form")
									.Validform(
											{
												ajaxPost : true,
												postonce : true,
												tiptype : function(msg, o,
														cssctl) {
													if (!o.obj.is("form")) {
														var objtip = o.obj
																.siblings(".Validform_checktip");
														cssctl(objtip, o.type);
														objtip.text(msg);
													} else {
														var objtip = o.obj
																.find("#tip");
														cssctl(objtip, o.type);
														if (o.type == 2) {
															window.location.href = 'index.php?r=admin/index/index';
														} else {
															objtip.text(msg);
														}
													}
												}
											});
						});
	</script>
</body>
</html>
