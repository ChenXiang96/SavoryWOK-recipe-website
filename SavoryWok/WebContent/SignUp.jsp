<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<title>Sign Up</title>


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<style>
</style>
<script>
	function checkForm() {
		
	
		var username = $("#username").val();
		if (username == null || username == '') {
			alert("Username cannot be empty!");
			return false;
		}
	
	
		var password = $("#password").val();
		if (password == null || password == '') {
			alert("Password cannot be empty!");
			return false;
		}
	
		var repassword = $("#repassword").val();
		if (repassword != password) {
			alert("The two passwords you entered do not match!");
			return false;
		}

	}
	function checkUsername() {
		$.post(
			"checkUser/" + $("#username").val(),
			{},
			function(data) {
				if (data == 1) {
					document.getElementById("span1").innerHTML = "<font color='red'>Username already exists</font>";
					$("#username").val("");
					$("#username").focus();
					$(".submit").unbind("click",
							function(event){
						
					});
				} else {
					document.getElementById("span1").innerHTML = "<font color='green'>This username is available!</font>";
				}
		});
	}
</script>
<style>
h3.heading-style-3:before, h3.heading-style-3:after {
	width: 200px;
	left: 28%;
}

.div99 {
	margin-left: 450px;
}

a {
	color: white;
	text-decoration: none;
}

.img0 {
	margin-right: 50px;
}

h3.heading-style-3 {
	color: #FFBF00;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="LoginMenu.jsp"%>


	<section class="sub-header shop-layout-1"
		style="width: 100vw; margin-left: -50vw; left: 50%; position: relative; overflow: hidden; height: 320px;">
		<img class="rellax bg-overlay"
			src="${pageContext.request.contextPath}/Banner-images/Register-banner.jpg"
			alt="" style="width: 102%; height: 700px; object-fit: cover;">
		<div class="overlay-call-to-action"></div>
		<h3>
			<img class="img0"
				src="${pageContext.request.contextPath}/images/logo.png"
				style="max-width: 65%; display: block; margin: 0 auto;">
		</h3>

	</section>

	<div style="max-width: 1200px; margin: 0 auto; padding: 0 15px;">
		<section class="boxed-sm">
			<div class="container">
				<div class="login-wrapper" style="max-width: 800px; margin: 0 auto;">
					<div class="row">
						<center>
							<h3 class="heading-style-3"color:"red">Sign Up</h3>
						</center>
						<form commandName="user"
							action="${ pageContext.request.contextPath }/register"
							method="post" modelAttribute="user" novalidate="novalidate"
							onsubmit="return checkForm();">
							<div class="form-group organic-form-2">
								<label><font color="red">*</font>Username</label> <input
									type="text" id="username" path="username" name="username"
									class="form-control" maxlength="20" onblur="checkUsername()">
								<span id="span1"></span>
							</div>


							<div class="form-group organic-form-2">
								<label><font color="red">*</font>Password</label> <input
									class="form-control" type="password" id="password"
									path="password" name="password" maxlength="20"
									autocomplete="off">
								<!--   <span><font color="red"><s:fielderror fieldName="password"/></font></span>
                  -->
							</div>
							<div class="form-group organic-form-2">
								<label><font color="red">*</font> Confirm Password</label> <input
									class="form-control" type="password" id="repassword"
									name="repassword" maxlength="20" autocomplete="off">
							</div>

							<div class="form-group organic-form-2">
								<label><font color="red">*</font> Email</label> <input
									class="form-control" path="email" type="Email" id="email"
									name="email">
								<form:errors path="email" cssClass="error" />
							</div>

							<div class="form-group organic-form-2">
								<label><font color="red">*</font>Real name</label> <input type="text"
									path="name" name="name" class="form-control" maxlength="20">

							</div>

							<div class="form-group organic-form-2">
								<label><font color="red">*</font>Phone number</label> <input
									type="text" path="phone" name="phone" class="form-control"
									maxlength="20">

							</div>

							<div class="form-group organic-form-2">
								<label><font color="red">*</font>Address</label> <input
									type="text" path="addr" name="addr" class="form-control"
									maxlength="20">

							</div>

							<div class="form-group organic-form-2">

								
								<label><font color="red">*</font>Please enter the code
									below</label>
								<td><span class="fieldSet"> <input type="text"
										id="checkcode" name="checkcode" class="form-control"
										maxlength="4" /> <img id="checkImg" class="captchaImage"
										src="${pageContext.request.contextPath}/getCheckCodeImage"
										onclick="changeImg()" title="Click to refresh" width=150px height=50px />
								</span> <c:if test="${errorCheckCode !=null}">
										<font color="red">Please check the captcha and try
											again.</font>
									</c:if></td>

							</div>




							<font color="red"><s:actionerror /></font>


							<div class="form-group remember-me">
								<div class="checkbox pull-left">
									<label> <input type="checkbox"> Privacy Policy
										Agreement?
									</label>
								</div>
							</div>
							<div class="div99">
								<div class="form-group footer-form">

									<button class="btn btn-brand pill" type="submit">Sign Up</button>
									&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
									<button class="btn btn-brand pill">
										<a href="${ pageContext.request.contextPath }/userLogin"
											color:red>Sign In</a>
									</button>

								</div>
							</div>

						</form>
					</div>
				</div>
			</div>
		</section>
	</div>

	<%@ include file="LoginFooter.jsp"%>
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/function-check-viewport.js"></script>
	<script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/select2.full.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/jquery.mmenu.all.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/rellax.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-notify.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap-slider.js"></script>
	<script src="${pageContext.request.contextPath}/js/in-view.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/countup.js"></script>
	<script src="${pageContext.request.contextPath}/js/animsition.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/global.js"></script>
	<script src="${pageContext.request.contextPath}/js/config-mm-menu.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/config-set-bg-blog-thumb.js"></script>
	<script src="${pageContext.request.contextPath}/js/config-accrodion.js">
    

    </script>
	<script type="text/javascript">
		function changeImg() {
			var img1 = document.getElementById("checkImg");
			img1.src = "${pageContext.request.contextPath}/getCheckCodeImage"
					+ "?date=" + new Date();
		}
	</script>
</body>
</html>
