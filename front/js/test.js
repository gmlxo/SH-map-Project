

function getPoints() {
    var gubun1 = document.getElementById("facilities").options[document.getElementById("facilities").selectedIndex].value;
    var points1;
    if (gubun1 == "1") {
        points1 = [
            new kakao.maps.LatLng(37.373058, 127.137566)
        ]
    }
    console.log(points1);
    setPoint(points1);
}

function setPoint(points1) {
    map();
    // 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
    var bounds = new kakao.maps.LatLngBounds();

    var i, marker;

    for (i = 0; i < points.length; i++) {
        // 배열의 좌표들이 잘 보이게 마커를 지도에 추가합니다
        marker = new kakao.maps.Marker({ position: points1[i] });
        marker.setMap(map);

        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(points1[i]);
    }
}

function setBounds() {
    // LatLngBounds 객체에 추가된 좌표들을 기준으로 지도의 범위를 재설정합니다
    // 이때 지도의 중심좌표와 레벨이 변경될 수 있습니다
    map.setBounds(bounds);
}