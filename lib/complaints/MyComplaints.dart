import 'package:flutter/material.dart';
import './Complaint.dart';
import 'package:flare_flutter/flare_actor.dart';

class MyComplaints extends StatefulWidget{
  List<ClipRRect> complaints;
  Complaint c=Complaint("","","");
  MyComplaints(this.c);
  
  @override
  _MyComplaintsState createState()=> _MyComplaintsState();
}

class _MyComplaintsState extends State<MyComplaints>{
  static int itemCount=0;
  final appBar=AppBar(
    title: Text('My Complaints'),
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: appBar,
        body:(!widget.c.isEmpty(widget.c))?
          Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
            child: Image.asset('assets/plain-white-background.jpg',
            fit: BoxFit.cover,),
          ),
              LayoutBuilder(
                builder:(ctx ,constraints){
                  return Container(
                   width: constraints.maxWidth,
                   height: constraints.maxHeight,
                   child: ListView.builder(
                      itemCount: itemCount,
                      itemBuilder: (ctx, index){
                        return Complaint(widget.c.subject,widget.c.description,widget.c.topic);
                      }
                      ),
                    );
                  }
                ),
               
        ]
        ): Center(
                 child: Column(children: <Widget>[
                  Container(
                   height: 200,
                   width: 200,
                   child: FlareActor(
                      'assets/empty.flr',
                       animation: 'idle',
                       fit: BoxFit.contain,
                     )
                   ),
                  Text("Empty NewsFeed!",
                  style: TextStyle(
                     color: Colors.black54,
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                    ),
                 ),
               ],
             )
           ),
      );
  }
}