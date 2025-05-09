<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Frame left</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${ctx }/style/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/style/js/page_common.js"></script>
<link href="${ctx }/style/css/common_style_blue.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript">

		function menuClick( menuDiv ){
			$(".MenuLevel2").not( $(menuDiv).next() ).hide();
			$(menuDiv).next().toggle();
		}
		
		$(function(){
		
			$(".MenuLevel2").hide();
			$(".MenuLevel2:first").show();
		});
	</script>

<style type="text/css">

html {
	height: 100%;
}

body {
	background: none repeat scroll 0 0 #D8EDFC;
	margin: 0;
	padding: 0;
}

#Menu {
	margin: 0;
	padding: 0;
	width: 150px;
	background: none repeat scroll 0 0 #D8EBF7;
	list-style: none outside none;
	margin-left: 0;
}

#Menu .level1 {
	color: #005790;
	font-weight: bold;
	padding-bottom: 1px;
	cursor: pointer;
}

#Menu .level1 .level1Style {
	background: url("${ctx }/style/images/img/menu_btn_bg.gif") no-repeat
		scroll 0 0 transparent;
	height: 23px;
	padding-left: 7px;
	padding-top: 5px;
	padding-bottom: 5px;
	width: 180px;
	margin-bottom: -4px;
	text-align: center;
	margin: 0 auto;
	display: block;
	letter-spacing: 1px;
	text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
	transition: all 0.2s;
}

#Menu .level1 .level1Style .Icon {
	margin-top: -2px;
}

#Menu .level1 .MenuLevel2 {
	background: none repeat scroll 0 0 #D8EBF7;
	list-style: none outside none;
	margin: 0 auto;
	padding: 0;
	width: 140px;
	padding-left: 0;
}

#Menu .level1 .MenuLevel2 .level2Style {
	color: #005790;
	font-weight: normal;
	border-top: 1px solid #EFF6FB;
	padding: 8px 15px 8px 43px;
	width: 112px;
	background-image: url(${ctx }/style/images/img/menu_arrow_single.gif);
	background-color: #8EC4E9;
	background-repeat: no-repeat;
	font-size: 13px;
	line-height: 1.5;
	height: 24px;
	white-space: normal;
	white-space: nowrap;
	padding-right: 10px;
	min-width: 140px;
	padding-left: 35px;
	text-indent: -8px;
	background-position: 15px center;
	text-align: center;
	display: flex;
	align-items: center;
	justify-content: center;
	
}

#Menu .level1 .MenuLevel2 .level2Style a {
	display: inline-block;
	vertical-align: middle;
	white-space: nowrap;
	max-width: none;
	overflow: hidden;
	text-overflow: ellipsis;
	display: inline-block;
	width: calc(100% - 20px);
	text-align: left;
	padding-left: 10px;
}

</style>
</head>
<body>

	<ul id="Menu">
		<li class="level1">
			<div onClick="menuClick(this);" class="level1Style">Dashboard</div>
			<ul class="MenuLevel2">


				<li class="level2 level2Style"><a target="right"
					href="${ctx }/subject/get">Theme Management</a></li>

				<li class="level2 level2Style"><a target="right"
					href="${ctx }/userback/get">User Management</a></li>

				<li class="level2 level2Style"><a target="right"
					href="${ctx }/topic/get">Post Management</a></li>

				<li class="level2 level2Style"><a target="right"
					href="${ctx }/health/get">Recipe Management</a></li>
			</ul>
		</li>
	</ul>
</body>
</html>