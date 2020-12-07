import 'package:flutter/material.dart';

import 'greeting_texts.dart';
import 'main_screen_action_buttons.dart';
import 'main_screen_map.dart';

class MainScreen extends StatelessWidget {
  final String title;

  const MainScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainScreenMap(),
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
              GreetingTexts(),
              SizedBox(height: 20),
              MainScreenActionButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
