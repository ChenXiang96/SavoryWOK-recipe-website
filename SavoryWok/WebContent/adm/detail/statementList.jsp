<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 41 Transitional//EN">
<html>
<head>
<title>Admin Panel</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet"
	type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
</head>
<body>

	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">
				<img border="0" width="13" height="13"
					src="style/images/title_arrow.gif" /> Comment List
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>


	<div id="QueryArea">
		<form action="/wirelessplatform/food.html" method="get">
			<input type="hidden" name="method" value="search"> <input
				type="text" name="keyword" title="EnterUserID"> <input
				type="submit" value="Search">
		</form>
	</div>

	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0"
			cellpadding="0">

			<thead>
				<tr align="center" valign="middle" id="TableTitle">
					<td>Comment number</td>
					<td>Topic number</td>
					<td>Comment content</td>
					<td>Comment time</td>
					<td>Comment user id</td>

					<td>Operation</td>
				</tr>
			</thead>

			<tbody id="TableData">

				<tr class="TableDetail1">
					<td>Comment 1&nbsp;</td>
					<td>Topic 1&nbsp;</td>
					<td>Comment content 1111</td>
					<td>2018/5/16</td>
					<td>User 1</td>

					<td><a href="updateStatement.jsp" class="FunctionButton">Update</a>
						<a href="/wirelessplatform/food.html?method=delete&id=1"
						onClick="return delConfirm();" class="FunctionButton">Delete</a></td>
				</tr>



			</tbody>
		</table>


		<div id="TableTail" align="center">
			<div class="FunctionButton">
				<a href="saveStatement.jsp">Add</a>
			</div>
		</div>

	</div>
</body>
</html>
