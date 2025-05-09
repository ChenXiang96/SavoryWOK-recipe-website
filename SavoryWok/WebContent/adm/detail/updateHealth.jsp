<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Admin Panel</title>


<style>

.ItemBlockBorder {
	max-width: 800px !important;
	padding: 30px !important;
	border-radius: 12px;
	background: #ffffff;
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.08);
}


.mainForm {
	width: 100% !important;
	border-collapse: separate !important;
	border-spacing: 0 20px;
}

.mainForm tr:not(:last-child) {
	margin-bottom: 25px;
}


.mainForm td:first-child {
	width: 120px !important;
	font-size: 16px !important;
	text-align: center !important;
	vertical-align: middle !important;
	font-size: 16px !important;
	font-weight: 600 !important;
	color: #2c3e50 !important;
	letter-spacing: 0.5px;
	text-transform: uppercase;
	font-family: 'Segoe UI', sans-serif;
}


.InputStyle, select {
	width: 100% !important;
	max-width: 400px !important;
	height: 46px !important;
	padding: 12px 16px !important;
	font-size: 15px !important;
	border: 2px solid #e0e3e9 !important;
	border-radius: 8px !important;
	transition: all 0.3s ease;
}

.InputStyle:focus, select:focus {
	border-color: #3498db !important;
	box-shadow: 0 3px 10px rgba(52, 152, 219, 0.2);
}


select {
	background: url('data:image/svg+xml,<svg ...') no-repeat right 16px
		center/12px; 
	appearance: none;
	padding-right: 40px !important;
}


.TextareaStyle {
	width: 100% !important;
	max-width: 600px !important;
	min-height: 120px !important;
	padding: 16px !important;
	line-height: 1.6 !important;
	border-radius: 8px !important;
}


input[type="file"] {
	padding: 12px !important;
	border: 2px dashed #bdc3c7 !important;
	border-radius: 8px;
	background: #f8f9fa;
}


img[style*="max-width:68px"] {
	max-width: 120px !important;
	height: auto !important;
	border-radius: 8px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	margin-bottom: 15px;
}


.FunctionButtonInput, .FunctionButton {
	display: inline-flex !important;
	align-items: center !important;
	justify-content: center !important;
	min-width: 120px !important;
	height: 48px !important;
	padding: 0 28px !important;
	font-size: 16px !important;
	font-weight: 600;
	border-radius: 8px !important;
	border: none !important;
	cursor: pointer;
	transition: all 0.2s ease;
	text-decoration: none !important;
	width: 140px !important;
	box-sizing: border-box !important;
}

.FunctionButtonInput {
	background: linear-gradient(135deg, #3498db, #2980b9) !important;
	color: white !important;
	box-shadow: 0 4px 12px rgba(52, 152, 219, 0.3);
}

.FunctionButtonInput:hover, .FunctionButton:hover {
	transform: translateY(-2px);
	box-shadow: 0 6px 16px rgba(0, 0, 0, 0.15);
	opacity: 0.92;
}

.FunctionButton {
	background: linear-gradient(135deg, #95a5a6, #7f8c8d) !important;

	color: white !important;
	margin-left: 20px !important;
}

#InputDetailBar {
	width: 100% !important;
	max-width: 800px;
	margin: 40px auto !important;
	padding: 0 20px;
	display: flex;
	justify-content: center;
	gap: 30px;
	position: relative;
	left: 50%;
	transform: translateX(-80%);
}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript"
	src="${ctx }/adm/detail/style/js/jquery.js"></script>
<script type="text/javascript"
	src="${ctx }/adm/detail/style/js/page_common.js"></script>
<link href="${ctx }/adm/detail/style/css/common_style_blue.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="${ctx }/adm/detail/style/css/index_1.css" />
</head>
<body>


	<div id="TitleArea">
		<div id="TitleArea_Head"></div>
		<div id="TitleArea_Title">
			<div id="TitleArea_Title_Content">


				<img border="0" width="13" height="13"
					src="${ctx }/adm/detail/style/images/title_arrow.gif" /> Update



			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>

	
	<div id="MainArea">
		
		<form action="${ctx }/health/update?id=${dishes.id}" method="post"
			enctype="multipart/form-data">
			
			<div class="ItemBlock_Title">
				<img width="4" height="7" border="0"
					src="${ctx }/adm/detail/style/images/item_point.gif">
				Dish Details&nbsp;
			</div>
			
			<div class="ItemBlockBorder">
				<div class="ItemBlock">
					<div class="ItemBlock2">
						<table cellpadding="0" cellspacing="0" class="mainForm">

							<tr>
								<td width="80px">Category</td>
								<td><select name="cid" style="width: 80px">

										<option value="1" selected="selected">Main Dishes</option>


										<option value="2">Appetizers</option>


										<option value="3">Noodles</option>


										<option value="4">Rice</option>

										<option value="5">Soup</option>

										<option value="6">Dim
											Sum</option>

										<option value="7">Drinks</option>

										<option value="8">Baking</option>

										<option value="9">Global</option>



								</select> <input type="hidden" name="id" value="1" /></td>
							</tr>
							<tr>
								<td width="80px">Name</td>
								<td><input type="text" id="name" name="name"
									class="InputStyle" value=" ${dishes.name}" /></td>
							</tr>
							<tr>
								<td width="80px"></td>
								<td><input type="hidden" id="id" name="id"
									class="InputStyle" value="${dishes.id} " /></td>
							</tr>
							<tr>
								<td>Description</td>
								<td><textarea name="pdesc" id="id" class="TextareaStyle">${dishes.pdesc}</textarea></td>
							</tr>
							<tr>
								<td width="80px">Image</td>
								<td><img
									style='max-width: 150px !important; width: auto !important; height: auto !important; border: 2px solid #ecf0f1; border-radius: 8px; box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1); padding: 5px; background: white;'
									src="${ctx }/${dishes.image}"> <input
									type="hidden" name="image" value="baizhuoxia.jpg">
									<div
										style="border: 2px dashed #bdc3c7; border-radius: 8px; padding: 15px; display: inline-flex; align-items: center; gap: 12px; background: #f8f9fa;">
										<input type="file" name="imageUrl" id="fileInput"
											style="display: none"
											onchange="document.getElementById('fileLabel').innerText = this.files.length ? this.files[0].name : 'No files chosen'" />

										<label for="fileInput"
											style="cursor: pointer; padding: 10px 18px; background: linear-gradient(135deg, #3498db, #2980b9); color: white; border-radius: 6px; transition: all 0.2s ease; white-space: nowrap;">
											Choose Image </label> <span id="fileLabel"
											style="color: #7f8c8d; font-size: 14px; max-width: 200px; overflow: hidden; text-overflow: ellipsis;">
											No files chosen </span>
									</div></td>
							</tr>
						</table>
					</div>
				</div>
			</div>



			<div id="InputDetailBar">


				<input type="submit" value="Save" class="FunctionButtonInput">




				<a href="javascript:history.go(-1);" class="FunctionButton">Return</a>
			</div>
		</form>
	</div>
</body>
</html>
