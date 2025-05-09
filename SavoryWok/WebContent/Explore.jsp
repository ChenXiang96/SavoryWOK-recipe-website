<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs
  ================================================== -->
<meta charset="utf-8">
<title>Explore</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific Metas
  ================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
  ================================================== -->
<link rel="stylesheet" href="${ctx }/css/zerogrid.css">
<link rel="stylesheet" href="${ctx }/css/style.css">
<link rel="stylesheet" href="${ctx }/css/slide.css">
<link rel="stylesheet" href="${ctx }/css/menu.css">
<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
<!--[if lt IE 9]>
		<script src="${ctx }/js/html5.js"></script>
		<script src="${ctx }/js/css3-mediaqueries.js"></script>
	<![endif]-->
<!-- footer -->
<link href="${ctx }/css/bootstrap.min.css" rel="stylesheet" />
<link href="${ctx }/css/style2.css" rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Sofia">
</head>
<body style="background: url(#FFFFFF)">
	<%@ include file="MainMenu.jsp"%>

	<!--////////////////////////////////////Container-->
	<section id="container" class="sub-page">
		<div class="wrap-container zerogrid">

			<div id="main-content">
				<div class="wrap-content">
					<div class="row">
						<div class="col-1-3">
							<div class="wrap-col">
								<h3>Discover Nearby Tastes</h3>
								<p style="text-align: justify;">Drowning in recipes but craving your favorite dish right
									now? Let's kickstart your food discovery journey with a simple
									tap!</p>

								<p style="text-align: justify;">No matter where you are in the city, just enter the food
									keyword you're interested in. The map will instantly show
									nearby relevant locations, making it easy to enjoy a variety of
									tasty bites around you~</p>
								<br />

							</div>
						</div>


						<iframe src="Map.jsp" style="margin-left: 30px;"></iframe>


					</div>
				</div>
			</div>
		</div>
	</section>

	<!--////////////////////////////////////Footer-->
	<%@ include file="MainFooter.jsp"%>



	<script src="${ctx }/js/classie.js"></script>
	<script src="${ctx }/js/demo.js"></script>
	
	
	<style>


iframe {
	/* border: 0; */
	/* margin: 0; */
	/* padding: 0; */
	width: 750px;
	height: 625px;
}

.wrap-col h3 {
	font-size: 30px !important;
	font-family: 'Sofia', serif !important;
}

.wrap-col p {
	margin-bottom: 80px;
	font-family: 'Montserrat', 'Helvetica Neue', sans-serif;
	line-height: 1.8;
}

.col-1-3 {
	margin-top: 50px;
}

.wrap-content {
	border: 0 !important;
	margin: 0 !important;
	padding: 0 !important;
	overflow: visible !important;
}
#container.sub-page {
    padding-bottom: 80px !important; 
   
}

.row{
  margin-left:30px;

}

</style>
	</div>
</body>
</html>