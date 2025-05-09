<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

	
<title>Admin Panel</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>

	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="style/css/images/title_arrow.gif" /> Menu
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
			
			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>Name</td>
					<td>Price</td>
					<td>Items</td>
				</tr>
			</thead>
			
			<tbody id="TableData">
				
			 
			 	
			</tbody>
		</table>
	
		<div id="TableTail" align="center">
			 <a href="javascript:history.go(-1);" class="FunctionButton">Go back</a>
		</div>
	</div>
</body>
</html>
