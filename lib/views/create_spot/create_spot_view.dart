import 'package:flutter/material.dart';
import '../../shared/colors.dart';

class CreateSpotView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "create",
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create a spot"),
          elevation: 0,
          backgroundColor: AppColors.magenta,
          brightness: Brightness.dark,
        ),
        body: Container(color: AppColors.magenta),
      ),
    );
  }
}
