<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	  
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css" />
	<style type="text/css">
		body, html {width: 100%;height: 100%;margin:0;font-family:"微软雅黑";}
		#allmap{width:100%;height:500px;}
		p{margin-left:5px; font-size:14px;}
	</style>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=x1eQLmx3BqdUpmo3fLeF5bxzdXQFvInW	"></script>

</head>
<body>
	<div id="allmap"></div>
	</br>
	</br>
	
	<div id="r-result">
	 
       
	    <form class="f1">
	    
	    <input id="Name" name="name1" type="text" style="width:150px; margin-right:10px;" />
		<input type="button" value="查询" onclick="theLocation()" class="btn btn-brand pill"/>
      </form>
	    
	</div>
  
	
</body>
</html>
<style>
  .f1{
 
  margin-left:250px;
  height:20px;
  }


</style>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");  
	
	map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);

	function theLocation(){
		
	var v1 = document.getElementById("Name").value;
	var local = new BMap.LocalSearch(map, {
		renderOptions:{map: map}
	});
	 
	local.search(v1);
	
	}
	// 百度地图API功能
	var map = new BMap.Map("allmap");  
	map.centerAndZoom(new BMap.Point(116.4035,39.915),8); 
	setTimeout(function(){
		map.setZoom(14);   
	}, 2000);  //2秒后放大到14级
	map.enableScrollWheelZoom(true);
	var map = new BMap.Map('allmap');
	map.centerAndZoom(new BMap.Point(120.305456, 31.570037), 12);
	map.enableScrollWheelZoom(true);
	// 覆盖区域图层测试
	map.addTileLayer(new BMap.PanoramaCoverageLayer());

	var stCtrl = new BMap.PanoramaControl(); //构造全景控件
	stCtrl.setOffset(new BMap.Size(20, 20));
	map.addControl(stCtrl);//添加全景控件
	
	
	
</script>