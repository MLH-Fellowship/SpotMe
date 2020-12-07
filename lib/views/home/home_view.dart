import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../shared/colors.dart';
import 'widgets/greeting_texts.dart';
import 'widgets/home_action_buttons.dart';
import 'widgets/home_map.dart';
import '../all_spots/all_spots_view.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _pc = PanelController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: 200,
        maxHeight: MediaQuery.of(context).size.height * 0.8,
        renderPanelSheet: false,
        controller: _pc,
        body: HomeMapWidget(),
        collapsed: Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24.0),
                topRight: Radius.circular(24.0)),
          ),
          child: Column(
            children: [
              GreetingTextsWidget(),
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
