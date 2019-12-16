import 'package:flutter/material.dart';

class ComplaintTile extends StatelessWidget{
  ComplaintTile(this.title,this.imgSrc);
  final String title;
  final String imgSrc;
  @override
  Widget build(BuildContext context){
    return GridTile(
      child:FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(imgSrc),
      ),
      footer: GridTileBar(
        title: Text(title,textAlign: TextAlign.center),
      ),
    );
  }
}