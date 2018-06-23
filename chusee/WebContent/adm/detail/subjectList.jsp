<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 41 Transitional//EN">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${ctx }/adm/detail/style/js/jquery.js"></script>
<script type="text/javascript" src="${ctx }/adm/detail/style/js/page_common.js"></script>
<link href="${ctx }/adm/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${ctx }/adm/detail/style/css/index_1.css" />
</head>
<body>
<!-- 页面标题 -->
<div id="TitleArea">
	<div id="TitleArea_Head"></div>
	<div id="TitleArea_Title">
		<div id="TitleArea_Title_Content">
			<img border="0" width="13" height="13" src="style/images/title_arrow.gif"/> 健康列表
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>


	<!-- 过滤条件 -->
	<div id="QueryArea">
		<form action="/wirelessplatform/food.jsp" method="get">
			<input type="hidden" name="method" value="search">
			<input type="text" name="keyword" title="请输入菜品名称">
			<input type="submit" value="搜索">
		</form>
	</div>
<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
    <table class="MainArea_Content" align="center" cellspacing="0" cellpadding="0">
        <!-- 表头-->
       
            <tr align="center" valign="middle" id="TableTitle">
				<th>菜编号</th>
				<th>图片</th>
				<th>菜名</th>
				<th>所属菜系</th>
				<th>描述</th>
				<th>上传者id</th>
				<th>上传时间</th>
				<th>喜欢数</th>
                <th>收藏数</th>
				<th>操作</th>
			</tr>
			
		<!--显示数据列表 -->
        <tbody id="TableData">
			<c:forEach items="${ list}" var="p">
			<tr class="TableDetail1">
				
				<td>${p.pid }&nbsp;</td>
				<td><img src="${ctx }/${p.image}" width="40" height="40"/></td>
				<td>${p.pname }&nbsp;</td>
				<td>粤菜&nbsp;</td>
				<td>${p.pdesc }</td>
				<td>id</td>
				<td>${p.pdate }</td>
				<td>36&nbsp;</td>
                <td>23&nbsp;</td>
				<td>
					<a href="${ctx }/subject/edit?pid=${p.pid}"  class="FunctionButton">更新</a>				
					<a href="${ctx }/subject/delete?pid=${p.pid}" onClick="return delConfirm();"class="FunctionButton">删除</a>
					<a href="${ctx }/subject/add"  class="FunctionButton">增加</a>				
				</td>
				
				
			</tr>
			</c:forEach>
  			
 <tr height="50"><td colspan="10" align="center">共有${page.totalCount}条数据，一共${page.totalPageNum }页，
      <a href="?pageNum=1">首页</a>，<a href="?pageNum=${page.prePageNum }">上一页</a>，<a href="?pageNum=${page.nextPageNum }">下一页</a>，<a href="?pageNum=${page.totalPageNum }">末页</a></td></tr>
			
                
        </tbody>
    </table>
	
   <!-- 其他功能超链接 -->
	<!--div id="TableTail" align="center">
		<div class="FunctionButton"><a href="${ctx }/health/add">添加</a></div>
    </div--> 
</div>
</body>
</html>
