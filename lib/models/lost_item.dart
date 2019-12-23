import 'package:flutter/foundation.dart';

class LostItem{
  final String itemId;
  final String itemTitle;
  final String itemDescription;
  final String ownerName;
  final String ownerDetails;
  final String imageUrl;
  final DateTime dateOfMissing;
  LostItem({
    @required this.itemId,
    @required this.itemTitle,
    this.ownerName='',
    @required this.itemDescription,
    this.ownerDetails='',
    this.dateOfMissing,
    this.imageUrl='',
  }
  );
}