<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
  <head>
    <title>Check Activation</title>

  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
    
<style>
   h3 {
      font-size: 25px;
      text-align: center;
      color: #333;
     margin-bottom: 22px;
     margin-top:20px;
  }
   .form-control{
    width:550px;


  }
h3.heading-style-3 {

    color: #FFBF00;
    font-weight: bold;
}
  .organic-form-2 label{
   font-size:25px;
    font-family: "Playfair Display", serif;
   margin-top:30px;

}
  .pull-right {
  
    margin-right: 225px;
}
  .pull-left {

    margin-left: 225px;
}

  </style>

</head>
  <body >
   <%@ include file="LoginMenu.jsp" %>


   <div>
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
            
        <center> <div class="call-to-action-style-1">
            <center><h2><font color="#F7D358">Almost there!</font></h2></center>
             <p class="h3"><font color="#A2CD5A">Please check your email for the activation link!</font></p>
             <a class="btn btn-brand pill" href="${ pageContext.request.contextPath}/index">Home</a>
             <a class="btn btn-brand pill" href="${ pageContext.request.contextPath }/userRegister">Sign Up</a>
             <a class="btn btn-brand pill" href="${ pageContext.request.contextPath }/userLogin">Sign In</a>
             
         </div>
         </center>
              
              
            </div>
          </div>
        </div>
      </section>
     </div>
   

   </div>
    
      <%@ include file="LoginFooter.jsp" %>
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/function-check-viewport.js"></script>
    <script src="${pageContext.request.contextPath}/js/slick.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/select2.full.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/imagesloaded.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery.mmenu.all.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/rellax.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/isotope.pkgd.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-notify.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap-slider.js"></script>
    <script src="${pageContext.request.contextPath}/js/in-view.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/countup.js"></script>
    <script src="${pageContext.request.contextPath}/js/animsition.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/global.js"></script>
    <script src="${pageContext.request.contextPath}/js/config-mm-menu.js"></script>
    <script src="${pageContext.request.contextPath}/js/config-set-bg-blog-thumb.js"></script>
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
