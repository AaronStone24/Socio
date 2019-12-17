import 'package:startup_namer/ScreenList.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  final String profilePic,id,name,about,flatDetails,myVisitors,myComplaints,myOrders;
  ProfilePage(this.profilePic,this.id,this.name,this.about,this.flatDetails,this.myVisitors,this.myComplaints,this.myOrders);
  @override
  _ProfilePageState createState()=> _ProfilePageState();
}

final AppBar appbar=AppBar(
        title: Text('Profile'),
      );

class _ProfilePageState extends State<ProfilePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: appbar,
      body: Container(
        //decoration: BoxDecoration(border: Border.all(width: 5)),
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
            Container(
              height: MediaQuery.of(context).size.height-appbar.preferredSize.height-250,
              padding: EdgeInsets.only(bottom: 5),
              child: ListView(
                padding: EdgeInsets.all(10.0),
                children: <Widget>[
                  ListTile(
                    
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.portrait,color: Colors.orange[500]),
                    title: Text("Name",style: bodyTheme.copyWith(fontSize: 14,fontWeight: FontWeight.w300)),
                    subtitle: Text(widget.name,style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w700)),
                  ),
                  ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.info,color: Colors.orange[500]),
                    title: Text("About",style: bodyTheme.copyWith(fontSize: 14,fontWeight: FontWeight.w300)),
                    subtitle: Text(widget.about,style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w700)),
                  ),
                  ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.info,color: Colors.orange[500]),
                    title: Text("Flat Details",style: bodyTheme.copyWith(fontSize: 14,fontWeight: FontWeight.w300)),
                    subtitle: Text(widget.about,style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w700)),
                  ),
                  ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.arrow_right,color: Colors.orange[500]),
                    title: Text("My Visitors",style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w600)),
                  ),
                  ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.list,color: Colors.orange[500]),
                    title: Text("My Complaints",style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w600)),
                    onTap: (){
                      //Navigator.of(context).push(MaterialPageRoute(builder: (_)=>)),
                    },
                  ),
                  ListTile(
                    //contentPadding: EdgeInsets.all(10.0),
                    leading: Icon(Icons.shopping_cart,color: Colors.orange[500]),
                    title: Text("My Orders",style: TextStyle(fontFamily: 'Montserrat',fontSize: 20,fontWeight: FontWeight.w600)),
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PlacedOrderScreen()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}