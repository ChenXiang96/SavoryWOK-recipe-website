<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>SavoryWok-Admin-Panel</title>
</head>
<frameset rows="100px,*,19px" framespacing="0" border="0" frameborder="0">
    <frame src="detail/top.jsp" scrolling="no" noresize /> 
    <frameset cols="205px,*">  <!-- 原178px → 205px（200px内容+5px边距） -->
        <frame noresize src="detail/left.jsp" scrolling="yes" /> 
        <frame noresize name="right" src="detail/right.jsp" scrolling="yes" /> 
    </frameset>
    <frame noresize name="status_bar" scrolling="no" src="detail/bottom.jsp" />
</frameset>

	<noframes>
		<body>
			Your browser does not support frame layout, it is recommended that you use<a href="http://www.firefox.com.cn/download/" style="text-decoration: none;">FireFox Browser</a>,
			<a href="http://www.google.cn/intl/zh-CN/chrome/" style="text-decoration: none;">Google Chrome Browser</a>
		</body>
	</noframes>
</html>