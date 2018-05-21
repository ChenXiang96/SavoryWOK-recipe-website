<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet" href="css/style1.css" />


<script>

	function checkUsername() {
		$.post(
			"checkUser/" + $("#username").val(),
			{},
			function(data) {
				if (data == 1) {
					document.getElementById("span1").innerHTML = 
						//"<font color='red'>用户名已经存在!</font>";
						"<label>用户名已经存在！</label>";
					$("#username").val("");
					$("#username").focus();
					$(".submit").unbind("click",
							function(event){
						
					});
				} 
		});
	}
</script>
<body>

<div class="register-container">
	<h1>厨色</h1>
	
	<div class="connect">
		<p></p>
	</div>
	
	<form 
	  commandName="user"  
	  action="${ pageContext.request.contextPath }/register" 
	  modelAttribute="user" 
	  method="post" id="registerForm">
		<div>
			<input path="username" id="username" type="text" name="username" class="username" onblur="checkUsername()" placeholder="您的用户名" autocomplete="off"/>
			<!--  <span id="span1" style="padding-left: 10px;"></span> -->
			
			<label id="span1" class="error" for="username"></label>
		   
		</div>
		<div>
			<input type="password" path="password" id="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="password" id="repassword" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		</div>
		<div>
			<input type="email" path="email" name="email" class="email" placeholder="输入邮箱地址" oncontextmenu="return false" onpaste="return false" />
		</div>

		<button id="submit" type="submit">注 册</button>
	</form>
	<a href="index.html">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>


<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
  <script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>


<!--表单验证-->

<script src="js/jquery.validate.min.js?var1.14.0"></script>
</body>
</html>