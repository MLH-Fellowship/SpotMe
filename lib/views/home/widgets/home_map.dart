import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMapWidget extends StatefulWidget {
  final Position position;

  const HomeMapWidget({Key key, this.position}) : super(key: key);

  @override
  State<HomeMapWidget> createState() => HomeMapWidgetState();
}

class HomeMapWidgetState extends State<HomeMapWidget> {
  Completer<GoogleMapController> _controller = Completer();

  Position get position => widget.position;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: GoogleMap(
      mapType: MapType.hybrid,
      myLocationEnabled: true,
      myLocationButtonEnabled: true,
      padding: EdgeInsets.only(top: 30),
      initialCameraPosition: CameraPosition(
        target: position == null
            ? LatLng(50, 50)
            : LatLng(position.latitude, position.longitude),
        zoom: 18,
      ),
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    ));
  }
}
