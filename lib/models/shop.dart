import 'package:flutter/foundation.dart';
class Shop {
  final String id;
  final String title;
  final double rating;
  List<String> categories;
  Shop({
  @required this.id,
  @required this.title,
  @required this.rating,
  @required this.categories});
}