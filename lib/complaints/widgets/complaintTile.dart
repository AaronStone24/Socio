import 'package:flutter/material.dart';
import '../ComplaintForm.dart';
//import 'package:socio/const/shadow_const.dart';
//import 'package:socio/const/gradient_const.dart';

class ComplaintTile extends StatefulWidget{
  ComplaintTile(this.title,this.imgSrc);
  final String title;
  final String imgSrc;
  @override
  _ComplaintTileState createState()=> _ComplaintTileState();
}

class _ComplaintTileState extends State<ComplaintTile>{
  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(0),
      
      child: GestureDetector(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ComplaintForm(widget.title)));
        },
        child: GridTile(
          child: Column(
            children: [
              Container(
                height: 100,
                alignment: Alignment.center,
                child: Image.asset(widget.imgSrc),
              ),
              Text(widget.title,style: TextStyle(backgroundColor: Color.fromARGB(50, 0xBB, 0xDE, 0xFB),fontWeight: FontWeight.w600))
            ],
          ),
        ),
      ),
    );
  }
}