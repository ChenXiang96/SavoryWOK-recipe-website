<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
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
			
				
					<img border="0" width="13" height="13" src="${ctx }/adm/detail/style/images/title_arrow.gif"/> 更新新菜品
				
				
			
		</div>
    </div>
	<div id="TitleArea_End"></div>
</div>

<!-- 主内容区域（数据列表或表单显示） -->
<div id="MainArea">
	<!-- 表单内容 -->
	<form action="${ctx }/subject/update?pid=${subject.pid}" method="post" enctype="multipart/form-data">
		<!-- 本段标题（分段标题） -->
		<div class="ItemBlock_Title">
        	<img width="4" height="7" border="0" src="${ctx }/adm/detail/style/images/item_point.gif"> 菜品信息&nbsp;
        </div>
		<!-- 本段表单字段 -->
        <div class="ItemBlockBorder">
            <div class="ItemBlock">
				<div class="ItemBlock2">
					<table cellpadding="0" cellspacing="0" class="mainForm">
					 
                    <tr>
							<td width="80px">菜系</td>
							<td>
                            <select name="cid" style="width:80px">
	                            
			   						<option value="1" 
			   							selected="selected"
			   						>粤菜</option>
			   						
			   					
			   						<option value="2" 
			   							
			   						>川菜</option>
			   						
			   					
			   						<option value="3" 
			   							
			   						>湘菜</option>
			   						
			   					
			   						<option value="4" 
			   							
			   						>东北菜</option>
			   						
			   					
                            </select>
                             <input type="hidden" name="id" value="1" /></td>
						</tr>
						<tr>
							<td width="80px">菜名</td>
							<td><input type="text" id="pname" name="pname" class="InputStyle" value="${subject.pname}"/></td>
						</tr>
						<tr>
							<td width="80px"></td>
							<td><input type="hidden" id="pid" name="pid" class="InputStyle" value="${subject.pid } "/></td>
						</tr>
						<tr>
							<td>简介</td>
							<td><textarea name="pdesc" id="pdesc" class="TextareaStyle">${subject.pdesc }</textarea></td>
						</tr>
						<tr>
							<td width="80px">菜品图片</td>
							<td>
								
									<img style='max-width:68px;width:68px;width:expression(width>68?"68px":width "px");max-width: 68px;' 
									src="${ctx }/adm/detail/style/images/baizhuoxia.jpg">
									<input type="hidden" name="image" value="baizhuoxia.jpg">
								
								<input type="file" name="imageUrl"/> *
							</td>
						</tr>
					</table>
				</div>
            </div>
        </div>
		
		
		<!-- 表单操作 -->
		<div id="InputDetailBar">
            
				
					 <input type="submit" value="修改" class="FunctionButtonInput">
				
			
			
            
            <a href="javascript:history.go(-1);" class="FunctionButton">返回</a>
        </div>
	</form>
</div>
</body>
</html>
