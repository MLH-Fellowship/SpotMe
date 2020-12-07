import 'package:flutter/material.dart';
import 'package:spot_me/colors.dart';
import 'spot_card.dart';
import 'spot.dart';

class AllSpotsScreen extends StatelessWidget {
  List _spots = [
    Spot("56 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    Spot("65 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    Spot("78 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    Spot("89 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    Spot("105 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
  ];

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "need",
      child: Scaffold(
        appBar: AppBar(
          title: Text("All Spots"),
          elevation: 0,
          backgroundColor: AppColors.magentaColor,
          brightness: Brightness.dark,
        ),
        body: Container(
            color: AppColors.magentaColor,
            width: double.infinity,
            child: Column(children: [
              Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Where you can help",
                            style:
                                TextStyle(fontSize: 40.0, color: Colors.white)),
                        SizedBox(height: 10),
                        Text("10 spots around you",
                            style: TextStyle(
                                color: Colors.grey[300], fontSize: 20)),
                        SizedBox(height: 30),
                      ])),
              Expanded(
                  child: ListView.builder(
                      itemCount: _spots.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SpotCard(
                            title: _spots[index].title,
                            description: _spots[index].description);
                      })),
            ])),
      ),
    );
  }
}
