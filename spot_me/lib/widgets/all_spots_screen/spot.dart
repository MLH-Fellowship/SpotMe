import 'package:flutter/material.dart';
import 'package:spot_me/colors.dart';

class Spot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * 0.90,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("56 Groot Street",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              SizedBox(height: 20),
              Text(
                  "Need help with gardening, landscaping,digging in the ground, planting trees andwatering the plants",
                  style: TextStyle(color: Colors.white, fontSize: 20))
            ],
          )),
      SizedBox(height: 20)
    ]);
  }
}
