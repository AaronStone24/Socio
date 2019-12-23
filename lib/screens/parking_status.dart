import 'package:flutter/material.dart';
import '../dummy_data_visitors.dart';

class ParkingStatus extends StatelessWidget {
  Widget buildSlots(String title, Color color ){
    return Container(
      
      padding: const EdgeInsets.all(35),
      child: Text(title,style: TextStyle(
        fontFamily: 'Raleway',
        fontSize:25.0,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.normal)
        ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Status'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top:20.0,
          right: 10.0,
          left: 10,
          ),
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 2,
            childAspectRatio: 3/2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10, ),
          children: dummy_categories.map((item)=> buildSlots(item.title, item.color)).toList(),
        ),
      ),
    );
  }
}