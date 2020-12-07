import 'package:flutter/material.dart';
import 'package:spot_me/colors.dart';

class CreateSpotScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "create",
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create a spot"),
          elevation: 0,
          backgroundColor: AppColors.magentaColor,
          brightness: Brightness.dark,
        ),
        body: Container(color: AppColors.magentaColor),
      ),
    );
  }
}
