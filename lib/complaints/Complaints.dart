import 'package:flutter/material.dart';
import 'package:startup_namer/complaints/widgets/complaintTile.dart';

class ComplaintsPage extends StatelessWidget{
  final List<Widget> gridTiles=[
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
    ComplaintTile("Water","socio/lib/complaints/water.png"),
  ];
  @override
  Widget build(BuildContext context){
    return GridView.count(
      crossAxisCount: 3,
      padding: EdgeInsets.all(20.0),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: gridTiles,
    );
  }
}