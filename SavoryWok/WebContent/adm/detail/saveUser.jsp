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
					src="style/images/title_arrow.gif" /> Add New User


			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>


	<div id="MainArea">

		<form action="#" method="post" enctype="multipart/form-data">

			<div class="ItemBlock_Title">
				<img width="4" height="7" border="0"
					src="style/images/item_point.gif"> User Info&nbsp;
			</div>

			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<div class="ItemBlock2">
						<table cellpadding="0" cellspacing="0" class="mainForm">
							<tr>
								<td width="80px">Username</td>
								<td><input type="text" name="foodName" class="InputStyle"
									value="" /> *</td>
							</tr>
							<tr>
								<td>User ID</td>
								<td><input type="text" name="price" class="InputStyle"
									value="" /> *</td>
							</tr>
							<tr>
								<td></td>
								<td><input type="text" name="mprice" class="InputStyle"
									value="" /> *</td>
							</tr>

							<tr>
								<td>Description</td>
								<td><textarea name="introduce" class="TextareaStyle"></textarea></td>
							</tr>
							<tr>
								<td width="80px">User Avatar</td>
								<td><input type="file" name="imageUrl" /> *</td>
							</tr>
						</table>
					</div>
				</div>
			</div>


			<div id="InputDetailBar">



				<input type="submit" value="Add" class="FunctionButtonInput">



				<a href="javascript:history.go(-1);" class="FunctionButton">Go
					back</a>
			</div>
		</form>
	</div>
</body>
</html>
