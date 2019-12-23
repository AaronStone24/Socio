import 'package:flutter/material.dart';
import './widgets/complaintTile.dart';

class ComplaintsPage extends StatelessWidget{
  final List<Widget> gridTiles=[
    ComplaintTile("Water","assets/images/water.png"),
    ComplaintTile("Electricity","assets/images/electricity.png"),
    ComplaintTile("Lift","assets/images/lift.png"),
    ComplaintTile("Construction","assets/images/construction.jpg"),
    ComplaintTile("Air Conditioner","assets/images/air conditioner.png"),
    ComplaintTile("Gas Pipeline","assets/images/gas.jpg"),
    ComplaintTile("TV-Connection","assets/images/TV.png"),
    ComplaintTile("Others","assets/images/other.png"),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:  Text('Complaints',style: TextStyle(fontWeight: FontWeight.w600, fontFamily: 'Montserrat')),
      ),
      body: Container(
        height: 410,
        child: GridView.count(
        crossAxisCount: 3,
        padding: EdgeInsets.all(20.0),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: gridTiles,
        ),
      )
    );
  }
}