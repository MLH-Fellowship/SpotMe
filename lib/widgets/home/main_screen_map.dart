import 'package:flutter/material.dart';
import 'dart:async';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MainScreenMap extends StatefulWidget {
  @override
  State<MainScreenMap> createState() => MainScreenMapState();
}

class MainScreenMapState extends State<MainScreenMap> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 18,
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: _kGooglePlex,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
    );
  }
}
