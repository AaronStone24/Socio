import 'package:flutter/material.dart';

class Category_parking {
  final String id;
  final String title;
  final Color color;

  const Category_parking({
    @required this.id,
    @required this.title,
    this.color = Colors.orange,
  });
}