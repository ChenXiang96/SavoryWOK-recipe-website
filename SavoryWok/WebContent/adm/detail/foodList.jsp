<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 41 Transitional//EN">
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
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> Dish List
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/food.jsp" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="Please enter a name">
		    <input type="submit" value="search">
		</form>
	</div>

<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
       
        <thead>
            <tr align="center" valign="middle" id="TableTitle">
				<td>No</td>
				<td>Name</td>
				<td>Cuisine Style</td>
				<td>Description</td>
				<td>Uploader Id</td>
				<td>Upload Time</td>
				<td>Likes</td>
                <td>Stars</td>
				<td>Operation</td>
			</tr>
		</thead>	
		
        <tbody id="TableData">
		
			
                
        </tbody>
    </table>
	

	<div id="TableTail" align="center">
		<div class="FunctionButton"><a href="saveFood.jsp">Add</a></div>
    </div> 
</div>
</body>
</html>
