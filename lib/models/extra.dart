import 'package:flutter/foundation.dart';
//import 'package:flutter/src/widgets/text.dart';
import 'package:flutter/material.dart';
final myController=TextEditingController();
final m1=TextEditingController();
final m2=TextEditingController();
final m3=TextEditingController();
final m4=TextEditingController();
final m5=TextEditingController();
final m6=TextEditingController();
final m7=TextEditingController();
class LostItem{
  final String Category;
  final String Name;
  final String FlatNo;
  final String Wing;
  final String InTime;
  final String VD;
  final String Date;
  final String OutTime;
  LostItem({
    @required this.Category,
    @required this.Name,
    this.FlatNo,
    this.Wing,
    this.InTime,
    this.VD,
    this.Date,
    this.OutTime
  }
      );
}

void startNewLostItem2(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return LostScreen();
  }));
}
class LostScreen extends StatefulWidget {
  static List<LostItem> lostItems=[
    LostItem(
     Category: "Visitor",
     Name:"Anu",
     FlatNo:"2",
     Wing:"A",
     InTime:"12:00",
     VD:"Innova",
    Date:"12-09-16",
      OutTime:'13:00'

    ),

  ];
  @override
  _LostScreenState createState() => _LostScreenState();
}

class _LostScreenState extends State<LostScreen> {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("DETAILS"),),
        body: ListView.builder(
          itemCount: LostScreen.lostItems.length,
            itemBuilder: (ctx, index) {
              return SingleChildScrollView(
                child: Column(
                    children: <Widget>[

                      ListTile(
                        leading: Icon(Icons.subdirectory_arrow_right),
                        title: Text(LostScreen.lostItems[index].Category),
                        subtitle: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text("Name:"),
                                Text(LostScreen.lostItems[index].Name)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Flat No:"),
                                Text(LostScreen.lostItems[index].FlatNo)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Wing:"),
                                Text(LostScreen.lostItems[index].Wing)
                              ],
                            ),

                            Row(
                              children: <Widget>[
                                Text("In-Time:"),
                                Text(LostScreen.lostItems[index].InTime)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Vehicle's Details:"),
                                Text(LostScreen.lostItems[index].VD)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("Date:"),
                                Text(LostScreen.lostItems[index].Date)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Text("OutTime:"),
                                Text(LostScreen.lostItems[index].OutTime)
                              ],
                            ),
                          ],
                        ),
onTap: (){
  startNewLostItem(context);
},

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
                      )

                    ]
                ),
              );
            }), floatingActionButton: FloatingActionButton(
      onPressed: () {startNewLostItem(context)
        ;
      }, child: Icon(Icons.person_add),

    )
    );
  }
}
void startNewLostItem(BuildContext ctx) {
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return NewLostItemScreen();
  }));
}
  class NewLostItemScreen extends StatelessWidget {

  void addLostItem(BuildContext ctx, {String C, String N,String F,String W,String I,String V,String D,String O}){

  LostScreen.lostItems.add(
  LostItem(
    Category: C,
  Name: N,
  FlatNo: F,
  Wing: W,
  InTime: I,
  VD: V,
  Date: D,
    OutTime: O,
  )
  );
  Navigator.of(ctx).pop();
  }
  @override
  Widget build(BuildContext context) {
  return MaterialApp(

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),fontFamily: 'Raleway',),
      home:  Scaffold(
        appBar: AppBar(title: Text("ENTER THE DETAILS:"),),
        body: Container(
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
                Padding(padding: EdgeInsets.all(5.0),
                  child: TextField(
                    controller: m7,
                    keyboardType: TextInputType.datetime,decoration: InputDecoration(
                      labelText:"Out Time:",
                      hintText: "Eg.19:00",border: OutlineInputBorder(
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
                  onPressed: (){addLostItem(context,C:m6.text,N:myController.text,F: m1.text,W:m2.text,I:m3.text,V:m4.text,D:m5.text,O:m7.text);
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
