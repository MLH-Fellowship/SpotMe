import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../shared/colors.dart';


class SingleSpot extends StatelessWidget {

  final String title;
  final String description;
  final String poster;
  final String address;


  const SingleSpot({this.title,this.poster, this.address, this.description});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width:double.infinity,
        color: Colors.pink,
        child:Column(

          children: [

            Expanded(
              child: SizedBox(
                width: 300,
                child: ListView(
                  children: [
                    SizedBox(height:40),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.black,
                      child: Center(child:Text(this.title, style: TextStyle(color: Colors.white, fontSize: 24))),
                    ),
                    SizedBox(height:40),

                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.black,
                      child: Center(child:Text(this.description, style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),

                    SizedBox(height:40),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.black,
                      child: Center(child:Text(this.address, style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),

                    SizedBox(height:40),
                    Container(
                      padding: EdgeInsets.all(20),
                      width: MediaQuery.of(context).size.width * 0.8,
                      color: Colors.black,
                      child: Center(child:Text("Posted by: " + this.poster, style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),
                    SizedBox(height:40),

                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}