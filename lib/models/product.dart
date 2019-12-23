import 'package:flutter/foundation.dart';
class Product {
  final String id;
  final String title;
  final String description;
  final double price;
  final String quantity;
  final String imageUrl;
  List<String> shopCategories; 

  Product({
    @required this.id,
    @required this.title,
    this.description,
    @required this.price,
    @required this.quantity,
    @required this.imageUrl,
    @required this.shopCategories,
  });
}
