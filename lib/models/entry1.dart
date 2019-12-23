import 'package:flutter/material.dart';
import './entry2.dart';
void s1(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return MyFlutterApp();
  }));
}
class MyFlutterApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        title: "My Flutter App",
        theme: ThemeData(
            primarySwatch: Colors.pink,
            accentColor: Colors.amber,
            canvasColor: Color.fromRGBO(255, 254, 229, 1)),
        home: Scaffold(
          appBar: AppBar(title: Text("Duty Areas"),),
          body:get(),floatingActionButton:FloatingActionButton(onPressed: (){s90(context);},child: Icon(Icons.person_add),

        )
        )
    );
  }
}

Widget get() {

  var listView = ListView(
    children: <Widget>[

      ListTile(
        leading: Icon(Icons.landscape),
        title: Text(m6.text),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Name:"),Text(myController.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("Flat no:"),Text(m1.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("Wing:"),Text(m2.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("In-Time"),Text(m3.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("Vehicle's Details"),Text(m4.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("Date:"),Text(m5.text)
              ],
            ),
            Row(
              children: <Widget>[
                Text("Name:"),Text(myController.text)
              ],
            ),
          ],
        ),


//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
      )
    ],
  );

  return listView;
}