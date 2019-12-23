import 'package:flutter/material.dart';
import './lost_screen.dart';
import './found_screen.dart';

class LostAndFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[200],
        appBar: AppBar(
            title: Text("Lost and Found Portal"),
            bottom: TabBar(tabs: <Widget>[
            Tab(
               icon: Icon(Icons.mood_bad),
               text:'Lost' ,
               ),
             Tab(
               icon: Icon(Icons.mood),
               text: 'Found',
               )
              ],
            ),
        ) ,
        body: TabBarView(
          children: <Widget>[
            LostScreen(),
            FoundScreen(),
          ],
        ),
      ) ,
    );
  }
}
