import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../shared/colors.dart';
import '../all_spots/all_spots_view.dart';
import 'widgets/greeting_texts.dart';
import 'widgets/home_action_buttons.dart';
import 'widgets/home_map.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _pc = PanelController();
  Position savedPosition;

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permantly denied, we cannot request permissions.');
    }
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return Future.error(
            'Location permissions are denied (actual value: $permission).');
      }
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.medium,
      forceAndroidLocationManager: true,
      timeLimit: Duration(seconds: 10),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 250,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        renderPanelSheet: false,
        controller: _pc,
        body: FutureBuilder<Position>(
          future: _determinePosition(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data != null) {
              Future.delayed(Duration.zero, () async {
                setState(() {
                  savedPosition = snapshot.data;
                });
              });
              return HomeMapWidget(position: snapshot.data as Position);
            }
            return Center(child: Text("Loading..."));
          },
        ),
        parallaxEnabled: true,
        collapsed: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0)),
          ),
          child: Column(
            children: [
              GreetingTextsWidget(position: savedPosition),
              SizedBox(height: 20),
              HomeActionButtonsWidget(onWantToVolunteerPressed: () {
                if (_pc.isAttached) _pc.open();
              }),
            ],
          ),
        ),
        panel: AllSpotsView(),
      ),
    );
  }
}
