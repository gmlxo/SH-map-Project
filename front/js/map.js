window.onload = function map() {
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
        mapOption = { 
            center: new kakao.maps.LatLng(37.373583, 127.140544),
            level: 3 // 지도의 확대 레벨
        };

    console.log(mapContainer)
    console.log(mapOption)
    
    let map = new kakao.maps.Map(mapContainer, mapOption);
}

function setMarkers(){
    // id가 facilities 인 값을 받아온다
    var guabunSelect = document.getElementById("facilities").options[document.getElementById("facilities").selectedIndex].value;
    var positions;

    if (guabunSelect != "0") {
        // facilities 가 1_음식점 일시 
        if (guabunSelect == "1") {
            // 마커를 표시할 위치와 title 객체 배열입니다

            positions = [
                {
                    title: '효자촌 미래타운 수제돈까스',
                    latlng: new kakao.maps.LatLng(37.373058, 127.137566)
                },
                {
                    title: '국시 엔 국수',
                    latlng: new kakao.maps.LatLng(37.371743, 127.139374)
                },
                {
                    title: '앙토낭 카렘',
                    latlng: new kakao.maps.LatLng(37.373933, 127.136649)
                }
            ];
        }
        alert(map)
        // 마커 이미지의 이미지 주소입니다
        var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";

        if(positions != null) {
            for (var i = 0; i < positions.length; i++) {

                // 마커 이미지의 이미지 크기 입니다
                var imageSize = new kakao.maps.Size(24, 35);
    
                // 마커 이미지를 생성합니다    
                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
    
                // 마커를 생성합니다
                marker = new kakao.maps.Marker({
                    map: map, // 마커를 표시할 지도
                    position: positions[i].latlng, // 마커를 표시할 위치
                    title: positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
                    image: markerImage // 마커 이미지 
                });

            }
        }
    }
}