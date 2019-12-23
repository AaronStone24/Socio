import 'package:flutter/material.dart';
final myController=TextEditingController();
final m1=TextEditingController();
final m2=TextEditingController();
final m3=TextEditingController();
class Booking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),fontFamily: 'Raleway',),
        home:  Container(
          width: double.infinity,height: double.infinity,

          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                    padding:EdgeInsets.all(5.0),child:TextField(
                  controller: myController,
                  keyboardType: TextInputType.number,decoration: InputDecoration(
                    labelText:"Slot No.",
                    hintText: "Eg. 1",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
                ),
                )),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m1,
                    keyboardType: TextInputType.text,decoration: InputDecoration(
                      labelText:"Wing",
                      hintText: "Eg. A",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m2,
                    keyboardType: TextInputType.datetime,decoration: InputDecoration(
                      labelText:"Date and Time",
                      hintText: "12-12-19  13:00-14:30",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m3,
                    keyboardType: TextInputType.number,decoration: InputDecoration(
                      labelText:"Visitor's Contact Number",
                      hintText: "Eg. 9862356889",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),

                RaisedButton(
                  color: Colors.black,
                  child:Text(
                    "SEND REQUEST",style: TextStyle(
                    fontSize: 20.0,color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w800,
                  ),
                  ),elevation: 6.0,
                  onPressed: (){
                    s3(context);
                  },
                ),


              ],
            ),
          ),
        ))


    ;
  }
}
void s3(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return CategoriesScreen1();
  }));
}

class CategoriesScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),fontFamily: 'Raleway',),
        title: "My Flutter App",
        home:Scaffold(
            appBar: AppBar(automaticallyImplyLeading: true,
              title: const Text('Request for Parking'),leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: (){
                Navigator.pop(context,false);
              },),
            ),
            body:Material(
                child:Container(
                  child: Column(
                    children: <Widget>[

                      Container(width:double.infinity,height: 300
                          ,
                          child:getListView()),
                      Padding(
                        padding: EdgeInsets.only(left:80.0,right: 50.0),
                        child: RaisedButton(

                          color: Colors.black,
                          padding: EdgeInsets.all(10.0),child: Text("ACCEPT",textDirection: TextDirection.ltr,
                            style: TextStyle(fontSize: 25.0,color: Colors.white)),onPressed: (){s8(context);},),
                      ),
                      Container(
                        child: Text(""),
                      ),
                      Padding(
                        padding:EdgeInsets.only(left: 80.0,right: 50.0),
                        child: RaisedButton(

                          color: Colors.black,
                          padding: EdgeInsets.all(10.0),child: Text("REJECT",textDirection: TextDirection.ltr,
                            style: TextStyle(fontSize: 25.0,color: Colors.white)),onPressed: (){s6(context);},),
                      ),
                    ],
                  ),
                )
            )
        )
    );
  }
}
Widget getListView() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.play_arrow),
        title: Text("Slot No."),
        subtitle: Text(myController.text),

        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),

      ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text("Wing"),
          subtitle: Text(m1.text),

          onTap: () {
            debugPrint("Landscape tapped");}
      ),

      ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text("Date and Time"),
          subtitle: Text(m2.text),

          onTap: () {
            debugPrint("Landscape tapped");}
      ),
      ListTile(
          leading: Icon(Icons.play_arrow),
          title: Text("Visitor's Contact Number"),

          subtitle: Text(m3.text),

          onTap: () {
            debugPrint("Landscape tapped");}
      )],
  );

  return listView;
}
void s6(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return CategoriesScreen89();
  }));
}

class CategoriesScreen89 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Material(
        child: Column(
          children: <Widget>[
            ima3(),
            RaisedButton(

              color: Colors.black,
              padding: EdgeInsets.all(10.0),child: Text("TRY AGAIN LATER",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 25.0,color: Colors.white)),),
          ],
        ),
      ),
    );
  }
}
class ima3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/sorry.png');
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
void s8(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return CategoriesScreen9();
  }));
}

class CategoriesScreen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Material(
        child: Column(
          children: <Widget>[
            ima4(),
            RaisedButton(

              color: Colors.black,
              padding: EdgeInsets.all(10.0),child: Text("REQUEST ACCEPTED",textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 25.0,color: Colors.white)),),
          ],
        ),
      ),
    );
  }
}
class ima4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/happy.png');
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