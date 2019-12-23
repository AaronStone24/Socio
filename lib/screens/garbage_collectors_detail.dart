import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import '../ScreenList.dart';
import '../dummy_garbage_data.dart';
import './duty_areas.dart';
class GarbageCollectorDetails extends StatefulWidget {
  @override
  _GarbageCollectorDetailsState createState() => _GarbageCollectorDetailsState();
}

class _GarbageCollectorDetailsState extends State<GarbageCollectorDetails> {
  final appBar=AppBar(
    title: Text('Garbage Collection'),
  );
  List<Container> _listViewData=[];
  _showDrawer() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.blueGrey[500],
          child: ListView(
            children: [
              Padding(padding: EdgeInsets.all(15)),
              Column(
                
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: _listViewData,
              ),
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    _listViewData = [
      
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));},
        child: Text('Home',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));},
        child: Text('Market',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>GarbageCollectorDetails()));},
        child: Text('Garbage Portal',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SecurityMainScreen()));},
        child: Text('Security',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    Container(
      height: 80,
      width: double.infinity,
          child: FlatButton(
        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ProfilePage("","","","","","","","")));},
        child: Text('Profile',style: TextStyle(fontFamily: 'Montserrat',color: Colors.orange[500],fontSize: 20),),
        padding: EdgeInsets.all(8),
        color: Colors.blueGrey[900],
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.orange[500],
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
  ];  
  return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: appBar,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: MyBottomAppBar(Row(children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*11.2/15)),
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage("assets/images/water.png","","","","","","","")));},icon: Icon(Icons.portrait), color: Colors.orange[500]),
        //Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/4)),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      ),
      ),),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange[500],
        child: Icon(
          Icons.arrow_back,
          color: Colors.orange[50],
        ),
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>HomePage()));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      body:(garbageCollectors.isNotEmpty)?
        Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
            ),
            LayoutBuilder(
              builder:(ctx ,constraints){
                return Container(
                 width: constraints.maxWidth,
                 height: constraints.maxHeight,
                 child: ListView.builder(
                   itemCount: garbageCollectors.length,
                   itemBuilder: (ctx, index){
                       return ClipRRect(
                         borderRadius: BorderRadius.circular(20),
                         child: InkWell(
                           onTap: (){
                             Navigator.of(context).push(MaterialPageRoute(builder: (_)=> DutyAreasScreen(index)));
                           },
                            child: Card(
                             elevation: 1,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ListTile(
                               title: Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(
                                   garbageCollectors[index].name,
                                   style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold),
                                   ),
                               ),
                                 subtitle: Padding(
                                   padding: const EdgeInsets.all(5.0),
                                   child: Text(garbageCollectors[index].contactDetails,),
                                 ),
                                 leading: Container(
                                   width: 60,
                                   height: 60,
                                   child: ClipRRect(
                                     borderRadius: BorderRadius.circular(10),
                                     child: Image.network(garbageCollectors[index].imageAddress,
                                     fit: BoxFit.cover,),
                                   ),
                                 ),
                                 trailing: Text(
                                   'Shift:\n${garbageCollectors[index].shiftDetails}'
                                 ),
                                  ),
                            ),
                           ),
                         ),
                       );
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
                  Text("No Details!",
                  style: TextStyle(
                     color: Colors.black54,
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                    ),
                 ),
               ],
             )
           ),
           drawer: Drawer(child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.blueGrey[500],
                  padding: EdgeInsets.all(10),
                  alignment: Alignment.center,
                  child: Text(
                    'SOCIO',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w900,
                        fontSize: 50,
                        color: Colors.white,
                  ),
                ),)
                ,
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.search),
                  title: Text("Lost and Found"),
                  onTap: (){
                    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));
                  },),
                ListTile(
                  leading: Icon(Icons.local_parking),
                  title: Text("Parking"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ParkingMainScreen()));
                  },),
                ListTile(
                  leading: Icon(Icons.touch_app),
                  title: Text("Voting"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>VotingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Complaints"),
                  onTap: (){
                    //Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text("Market"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>CategoryScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Security"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>SecurityMainScreen()));
                  },
                )
              ],
            ),),
      );
  } 
}