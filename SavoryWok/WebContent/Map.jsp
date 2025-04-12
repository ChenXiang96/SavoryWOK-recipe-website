<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
<style type="text/css">
body, html {
	width: 100%;
	height: 100%;
	margin: 0;
	font-family: "微软雅黑";
}

#map {
	width: 100%;
	height: 500px;
}

.infowindow-content {
	max-width: 250px;
	padding: 8px;
	line-height: 1.5;
	color: #333;
	background: white;
	font-size: 14px;
}

#r-result {
	display: flex;
	justify-content: center; 
	margin-top:8px; 
}

.f1 {
	display: flex;
	gap: 10px; /* 表单元素间距 */
	align-items: center; /* 垂直居中 */
}

.f1 {
    max-width: 800px;
    margin: 0 auto;
    padding: 0 15px;
}

.search-container {
    display: flex;
    gap: 10px;
    align-items: center;
}

.btn-location {
    background: #AFEEEE;
    border: 1px solid #dadce0;
    color: #4285f4;
    padding: 10px 15px;
    border-radius: 24px;
    cursor: pointer;
    transition: all 0.2s;
    white-space: nowrap;
    font-size: 16px;
}

.btn-location::before {
    content: '📍';
    font-size: 2em;  /* 单独放大图标 */
    margin-right: 6px;
}

.btn-location:hover {
    background: #f1f3f4;
    box-shadow: 0 1px 2px rgba(60,64,67,0.3);
}

.input-wrapper {
    position: relative;
    flex-grow: 1;
    width:280px;
}

.btn-search {
    /* 新增尺寸控制 */
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;

    /* 修改padding */
    padding: 0 !important; /* 移除原有padding */

    /* 保持原有其他属性 */
    position: absolute;
    right: 5px;
    top: 50%;
    transform: translateY(-50%);
    background: #e8f0fe !important;
    border: none;
    font-size: 20px;
    color: #4285f4;
    cursor: pointer;
    transition: all 0.2s;
    border-radius: 50%;
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
}
.btn-search:active {
    transform: translateY(-50%) scale(0.95); /* 点击动效 */
}
.btn-search:hover {
    background: #d2e3fc !important; /* 悬停颜色 */
    
    box-shadow: 0 2px 6px rgba(66,133,244,0.2);
}

#Name {
    width: 100%;
    padding: 12px 45px 12px 20px;
    border: 1px solid #dfe1e5;
    border-radius: 24px;
    font-size: 16px;
    transition: all 0.3s;
    background: #fff;
}

#Name:focus {
    border-color: #4285f4;
    box-shadow: 0 1px 6px rgba(66,133,244,0.3);
    outline: none;
}

.btn-search {
    position: absolute;
    right: 15px;
    top: 50%;
    transform: translateY(-50%);
    background: transparent;
    border: none;
    padding: 0;
    font-size: 20px;
    color: #70757a;
    cursor: pointer;
    transition: color 0.2s;
}

.btn-search:hover {
    color: #4285f4;
}
</style>

<!-- 地图初始化脚本 -->
<script>
        let currentLocation = { 
    	    lat: 43.6532,  // 默认多伦多
    	    lng: -79.3832 
    	};
        let map;
        let markers = [];
        let infowindow;

        window.initMap = function() {
            map = new google.maps.Map(document.getElementById('map'), {
                center: { lat: 43.6532, lng: -79.3832 },
                zoom: 14
            });
            infowindow = new google.maps.InfoWindow();
        };
    </script>
<script
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD265wFZtTr2apP3qyfn_QLIDfw5rgMRyc&callback=initMap&language=en"
	async defer></script>
