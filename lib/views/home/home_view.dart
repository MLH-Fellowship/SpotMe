import 'package:flutter/material.dart';

import 'widgets/greeting_texts.dart';
import 'widgets/home_action_buttons.dart';
import 'widgets/home_map.dart';

class HomeView extends StatelessWidget {
  final String title;

  const HomeView({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeMapWidget(),
      bottomSheet: BottomSheet(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 30,
        onClosing: () {},
        enableDrag: false,
        builder: (context) => Container(
          color: Colors.white,
          height: 250,
          width: double.infinity,
          child: Column(
            children: [
              GreetingTextsWidget(),
              SizedBox(height: 20),
              HomeActionButtonsWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
