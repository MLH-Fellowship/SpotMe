import 'package:flutter/material.dart';
import 'package:spot_me/colors.dart';
import "spot.dart";

class AllSpotsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "need",
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("All Spots")),
          elevation: 0,
          backgroundColor: AppColors.blueColor,
          brightness: Brightness.dark,
        ),
        body: Container(
            color: AppColors.blueColor,
            width: double.infinity,
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Where you can help",
                              style: TextStyle(
                                  fontSize: 40.0, color: Colors.white)),
                          SizedBox(height: 10),
                          Text("10 spots around you",
                              style: TextStyle(
                                  color: Colors.grey[300], fontSize: 20)),
                          SizedBox(height: 30),
                        ])),
                Column(
                  children: [Spot(), Spot()],
                )
              ],
            )),
      ),
    );
  }
}
