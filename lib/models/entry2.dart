import 'package:flutter/material.dart';
import './entry1.dart';

final myController=TextEditingController();
final m1=TextEditingController();
final m2=TextEditingController();
final m3=TextEditingController();
final m4=TextEditingController();
final m5=TextEditingController();
final m6=TextEditingController();
void s90(BuildContext ctx)
{
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_){
    return Booking();
  }));
}

class Booking extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),fontFamily: 'Raleway',),
        home:  Container(
          width: double.infinity,height: double.infinity,

          child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                    padding:EdgeInsets.all(5.0),child:TextField(
                  controller: m6,
                  keyboardType: TextInputType.text,decoration: InputDecoration(
                    labelText:"Category",
                    hintText: "Eg.Housekeeper,Electrician,Visitor",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
                ),
                )),
                Padding(
                    padding:EdgeInsets.all(5.0),child:TextField(
                  controller: myController,
                  keyboardType: TextInputType.text,decoration: InputDecoration(
                    labelText:"Name",
                    hintText: "Eg. Ashish",border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                )
                ),
                )),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m1,
                    keyboardType: TextInputType.number,decoration: InputDecoration(
                      labelText:"Flat No:",
                      hintText: "Eg. 18",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m2,
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
                    controller: m3,
                    keyboardType: TextInputType.number,decoration: InputDecoration(
                      labelText:"In-Time",
                      hintText: "Eg.18:30",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m4,
                    keyboardType: TextInputType.text,decoration: InputDecoration(
                      labelText:"Vehicle's Details ",
                      hintText: "",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m5,
                    keyboardType: TextInputType.datetime,decoration: InputDecoration(
                      labelText:"Date",
                      hintText: "Eg.18-3-19",border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)
                  )
                  ),
                  ),
                ),
                RaisedButton(
                  color: Colors.blue,
                  child:Text(
                    "Add Details",style: TextStyle(
                    fontSize: 20.0,color: Colors.white,fontFamily: "Raleway",fontWeight: FontWeight.w800,
                  ),
                  ),elevation: 6.0,
                  onPressed: (){
                  },
                ),


              ],
            ),
          ),
        )


    );
  }
}