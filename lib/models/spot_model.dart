import 'package:flutter/material.dart';

@immutable
class SpotModel {
  final String poster;
  final String address;
  final String title;
  final String description;

  const SpotModel(this.poster, this.address, this.title, this.description);
}
