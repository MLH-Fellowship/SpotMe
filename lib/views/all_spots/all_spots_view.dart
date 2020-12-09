import 'package:flutter/material.dart';
import '../../shared/colors.dart';
import 'widgets/spot_card.dart';
import '../../models/spot_model.dart';

class AllSpotsView extends StatelessWidget {
  final List _spots = [
    SpotModel("Laurell Seville", "114 West Market, Bloomington, MN 55425, United States", "Help with car tyre",
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
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
                      poster: _spots[index].poster,
                      address: _spots[index].address,
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
