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
	gap: 10px; 
	align-items: center;
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
    font-size: 2em; 
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
   
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;

   
    padding: 0 !important; 

  
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
    transform: translateY(-50%) scale(0.95); 
}
.btn-search:hover {
    background: #d2e3fc !important;
    
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


<script>
        let currentLocation = { 
    	    lat: 43.6532, 
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


	<script type="text/javascript">
        
        async function initSearch() {
            const query = document.getElementById('Name').value.trim();
            if (!query) {
                alert("Please enter a keyword");
                return;
            }
            clearMarkers();

            try {
              
                const response = await fetch('${pageContext.request.contextPath}/places-proxy?action=search', {
                    method: 'POST',
                    headers: {'Content-Type': 'application/json'},
                    body: JSON.stringify({
                        textQuery: query,
                        languageCode: "en",
                        locationBias: {
                            circle: {
                                center: { 
                                	latitude: currentLocation.lat,
                                    longitude: currentLocation.lng 
                                },
                                radius: 10000.0
                            }
                        }
                    })
                });

                console.log("Complete request parameters:", JSON.stringify({
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
                    const errorMsg = errorData?.error?.message || 'Unknown error';
                    throw new Error('Search failed: ' + errorMsg);
                }

                const data = await response.json();
                if (data.places?.length > 0) {
                    handlePlacesResponse(data.places);
                } else {
                    alert("No results found");
                }
            } catch (error) {
                console.error("Error:", error);
                alert("Search Failed：" + error.message);
            }
        }

    
        async function fetchPlaceDetails(placeId) {
        	try {
        		console.groupCollapsed('[DEBUG] Request tracking details');
                console.log("Recived placeId:", placeId);
                const encodedId = encodeURIComponent(placeId);
                console.log("Encoded parameters:", encodedId);
                const requestURL = new URL(`${pageContext.request.contextPath}/places-proxy`, window.location.href);
                requestURL.searchParams.set('action', 'details');
                requestURL.searchParams.set('placeId', encodedId);
                console.log("Safely constructed URL:", requestURL.href);
                
                
                const response = await fetch(requestURL);
                console.groupEnd();

                if (!response.ok) {
                    const errorData = await response.json();
                    const errorMsg = (errorData.error && errorData.error.message) ? errorData.error.message : 'Unknown error';
                    throw new Error('Failed to load details: ' + errorMsg);
                }

                return await response.json();
            } catch (error) {
                console.error('Details request error:', error);
                throw error;
            }
        }


        function handleMarkerClick(marker) {
    return async function() {
        try {
           
           
            const placeId = marker.customData.placeId;
            console.log("Current Marker object:", marker);
            console.log("Actual placeId value:", placeId);
        
            
            const detail = await fetchPlaceDetails(placeId);
            console.log("[DEBUG] Detailed data obtained:", JSON.stringify(detail, null, 2)); 
            showInfoWindow(marker, detail);
        } catch (error) {
            console.error('Failed to load details:', error);
            infowindow.setContent(`Loading failed：${error.message}`);
            infowindow.open(map, marker);
        }
    };
}

       

function handlePlacesResponse(places) {
    places.forEach(place => {
     
        console.log("API Response Data:", place); 
        const placeId = place.id; 

        const marker = new google.maps.Marker({
            map: map,
            position: new google.maps.LatLng(
                place.location.latitude,
                place.location.longitude
            ),
            title: place.displayName.text,
         
            customData: { 
                placeId: placeId
            }
        });
        
        markers.push(marker);

      
        marker.addListener('click', () => {
            
            handleMarkerClick(marker)(); 
        });
      
    });
}



       
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
    	    console.log("[DEBUG] Full details data:", detail);
    	    
    	    if (detail.photos) {
    	        console.log("[DEBUG] Number of photos:", detail.photos.length);
    	        console.log("[DEBUG] First photo information:", detail.photos[0]);
    	    }

    	   
    	    const displayName = String(detail.displayName?.text || 'Unknown name').trim();
    	    const address = String(detail.formattedAddress || 'Address information is missing').trim();
    	    const ratingValue = typeof detail.rating === 'number' ? detail.rating : NaN;
    	    const reviewCount = parseInt(detail.userRatingCount) || 0;

    	    
    	    console.log("[DEBUG] Processed fields：", { 
    	        displayName, 
    	        address,
    	        ratingValue,
    	        reviewCount 
    	    });

    	
    	    const contentParts = [];
    	    contentParts.push('<div class="infowindow-content">');
    	    
    	
    	    if (detail.photos && detail.photos.length > 0) {
    	const photoName = encodeURIComponent(detail.photos[0].name);
    	const photoUrl = `${pageContext.request.contextPath}/places-proxy?action=photo&name=${photoName}`;
        //const photoUrl = `${pageContext.request.contextPath}/places-proxy?action=photo&name=${photoName}`;
        console.log("[DEBUG] Generated photo URL:", photoUrl);
        contentParts.push(`<img src="${photoUrl}" style="max-width:200px; height:auto;">`);
    }
    	    
    	   
    	    //const contentParts = [];
    	    //contentParts.push('<div class="infowindow-content">');
    	    contentParts.push('<strong>' + displayName + '</strong><br>');
    	    contentParts.push('<span>' + address + '</span>');

    
    	    if (!isNaN(ratingValue)) {
    	        const formattedRating = ratingValue % 1 === 0 
    	                              ? ratingValue.toFixed(0) 
    	                              : ratingValue.toFixed(1);
    	        contentParts.push('<br>Rating: ⭐' + formattedRating);
    	        
    	        if (reviewCount > 0) {
    	            contentParts.push('(' + reviewCount + ' reviews)');
    	        }
    	    }

    	    contentParts.push('</div>');
    	    const content = contentParts.join('');

    	    console.log("[DEBUG] Final HTML content:", content); 

    	    
    	    setTimeout(() => {
    	        infowindow.setContent(content);
    	        infowindow.open(map, marker);
    	    }, 50);
    	}



        function clearMarkers() {
        	
            markers.forEach(marker => {
                marker.setMap(null);    
                marker.setVisible(false); 
            });
            markers = [];
        }
        
        let userLocationMarker = null;

        function locateUser() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(
                    position => {
                        const pos = {
                            lat: position.coords.latitude,
                            lng: position.coords.longitude
                        };
                        currentLocation = pos;
                        
                        if (userLocationMarker) {
                            userLocationMarker.setMap(null);
                        }

                      
                        userLocationMarker = new google.maps.Marker({
                            position: pos,
                            map: map,
                            title: "Your Position",
                            icon: {
                                path: google.maps.SymbolPath.CIRCLE,
                                scale: 8,
                                fillColor: "#4285f4",
                                fillOpacity: 1,
                                strokeWeight: 2,
                                strokeColor: "white"
                            }
                        });

                       
                        map.setCenter(pos);
                        map.setZoom(16);

                        
                        infowindow.setContent("Your current location");
                        infowindow.open(map, userLocationMarker);
                    },
                    error => {
                        handleLocationError(error);
                    }
                );
            } else {
                alert("Your browser does not support geolocation");
            }
        }

      
        function handleLocationError(error) {
            const errorMessages = {
                1: "The user denied the location request",
                2: "Unable to obtain location information",
                3: "Request timeout"
            };
            alert("Positioning failed: " + (errorMessages[error.code] || "Unknown error"));
        }

        
        window.onload = initMap;
    </script>
</body>
</html>
