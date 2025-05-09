<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
<head>
<title>Registration Failed</title>


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

h3.heading-style-3::before, h3.heading-style-3::after {
	content: none !important;
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
		<section class="sub-header shop-layout-1" style="width: 100vw; margin-left: -50vw; left: 50%; position: relative; overflow: hidden; height: 320px;">
			<img class="rellax bg-overlay"
				src="${pageContext.request.contextPath}/Banner-images/Register-banner.jpg" alt="" style="width: 102%; height: 700px; object-fit: cover;"> 
			<div class="overlay-call-to-action"></div>
			<h3 class="heading-style-3">
				<img src="${pageContext.request.contextPath}/images/logo.png" style="max-width: 65%; display: block; margin: 0 auto;">
			</h3>

		</section>

		<div style="max-width: 1200px; margin: 0 auto; padding: 0 15px;">
			<section class="boxed-sm">
				<div class="container">
					<div class="login-wrapper">
						<div class="row">
							<div class="call-to-action-style-1">
								<h2>
									<font color="#F7D358">Oops! Something Went Wrong</font>
								</h2>
								<p class="h3">
									<font color="#A2CD5A">We Couldn't Create Your Account,
										please try again</font>
								</p>
								<a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath}/index">Back to
									Home</a> <a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath }/userRegister">Back
									to Sign Up</a> <a class="btn btn-brand pill"
									href="${ pageContext.request.contextPath }/userLogin">Back
									to Sign In</a>
							</div>


						</div>
					</div>
				</div>
			</section>
		</div>







	</div>

	<%@ include file="LoginFooter.jsp"%>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/function-check-viewport.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/select2.full.min.js"></script>
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<script src="js/jquery.mmenu.all.min.js"></script>
	<script src="js/rellax.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/bootstrap-notify.min.js"></script>
	<script src="js/bootstrap-slider.js"></script>
	<script src="js/in-view.min.js"></script>
	<script src="js/countup.js"></script>
	<script src="js/animsition.min.js"></script>
	<script src="js/global.js"></script>
	<script src="js/config-mm-menu.js"></script>
	<script src="js/config-set-bg-blog-thumb.js"></script>
	<script src="js/config-accrodion.js">
    

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
