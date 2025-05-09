<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<title>Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />

<style>
h3 {
	font-size: 25px;
	text-align: center;
	color: #333;
	margin-bottom: 22px;
	margin-top: 20px;
}

.form-control {
	width: 550px;
}

h3.heading-style-3 {
	color: #FFBF00;
	font-weight: bold;
}

.organic-form-2 label {
	font-size: 25px;
	font-family: "Playfair Display", serif;
	margin-top: 30px;
}

.pull-right {
	margin-right: 225px;
}

.pull-left {
	margin-left: 225px;
}

.shop-layout-1 {
	width: 100% !important;
}

.site-logo {
	display: block;
	max-width: 450px;
	height: auto;
	width: 100%;
	transform: none !important;
}
</style>

</head>

<body>
	<section class="sub-header shop-layout-1" style="width: 100vw; margin-left: -50vw; left: 50%; position: relative; overflow: hidden; height: 320px;">
		<img class="rellax bg-overlay"
			src="${pageContext.request.contextPath}/Banner-images/Signin-banner2.jpg"
			alt="" style="width: 100%; height: 650px; object-fit: cover;">
		<div class="overlay-call-to-action"></div>
		<h3
			style="position: absolute; top: 50%; left: 50.5%; transform: translate(-50%, -50%); margin: 0; text-align: center;">
			<img class="site-logo"
				src="${pageContext.request.contextPath}/images/logo.png"
				style="max-width: 65%; display: block; margin: 0 auto;">
		</h3>
	</section>
	<div style="max-width: 1200px; margin: 0 auto; padding: 0 15px;">
		<%@ include file="LoginMenu.jsp"%>


		<div>

			<section class="boxed-sm">
				<div class="container">

					<div class="login-wrapper">
						<div class="row">
							<center>
								<h3 class="heading-style-3"color:"red">My Account</h3>
							</center>
							<div>
								<s:actionerror />
							</div>
							<form id="loginForm" modelAttribute="user" commandName="user"
								action="${ pageContext.request.contextPath }/login"
								method="post">

								<div class="form-group organic-form-2">
									<center>
										<label>Username</label>
									</center>
									<center>
										<input type="text" id="username" name="username"
											class="form-control" maxlength="20">
									</center>
								</div>

								<div class="form-group organic-form-2">
									<center>
										<label>Password</label>
									</center>
									<center>
										<input class="form-control" type="Password" id="password"
											name="password" maxlength="20" autocomplete="off">
									</center>
								</div>

								<div class="form-group organic-form-2">
									<center>
										<label>Please enter the code below</label>
									</center>

									<center>
										<input class="form-control" type="text" id="captcha"
											name="checkcode" maxlength="20" autocomplete="off"> <img
											id="captchaImage" class="captchaImage"
											src="${pageContext.request.contextPath}/getCheckCodeImage"
											title="Click to Refresh" />
										<center>
											<c:if test="${errorCheckCode != null}">
												<font color="red">Please check the captcha and try again.</font>
											</c:if>
										</center>
									</center>
								</div>


								<div class="form-group footer-form">
									<center>
										<button class="btn btn-brand pill" type="submit">Sign In </button>
									</center>
								</div>

								<div class="form-group remember-me">
									<div class="checkbox pull-left"></div>

								</div>
							</form>

						</div>



					</div>
				</div>
			</section>


		</div>


		<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/function-check-viewport.js"></script>
		<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/select2.full.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/jquery.mmenu.all.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/rellax.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/bootstrap-notify.min.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/bootstrap-slider.js"></script>
		<script src="${pageContext.request.contextPath}/js/in-view.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/countup.js"></script>
		<script src="${pageContext.request.contextPath}/js/animsition.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/global.js"></script>
		<script src="${pageContext.request.contextPath}/js/config-mm-menu.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/config-set-bg-blog-thumb.js"></script>
		<script
			src="${pageContext.request.contextPath}/js/config-accrodion.js">
    

    </script>
		<script type="text/javascript">
  $(function(){
	  //Click to Refresh CAPTCHA
	   $("#captchaImage").click(function(){		   
	   		$("#captchaImage").attr("src","${pageContext.request.contextPath}/getCheckCodeImage?date="+new Date().getTime());		   
	   });
   });
  $(function(){
	  $("#username").focus(function(){
		  $("#username").val("");
	  });
  })
</script>
	</div>
	<%@ include file="LoginFooter.jsp"%>
</body>

</html>
