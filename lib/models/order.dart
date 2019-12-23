import 'package:flutter/foundation.dart';

class Order{
  String id;
  String shopId;
  String shopName;
  String title;
  int quantity;
  double price;

  Order(
    {
     @required this.id,
     @required this.shopId,
     @required this.title,
     @required this.quantity,
     @required this.price,
     @required this.shopName,
    }
  );
}