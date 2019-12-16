import 'package:flutter/material.dart';

class MyBottomAppBar extends StatefulWidget{
  Widget child;
  MyBottomAppBar(this.child);
  @override
  _BottomAppBarState createState()=> _BottomAppBarState();
}

class _BottomAppBarState extends State<MyBottomAppBar>{
  @override
  Widget build(BuildContext context){
  return BottomAppBar(

        color: Colors.blueGrey[700],
        elevation: 4.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            
            widget.child,
          ],
        ),
      );
  }
}

BottomAppBar normalBottomAppBar=BottomAppBar(
  color: Colors.blueGrey[700],
        elevation: 4.0,
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
          ],
        ),
);