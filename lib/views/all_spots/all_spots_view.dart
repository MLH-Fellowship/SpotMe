import 'package:flutter/material.dart';
import '../../shared/colors.dart';
import 'widgets/spot_card.dart';
import '../../models/spot_model.dart';

class AllSpotsView extends StatelessWidget {
  final List _spots = [
    SpotModel("56 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    SpotModel("65 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    SpotModel("78 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    SpotModel("89 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
    SpotModel("105 Groot Street",
        "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Where you can help",
                      style: TextStyle(fontSize: 40.0, color: Colors.white)),
                  SizedBox(height: 10),
                  Text("10 spots around you",
                      style: TextStyle(color: Colors.grey[300], fontSize: 20)),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _spots.length,
                itemBuilder: (BuildContext context, int index) {
                  return SpotCard(
                      title: _spots[index].title,
                      description: _spots[index].description);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
