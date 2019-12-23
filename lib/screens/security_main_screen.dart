import 'package:flutter/material.dart';
import './emergency_screen.dart';
import './visitors_history_screen.dart';
import '../ScreenList.dart';
class SecurityMainScreen extends StatefulWidget {
  @override
  _SecurityMainScreenState createState() => _SecurityMainScreenState();
}

class _SecurityMainScreenState extends State<SecurityMainScreen> {
	List<Widget> _listViewData=[];
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
      appBar: AppBar(
        title: Text("Security"),
      ),
      body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> (VisitorsHistoryScreen())));
                  } ,
                    child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15) ),
                      elevation: 4,
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                         ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                          child: Image.asset('assets/images/visitors.jpg',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.cover
                          ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text('Visitors\' History',
                            style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                            textAlign: TextAlign.center,)
                          )
                        ]
                      ),
                  ),
                ),
              
            InkWell(
              onTap:(){
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> EmergencyAlertScreen()));
              } ,
                child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15) ),
                  elevation: 4,
                  margin: EdgeInsets.all(20),
                  child: Column(
                    children: <Widget>[
                     ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      child: Image.asset('assets/images/emergency.jpg',
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text('Emergency Alerts',
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,)
                      )
                    ]
                  ),
              ),
            ),
],
            ),
          ),

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
                  title: Text("Garbage Portal"),
                  onTap: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>GarbageCollectorDetails()));
                  },
                )
              ],
            ),),
              );
  }
}