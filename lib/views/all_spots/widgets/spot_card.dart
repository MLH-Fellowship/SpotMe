import 'package:flutter/material.dart';

class SpotCard extends StatelessWidget {
  final String title;
  final String description;

  const SpotCard({this.title, this.description});

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
              Text(this.title,
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              SizedBox(height: 20),
              Text(this.description,
                  style: TextStyle(color: Colors.white, fontSize: 20))
            ],
          )),
      SizedBox(height: 20)
    ]);
  }
}
