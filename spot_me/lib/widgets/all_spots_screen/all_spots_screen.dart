import 'package:flutter/material.dart';
import 'package:spot_me/colors.dart';

class AllSpotsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "need",
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Spots"),
          elevation: 0,
          backgroundColor: AppColors.blueColor,
          brightness: Brightness.dark,
        ),
        body: Container(color: AppColors.blueColor),
      ),
    );
  }
}
