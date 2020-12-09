import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spot_me/views/all_spots/single_spot_view.dart';

class SpotCard extends StatelessWidget {
  final String title;
  final String description;
  final String poster;
  final String address;

  const SpotCard({this.title,this.poster, this.address, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      GestureDetector(
        onTap:() {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SingleSpot(title: title, poster:this.poster, address:this.address, description: description)),
          );
        },
        child: Container(
            padding: EdgeInsets.all(20),
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
      ),
      SizedBox(height: 20)
    ]);
  }
}
