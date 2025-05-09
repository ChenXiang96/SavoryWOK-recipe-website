<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<title>Activation Successful</title>


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

h3.heading-style-3::before, h3.heading-style-3::after {
	content: none !important; 
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
</style>

</head>
<body>
	<%@ include file="LoginMenu.jsp"%>

	<div>
		<section class="sub-header shop-layout-1"
			style="width: 100vw; margin-left: -50vw; left: 50%; position: relative; overflow: hidden; height: 320px;">
			<img class="rellax bg-overlay"
				src="${pageContext.request.contextPath}/Banner-images/Register-banner.jpg"
				alt="" style="width: 102%; height: 700px; object-fit: cover;">
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">
				<img src="${pageContext.request.contextPath}/images/logo.png"
					style="max-width: 65%; display: block; margin: 0 auto;">
			</h3>

		</section>

		<div style="max-width: 1200px; margin: 0 auto; padding: 0 15px;">
			<section class="boxed-sm">
				<div class="container">
					<div class="login-wrapper">
						<div class="row">
							<div class="call-to-action-style-1">
								<h2>
									<font color="#F7D358">Your Account is Now Active!</font>
								</h2>
								<p class="h3">
									<font color="#A2CD5A">Discover new flavors, share your
										moments, and enjoy every bite!</font>
								</p>
								<a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath}/index">Back to
									Home</a> 
									<a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath }/userLogin">Back
									to Sign In</a>
									<a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath }/userRegister">Back
									to Sign Up</a> 

							</div>

						</div>
					</div>
				</div>
			</section>
		</div>

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
  $(function(){
	 
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

</body>
</html>