</head>
<body>
	<div id="map"></div>
	<br />
	<br />


	<div id="r-result">
		<form class="f1">
			<div class="search-container">
				<input type="button" value="📍 My Location" onclick="locateUser()"
					class="btn-location" />
				<div class="input-wrapper">
					<input id="Name" type="text" placeholder="Enter a food keyword..." />
					<button type="button" onclick="initSearch()" class="btn-search">
						🔍</button>
				</div>
			</div>
		</form>
	</div>

	<!-- 全部前端逻辑 -->
	<script type="text/javascript">
        // 核心搜索功能
        async function initSearch() {
            const query = document.getElementById('Name').value.trim();
            if (!query) {
                alert("请输入搜索关键词");
                return;
            }
            clearMarkers();

            try {
                // 修正后的fetch请求
                const response = await fetch('${pageContext.request.contextPath}/places-proxy?action=search', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({
                        textQuery: query,
                        languageCode: "en",
                        locationBias: {
                            circle: {
                                center: { 
                                	latitude: currentLocation.lat,  // 使用全局变量
                                    longitude: currentLocation.lng 
                                },
                                radius: 10000.0
                            }
                        }
                    })
                });

                console.log("完整请求参数:", JSON.stringify({
                    textQuery: query,
                    languageCode: "en",
                    locationBias: {
                        circle: {
                            center: { 
                                latitude: 43.6532, 
                                longitude: -79.3832 
                            },
                            radius: 5000.0
                        }
                    }
                }));

                if (!response.ok) {
                    const errorData = await response.json();
                    const errorMsg = errorData?.error?.message || '未知错误';
                    throw new Error('搜索失败: ' + errorMsg);
                }

                const data = await response.json();
                if (data.places?.length > 0) {
                    handlePlacesResponse(data.places);
                } else {
                    alert("未找到结果");
                }
            } catch (error) {
                console.error("搜索错误:", error);
                alert("搜索失败：" + error.message);
            }
        }

        // 获取地点详情（通过代理）
        async function fetchPlaceDetails(placeId) {
        	try {
        		console.groupCollapsed('[DEBUG] 详情请求追踪');
                console.log("收到的placeId参数:", placeId);
                const encodedId = encodeURIComponent(placeId);
                console.log("编码后参数:", encodedId);
                const requestURL = new URL(`${pageContext.request.contextPath}/places-proxy`, window.location.href);
                requestURL.searchParams.set('action', 'details');
                requestURL.searchParams.set('placeId', encodedId);
                console.log("安全构造的URL:", requestURL.href);
                
                
                const response = await fetch(requestURL);
                console.groupEnd();

                if (!response.ok) {
                    const errorData = await response.json();
                    const errorMsg = (errorData.error && errorData.error.message) ? errorData.error.message : '未知错误';
                    throw new Error('详情加载失败: ' + errorMsg);
                }

                return await response.json();
            } catch (error) {
                console.error('详情请求错误:', error);
                throw error;
            }
        }

        // 标记点击处理（保持不变）
        function handleMarkerClick(marker) {
    return async function() {
        try {
            // -------------------- 关键修改开始 --------------------
            // 确保从正确对象中获取placeId
            const placeId = marker.customData.placeId;
            console.log("当前Marker对象:", marker);
            console.log("实际placeId值:", placeId);
            // -------------------- 关键修改结束 --------------------
            
            const detail = await fetchPlaceDetails(placeId);
            console.log("[DEBUG] 获取到的详情数据:", JSON.stringify(detail, null, 2)); // 结构化输出
            showInfoWindow(marker, detail);
        } catch (error) {
            console.error('详情加载失败:', error);
            infowindow.setContent(`加载失败：${error.message}`);
            infowindow.open(map, marker);
        }
    };
}

        // 处理搜索结果（保持不变）

