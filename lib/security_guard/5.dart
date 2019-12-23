import "package:flutter/material.dart";
import './1.dart';
import './6.dart';
import './7.dart';

void slot1(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return mains();
  }));
}
class mains extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var a=MaterialApp(
        debugShowCheckedModeBanner: false,home: Scaffold(
        appBar: AppBar(title: Text("PARKING"),),body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ima(),

        RaisedButton(

          color: Colors.black,
          padding: EdgeInsets.all(10.0),child: Text("Resident's Parking",textDirection: TextDirection.ltr,
            style: TextStyle(fontSize: 25.0,color: Colors.white)),onPressed: (){s1(context);},),
        Container(child: Text(""),),
        RaisedButton(

          color: Colors.black,
          padding: EdgeInsets.all(10.0),child: Text("Visitor's Parking",textDirection: TextDirection.ltr,textAlign: TextAlign.left,
            style: TextStyle(fontSize: 25.0,color: Colors.white)),onPressed: (){s2(context)
        ;
        },),


      ],
    )));

    return a;
  }

}
class ima extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/parking.png');
    Image image = Image(
      image: assetImage,
      width: 450.0,
      height: 350.0,
    );
    return Container(
      child: image,
    );
  }
}
void s2(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return MyFlutterApp();
  }));
}
class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.blue,
          title: Text('Visitor\'s Parking'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(
                  Icons.local_parking,
                ),
                text: 'Parking Slots',
              ),
              Tab(
                icon: Icon(
                  Icons.laptop_chromebook,
                ),
                text: 'Booking Portal ',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Story(),
            Booking(),
          ],
        ),
      ),
    );
  }
}


class MyFlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home:TabsScreen()
    );
  }
}