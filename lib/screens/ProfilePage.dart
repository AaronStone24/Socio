import 'package:startup_namer/ScreenList.dart';
import 'package:flutter/material.dart';

ListTile listItem=ListTile(
  leading: ,
);

class ProfilePage extends StatefulWidget{
  final String profilePic,id,name,about,flatDetails,myVisitors,myComplaints,myOrders;
  ProfilePage(this.profilePic,this.id,this.name,this.about,this.flatDetails,this.myVisitors,this.myComplaints,this.myOrders);
  @override
  _ProfilePageState createState()=> _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(width: 5)),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                    Container(
                  margin: EdgeInsets.all(20),
                  height: 170,
                  width: 170,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(),
                    image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage(widget.profilePic),
                    )
                  ),
                  ),
                  Positioned(
                    top: 140,
                    left: 135,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        color: Colors.blueGrey[500],
                      ),
                      child:
                        IconButton(
                        iconSize: 30,
                        icon: Icon(Icons.add_a_photo),
                        color: Colors.white,
                        //alignment: Alignment.bottomRight,
                        onPressed: (){},
                        ),
                    ),
                  )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top:10,left: 10,right: 10),
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context,position){
                  return 
                },
              ),
            )
          ],
        ),
      ),
      
    );
  }
}