<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/map_style.css">
    <title>main page</title>
    <!-- kakao js 연결 -->
    <script type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fe37a9e7ec13e95e1ca860b3ac1845f0"></script>
</head>
<body>
	<div class="wrapper">
        <div class="box">
            <div id="map">
                <div class="search-box">
                    <label>편의시설 : </label>
                    <select name="" id="">
                        <option value="0">전체</option>
                        <option value="1">음식점</option>
                        <option value="2">마트</option>
                        <option value="3">놀거리</option>
                        <option value="4">편의시설</option>
                    </select>
                </div>
            </div>
            <script>
                var container = document.getElementById('map');
                var options = {
                    // 기본 좌표 설정 _ 양영디지털고등학교
                    center: new kakao.maps.LatLng(37.373583, 127.140544),
                    level: 2
                };
                var map = new kakao.maps.Map(container, options);
            </script>
        </div>
    </div>
</body>
</html>