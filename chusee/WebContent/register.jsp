<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>
  <head>
    <title>Home</title>
    
    
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
     <style>
  </style>
  <script>
	function checkForm() {
		// 校验用户名:
		// 获得用户名文本框的值:
		var username = $("#username").val();
		if (username == null || username == '') {
			alert("用户名不能为空!");
			return false;
		}
		// 校验密码:
		// 获得密码框的值:
		var password = $("#password").val();
		if (password == null || password == '') {
			alert("密码不能为空!");
			return false;
		}
		// 校验确认密码:
		var repassword = $("#repassword").val();
		if (repassword != password) {
			alert("两次密码输入不一致!");
			return false;
		}

	}
	function checkUsername() {
		$.post(
			"checkUser/" + $("#username").val(),
			{},
			function(data) {
				if (data == 1) {
					document.getElementById("span1").innerHTML = "<font color='red'>用户名已经存在</font>";
					$("#username").val("");
					$("#username").focus();
					$(".submit").unbind("click",
							function(event){
						
					});
				} else {
					document.getElementById("span1").innerHTML = "<font color='green'>用户名可以使用</font>";
				}
		});
	}
</script>
<style>
h3.heading-style-3:before, h3.heading-style-3:after{
     width:200px;
     left:28%;


}
  .div99{
 
   margin-left:450px;
  }
  a {
    color: white;
    text-decoration: none;
}

</style>
</head>
  <body >
       <%@ include file="menu2.jsp" %>


      <section class="sub-header shop-layout-1">
        <img class="rellax bg-overlay" src="${pageContext.request.contextPath}/images/logo2.jpg" alt="">
        <div class="overlay-call-to-action"></div>
        <center><h3 class="heading-style-3"><img src="images/lo.png"></h3>
        </center>
         
      </section>
      <section class="boxed-sm">
        <div class="container">
          <div class="login-wrapper">
            <div class="row">
              <h3>注册</h3>
              <form  commandName="user" action="${ pageContext.request.contextPath }/register" method="post" modelAttribute="user" novalidate="novalidate" onsubmit="return checkForm();">
                <div class="form-group organic-form-2">
                  <label><font color="red">*</font> 用户名</label>
                  <input type="text" id="username" path="username" name="username" class="form-control" maxlength="20" onblur="checkUsername()">
                  <span id="span1"></span>
                </div>
                
               
                <div class="form-group organic-form-2">
                   <label><font color="red">*</font> 密码</label>
                  <input class="form-control" type="password" id="password" path="password" name="password" maxlength="20" autocomplete="off">
                 <!--   <span><font color="red"><s:fielderror fieldName="password"/></font></span>
                  -->
                </div>
                <div class="form-group organic-form-2">
                    <label><font color="red">*</font> 确认密码</label>
                  <input class="form-control" type="password"id="repassword" name="repassword" maxlength="20" autocomplete="off">
                </div>
                
                 <div class="form-group organic-form-2">
                 <label><font color="red">*</font> 邮箱</label>
                  <input class="form-control" path="email" type="Email" id="email" name="email">
                  <form:errors path="email" cssClass="error"/>
                </div>
                
                <div class="form-group organic-form-2">
                   <label><font color="red">*</font>真实姓名</label>
                  <input type="text"  path="name" name="name" class="form-control" maxlength="20">
                
                </div>
                
                  <div class="form-group organic-form-2">
                    <label><font color="red">*</font>电话</label>
                  <input type="text"  path="phone" name="phone" class="form-control" maxlength="20">
                
                </div>
                
                  <div class="form-group organic-form-2">
                   <label><font color="red">*</font>地址</label>
                  <input type="text"  path="addr" name="addr" class="form-control" maxlength="20">
                
                </div>
                
                 <div class="form-group organic-form-2">
             
									<!--
									<th><span class="requiredField">*</span>验证码:</th>
									  -->
									<label><font color="red">*</font>验证码</label>
									<td><span class="fieldSet"> <input type="text"
											id="checkcode" name="checkcode" class="form-control"
											maxlength="4" />
											 <img id="checkImg" class="captchaImage"
											src="${pageContext.request.contextPath}/getCheckCodeImage"
											onclick="changeImg()" title="点击更换验证码" width=150px height=50px/>
											</span>
											
											<c:if test="${errorCheckCode !=null}">
											   <font color="red">验证码出错</font>
											</c:if>
									</td>
								
                </div>
                
                
               
               
                 <font color="red"><s:actionerror/></font>
              
                
                <div class="form-group remember-me">
                  <div class="checkbox pull-left">
                    <label>
                      <input type="checkbox"> Privacy Policy Agreement?
                    </label>
                  </div>
                </div>
                 <div class="div99">
                <div class="form-group footer-form">
               
             <button class="btn btn-brand pill" type="submit">注册</button>
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
              <button class="btn btn-brand pill" ><a href="${ pageContext.request.contextPath }/userLogin" color:red> 已经有账号？</a></button>
          
                </div>
                </div>
                
              </form>
            </div>
          </div>
        </div>
      </section>
    </div>
     <%@ include file="footer.jsp" %>
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
		function changeImg() {
			var img1 = document.getElementById("checkImg");
			img1.src = "${pageContext.request.contextPath}/getCheckCodeImage"
					+ "?date=" + new Date();
		}
	</script>
  </body>
</html>