function handlePlacesResponse(places) {
    places.forEach(place => {
        // -------------------- 关键修改开始 --------------------
        // 确认API返回数据结构（Google新API返回的placeId字段是id）
        console.log("API响应数据:", place); 
        const placeId = place.id; 

        const marker = new google.maps.Marker({
            map: map,
            position: new google.maps.LatLng(
                place.location.latitude,
                place.location.longitude
            ),
            title: place.displayName.text,
            // 确保存储字段与API一致
            customData: { 
                placeId: placeId // 必须与API返回的字段名完全一致
            }
        });
        
        markers.push(marker);

        // 使用箭头函数保持上下文
        marker.addListener('click', () => {
            // 直接传递当前marker对象
            handleMarkerClick(marker)(); 
        });
        // -------------------- 关键修改结束 --------------------
    });
}



        // 信息窗口显示（保持不变）
       function escapeHtml(unsafe) {
    return unsafe && typeof unsafe === 'string' 
        ? unsafe
            .replace(/&/g, "&amp;")
            .replace(/</g, "&lt;")
            .replace(/>/g, "&gt;")
            .replace(/"/g, "&quot;")
            .replace(/'/g, "&#039;")
        : '';
}
       function showInfoWindow(marker, detail) {
    	    console.log("[DEBUG] 完整详情数据:", detail);
    	    
    	    if (detail.photos) {
    	        console.log("[DEBUG] 照片数量:", detail.photos.length);
    	        console.log("[DEBUG] 第一张照片信息:", detail.photos[0]);
    	    }

    	    // 强制类型转换确保值为字符串
    	    const displayName = String(detail.displayName?.text || '未知名称').trim();
    	    const address = String(detail.formattedAddress || '地址信息缺失').trim();
    	    const ratingValue = typeof detail.rating === 'number' ? detail.rating : NaN;
    	    const reviewCount = parseInt(detail.userRatingCount) || 0;

    	    // 显式打印处理后的值
    	    console.log("[DEBUG] 处理后的字段：", { 
    	        displayName, 
    	        address,
    	        ratingValue,
    	        reviewCount 
    	    });

    	 // ====================== 新增图片处理逻辑开始 ======================
    	    const contentParts = [];
    	    contentParts.push('<div class="infowindow-content">');
    	    
    	 // 1. 添加图片（必须放在内容最顶部）
    	    if (detail.photos && detail.photos.length > 0) {
    	const photoName = encodeURIComponent(detail.photos[0].name); // 关键修复
    	const photoUrl = `${pageContext.request.contextPath}/places-proxy?action=photo&name=${photoName}`;
        //const photoUrl = `${pageContext.request.contextPath}/places-proxy?action=photo&name=${photoName}`;
        console.log("[DEBUG] 生成的照片URL:", photoUrl); // 新增调试日志
        contentParts.push(`<img src="${photoUrl}" style="max-width:200px; height:auto;">`);
    }
    	    
    	    // 分步构建HTML内容
    	    //const contentParts = [];
    	    //contentParts.push('<div class="infowindow-content">');
    	    contentParts.push('<strong>' + displayName + '</strong><br>'); // 改用字符串拼接
    	    contentParts.push('<span>' + address + '</span>');

    	    // 处理评分逻辑
    	    if (!isNaN(ratingValue)) {
    	        const formattedRating = ratingValue % 1 === 0 
    	                              ? ratingValue.toFixed(0) 
    	                              : ratingValue.toFixed(1);
    	        contentParts.push('<br>评分：⭐' + formattedRating);
    	        
    	        if (reviewCount > 0) {
    	            contentParts.push('（' + reviewCount + '条评价）');
    	        }
    	    }

    	    contentParts.push('</div>');
    	    const content = contentParts.join('');

    	    console.log("[DEBUG] 最终HTML内容:", content); 

    	    // 确保异步更新
    	    setTimeout(() => {
    	        infowindow.setContent(content);
    	        infowindow.open(map, marker);
    	    }, 50);
    	}








        // 清除标记（保持不变）
        function clearMarkers() {
        	// 双重保险清除机制
            markers.forEach(marker => {
                marker.setMap(null);    // 从地图移除
                marker.setVisible(false); // 彻底隐藏
            });
            markers = [];
        }
        
        let userLocationMarker = null; // 用于存储用户位置标记

        function locateUser() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(
                    position => {
                        const pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude
                        };
                        currentLocation = pos;
                        // 移除旧标记
                        if (userLocationMarker) {
                            userLocationMarker.setMap(null);
                        }

                        // 创建新标记
                        userLocationMarker = new google.maps.Marker({
                            position: pos,
                            map: map,
                            title: "您的位置",
                            icon: {
                                path: google.maps.SymbolPath.CIRCLE,
                                scale: 8,
                                fillColor: "#4285f4",
                                fillOpacity: 1,
                                strokeWeight: 2,
                                strokeColor: "white"
                            }
                        });

                        // 移动地图中心
                        map.setCenter(pos);
                        map.setZoom(16);

                        // 显示信息窗口
                        infowindow.setContent("您当前的位置");
                        infowindow.open(map, userLocationMarker);
                    },
                    error => {
                        handleLocationError(error);
                    }
                );
            } else {
                alert("浏览器不支持地理定位功能");
            }
        }

        // 错误处理
        function handleLocationError(error) {
            const errorMessages = {
                1: "用户拒绝了位置请求",
                2: "无法获取位置信息",
                3: "请求超时"
            };
            alert("定位失败: " + (errorMessages[error.code] || "未知错误"));
        }

        // 初始化地图（保持不变）
        window.onload = initMap;
    </script>
</body>
</html>
