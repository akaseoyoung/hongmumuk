import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

import '../../models/latlng.dart';

class NaverMapWidget extends StatelessWidget {
  final String restaurant;
  final String type;
  final int index; // 추가된 index 필드
  // final NLatLng latLng = NLatLng(37.54915210095082, 126.92202163309558);


  NaverMapWidget({super.key,
    required this.restaurant, required this.type, required this.index});

  @override
  Widget build(BuildContext context) {
    final List<NLatLng> latLngList = matchRestaurantLatLng(type);
    final NLatLng latLng = latLngList.length > index ? latLngList[index] : NLatLng(0, 0);

    final cameraPosition = NCameraPosition(
      target: latLng,
      zoom: 15,
    );

    return NaverMap(
      options: NaverMapViewOptions(
        indoorEnable: true,
        locationButtonEnable: false,
        consumeSymbolTapEvents: false,
        rotationGesturesEnable: false,
        scrollGesturesEnable: true,
        zoomGesturesEnable: true,
        stopGesturesEnable: true,
        logoClickEnable: false,
        scaleBarEnable: false,
        initialCameraPosition: cameraPosition,
      ),
      onMapReady: (controller) async {
        // 필요한 초기화 작업 수행
        final iconImage = await NOverlayImage.fromWidget(
            widget: Image.asset('assets/image/logo_non.png'),
            size: const Size(16, 16),
            context: context);
        final marker = NMarker(
          id: restaurant,
          position: latLng,
          icon: iconImage,
        );
        controller.addOverlay(marker);
        final onMarkerInfoWindow = NInfoWindow.onMarker(
            id: marker.info.id, text: restaurant);
        marker.openInfoWindow(onMarkerInfoWindow);
        marker.size;
        },
    );
  }
}