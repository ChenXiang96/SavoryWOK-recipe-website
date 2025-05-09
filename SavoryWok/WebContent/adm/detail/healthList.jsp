<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 41 Transitional//EN">
<html>
<head>


<title>SavoryWok-Recipe-Management</title>

<style>


.MainArea_Content {
	table-layout: fixed !important;
	width: 98% !important;
	margin: 0 auto !important;
	border-collapse: collapse !important;
}


#TableTitle th, .TableDetail1 td {
	padding: 12px 8px !important;
	text-align: center !important;
	vertical-align: middle !important;
	white-space: nowrap !important;
	overflow: hidden !important;
	text-overflow: ellipsis !important;
	font-size: 15px !important;
	font-family: 'Segoe UI', 'Helvetica Neue', Arial, 'Noto Sans',
		sans-serif !important;
}

#TableTitle th {
	font-size: 16px !important;
	font-weight: 600 !important;
	color: #2c3e50 !important;
	background-color: #f8f9fa !important; 
}

.TableDetail1 td {
	color: #34495e !important; 
	line-height: 1.5 !important;
}

#TableTitle th:nth-child(1), .TableDetail1 td:nth-child(1) {
	width: 7%;
}
#TableTitle th:nth-child(2), .TableDetail1 td:nth-child(2) {
	width: 8%;
}
#TableTitle th:nth-child(3), .TableDetail1 td:nth-child(3) {
	width: 12%;
}
#TableTitle th:nth-child(4), .TableDetail1 td:nth-child(4) {
	width: 10%;
} 
#TableTitle th:nth-child(5), .TableDetail1 td:nth-child(5) {
	width: 20%;
} 
#TableTitle th:nth-child(6), .TableDetail1 td:nth-child(6) {
	width: 15%;
} 
#TableTitle th:nth-child(7), .TableDetail1 td:nth-child(7) {
	width: 10%;
} 
#TableTitle th:nth-child(8), .TableDetail1 td:nth-child(8) {
	width: 18%;
	min-width: 250px;
}

.TableDetail1 td:last-child {
	display: flex !important;
	justify-content: center !important;
	gap: 6px; 
	flex-wrap: nowrap;
}


.TableDetail1 td:nth-child(2) {
	line-height: 0; 
	padding: 5px !important; 
}


.FunctionButton {
	
	display: inline-flex !important;
	justify-content: center;
	
	min-width: 80px !important; 
	
	box-sizing: border-box;
	flex: 1 0 auto; 
	transition: all 0.2s ease;
	font-size: 14px !important;
	align-items: center !important; 
	justify-content: center !important;
	min-height: 36px !important; 
	padding: 8px 20px !important;
	color: #ffffff !important; 
	background: #3498db !important;
	line-height: 1.5 !important; 
	border-radius: 5px;
}

.TableDetail1 td:last-child a {
	color: white !important;
}

.TableDetail1 td:last-child {
	gap: 10px; 
	min-width: 280px; 
	display: flex !important;
	align-items: center !important; 
	justify-content: center !important; 
	min-height: 60px; 
	padding: 12px 0 !important;
}

.FunctionButton:hover {
	opacity: 0.9;
	text-decoration: none;
}


.pagination-links {
	font-family: 'Segoe UI', 'Helvetica Neue', Arial, sans-serif !important;
	font-size: 18px !important;
	font-weight: 500;
	letter-spacing: 0.5px;
}

.pagination-links a {
	color: #2c3e50 !important;
	text-decoration: none;
	margin: 0 8px;
	padding: 6px 12px;
	border-radius: 4px;
	transition: all 0.2s ease;
}

.pagination-links a:hover {
	background-color: #f8f9fa; 
	color: #3498db !important;
}


tr[height="60"] td {
	line-height: 100px !important;
	font-size: 15px !important; 
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
					src="style/images/title_arrow.gif" />Recipe Management
			</div>
		</div>
		<div id="TitleArea_End"></div>
	</div>



	<div id="QueryArea">
		<form action="/wirelessplatform/food.jsp" method="get">
			<input type="hidden" name="method" value="search"> <input
				type="text" name="keyword" title="Please enter dish name"> <input
				type="submit" value="Search">
		</form>
	</div>
	
	<div id="MainArea">
		<table class="MainArea_Content" align="center" cellspacing="0"
			cellpadding="0">
			

			<tr align="center" valign="middle" id="TableTitle">
				<th>Index</th>
				<th>Image</th>
				<th>Name</th>
				<th>Category</th>
				<th>Date Created</th>
				<th>Number of Steps</th>
				<th>Total Likes</th>
				<th>Options</th>
			</tr>

			
			<tbody id="TableData">
				<c:forEach items="${ list}" var="p">
					<tr class="TableDetail1">

						<td>${p.id }&nbsp;</td>
						<td><img src="${ctx }/${p.image}" width="70" height="55" /></td>
						<td>${p.name }&nbsp;</td>
						<td>Main Dishes&nbsp;</td>
						<td>${p.date }</td>
						<td>36&nbsp;</td>
						<td>23&nbsp;</td>
						<td><a href="${ctx }/health/edit?id=${p.id}"
							class="FunctionButton">Edit</a> <a
							href="${ctx }/health/delete?id=${p.id}"
							onClick="return delConfirm();" class="FunctionButton">Delete</a> <a
							href="${ctx }/health/add" class="FunctionButton">Add</a></td>


					</tr>
				</c:forEach>

				<tr height="60">
					<td colspan="10" align="center" class="pagination-links"><a
						href="?pageNum=1" style="font-size: 16px !important;">First</a> │
						<a href="?pageNum=${page.prePageNum }"
						style="font-size: 16px !important;">Previous</a> │ <a
						href="?pageNum=${page.nextPageNum }"
						style="font-size: 16px !important;">Next</a> │ <a
						href="?pageNum=${page.totalPageNum }"
						style="font-size: 16px !important;">Last</a></td>
				</tr>

			</tbody>
		</table>

		
		<!--  div id="TableTail" align="center">
		<div class="FunctionButton"><a href="${ctx }/health/add">Add</a></div>
    </div-->
	</div>
</body>
</html>
