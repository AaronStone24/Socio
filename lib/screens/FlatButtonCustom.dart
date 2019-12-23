import 'package:flutter/material.dart';

class CustomFB extends StatelessWidget{
  final String text;
  final Function path;
  CustomFB(this.text,this.path);
  @override
  Widget build(BuildContext context){
    return FlatButton(
      onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>path()));},
      child: Text('$text',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500]),),
      padding: EdgeInsets.all(8),
      color: Colors.blueGrey[200],
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.orange[500],
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}