import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './5.dart';
import './lasttwo.dart';
import '../screens/AllUsersScreen.dart';

void ss(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return MyFlutterApp6();
  }));
}
class MyFlutterApp6 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),fontFamily: 'Raleway',),
        home:  Scaffold(
          appBar: AppBar(title: Text("ENTER THE DETAILS:"),),
          body: Container(
            width: double.infinity,height: double.infinity,

            child:SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  im3(),
                  Padding(
                      padding:EdgeInsets.all(5.0),child:TextField(

                    keyboardType: TextInputType.text,decoration: InputDecoration(
                      labelText:"Explain the situation:",
                      hintText: "",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  )),

                  RaisedButton(
                    color: Colors.black,
                    child:Text(
                      "Send",style: TextStyle(
                      fontSize: 20.0,color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w800,
                    ),
                    ),elevation: 6.0,
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        )

    );

  }
}
class im3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/Alert-Download-PNG.png');
    Image image = Image(
      image: assetImage,
      width: 150.0,
      height: 200.0,
    );
    return Container(
      child: image,
    );
  }
}
class finale1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        home: Scaffold(
            appBar: AppBar(title: Text("SECURITY"),
            actions: <Widget>[
               IconButton(
              onPressed:()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>AllUsersScreen())),
              icon: Icon(Icons.power_settings_new),
            )
            ],),
            body: sub()
        )
    );;
  }

}
class sub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(crossAxisCount: 1,mainAxisSpacing: 10.0,
    primary: false,padding: EdgeInsets.all(10.0),children: <Widget>[
      Column(
        children: <Widget>[
          GestureDetector(onTap: (){
            slot1(context);
            print("hi");
          },child:Container(
            child: ClipRect(
              child: Align(
                alignment: Alignment.center,child: Parking(),
              ),
            ),
          ),
          ),Container(
            alignment: Alignment.center,
          width:double.infinity,height: 20.0,
    decoration: BoxDecoration(
    color: Colors.black,
    borderRadius: BorderRadius.circular(5.0)),
    child:Text("PARKING",style:TextStyle(color:Colors.white))
    ),


        ],
      )
      ,

          Column(
            children: <Widget>[
              GestureDetector(onTap: (){
                startNewLostItem2(context);;
              },child:Container(
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center,child: Security(),
                  ),
                ),
              ),
              ),
              Container(
                  alignment: Alignment.center,
                  width:double.infinity,height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5.0)),
                  child:Text("ENTRY",style:TextStyle(color:Colors.white))
              ),
            ],
          )

          ,Column(
            children: <Widget>[
              GestureDetector(onTap: (){
                ss(context);
              },child:Container(
                child: ClipRect(
                  child: Align(
                    alignment: Alignment.center,child: Emergency(),
                  ),
                ),
              ),
              ),
              Container(child:Text("")),
              Container(
                  alignment: Alignment.center,
                  width:double.infinity,height: 20.0,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5.0)),
                  child:Text("EMERGENCY",style:TextStyle(color:Colors.white))
              ),
            ],
          )
          ,
      ]);
  }

}

class Parking extends StatelessWidget {
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
  }}
class Security extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/security.png');
    Image image = Image(
      image: assetImage,
      width: 350.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }}
class Emergency extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/Alert-Download-PNG.png');
    Image image = Image(
      image: assetImage,
      width: 350.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }}