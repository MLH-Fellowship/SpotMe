import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:spot_me/views/home/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Spot Me',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: HomeView(),
    );
  }
}
