<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html>
<head>
	
<title>Savory Wok</title>



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
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> Ingredients List
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>



<div id="QueryArea">
	<form action="/wirelessplatform/board.jsp" method="get">
		<input type="hidden" name="method" value="search">
		<input type="text" name="keyword" title="Please enter a name">
		<input type="submit" value="search">
	</form>
</div>



<div id="MainArea">
    <table class="MainArea_Content" cellspacing="0" cellpadding="0">
        
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>No.</td>
				<td>Name</td>
				<td>Description</td>
				<td>Operation</td>
			</tr>
		</thead>	
	
        <tbody id="TableData">
		
			<tr class="TableDetail1">
				<td align="center">1&nbsp;</td>
				<td align="center"> Ingredient-1&nbsp;</td>
				<td align="center">Description-1</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">Modify</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=1" onClick="return delConfirm();"class="FunctionButton">Delete</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">2&nbsp;</td>
				<td align="center"> Ingredient-2&nbsp;</td>
				<td align="center">Description-2</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">Modify</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=2" onClick="return delConfirm();"class="FunctionButton">Delete</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">3&nbsp;</td>
				<td align="center">Ingredient-3&nbsp;</td>
				<td align="center">Description-3</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">Modify</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=3" onClick="return delConfirm();"class="FunctionButton">Delete</a>				
				</td>
			</tr>
        
			<tr class="TableDetail1">
				<td align="center">5&nbsp;</td>
				<td align="center"> Ingredient-4&nbsp;</td>
				<td align="center">Description-4</td>
				<td>
					<a href="updateBoard.jsp" class="FunctionButton">Modify</a>				
					<a href="/wirelessplatform/board.jsp?method=delete&id=5" onClick="return delConfirm();"class="FunctionButton">Delete</a>				
				</td>
			</tr>
        
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="saveBoard.jsp">Add</a></div>
    </div> 
</div>
</body>
</html>
