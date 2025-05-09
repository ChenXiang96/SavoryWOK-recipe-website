<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
<title>Admin Panel</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="style/js/jquery.js"></script>
<script type="text/javascript" src="style/js/page_common.js"></script>
<link href="style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="style/css/index_1.css" />
    <script type="text/javascript">
	function openWin(){
		window.open('common_page_list.html');
		this.close();
	}
	</script>
</head>
<body>


<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/>  Add Ingredients
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>



<div id="MainArea">

	<form action="# method="post">
	
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="style/images/item_point.gif"> Ingredient Info&nbsp;
        </div>
		
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
						<tr>
							<td width="80px">Ingredient Name</td>
							<td><input type="text" name="bName" class="InputStyle"/>*</td>
						</tr>
							<tr>
							<td width="80px">Ingredient Description</td>
							<td><input type="text" name="bName" class="InputStyle"/>*</td>
						</tr>
					
					</table>
				</div>
            </div>
        </div>
		

		<div id="InputDetailBar">
            <input type="submit" value="Add" class="FunctionButtonInput">
            <a href="javascript:history.go(-1);" class="FunctionButton">Go Back</a>
        </div>
	</form>
	
</div>

</body>
</html>
