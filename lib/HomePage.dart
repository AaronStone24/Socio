import 'package:flutter/material.dart';
import './ScreenList.dart';
import 'package:badges/badges.dart';
import './complaints/Complaints.dart';
class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}
int favCount=0;
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Row(children: [Container(height: 35,width: 35,child: Image.asset('assets/images/icon_socio.png', fit: BoxFit.contain),),Padding(child: Text('Socio'), padding: EdgeInsets.only(left: 10))] ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star,color: Colors.orange[500]),
            tooltip: 'Favorites',
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>FavoriteNewsFeedScreen()));
            },
          ),
          //Padding(padding: EdgeInsets.only(right: 10)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
              badgeColor: Colors.white70,
              badgeContent: Text('$favCount'),
              child: IconButton(
                icon: Icon(Icons.notifications,),
                onPressed: (){
                  
                },
                tooltip: 'Notifications',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(right: 15)),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeIcon: Icon(Icons.home,color: Colors.orange[500]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            title: Text('Market'),
            activeIcon: Icon(Icons.shopping_basket,color: Colors.orange[500]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.delete_outline),
            title: Text('Garbage'),
            activeIcon: Icon(Icons.delete_outline,color: Colors.orange[500]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            title: Text('Security'),
            activeIcon: Icon(Icons.lock,color: Colors.orange[500]),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeIcon: Icon(Icons.person,color: Colors.orange[500]),
          ),
        ],
        <Widget>[
          HomePage(),
          CategoryScreen(),
          GarbageCollectorDetails(),
          SecurityMainScreen(),
          ProfilePage('assets/images/water.png','','Kartik','','','','',''),
        ],
        5
      ),
      body: Padding(
        child: NoticeBoard(),
        padding: EdgeInsets.all(5),
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
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LostAndFoundScreen()));
                  },),
                ListTile(
                  leading: Icon(Icons.local_parking),
                  title: Text("Parking"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ParkingMainScreen()));
                  },),
                ListTile(
                  leading: Icon(Icons.touch_app),
                  title: Text("Voting"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>VotingScreen()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.people),
                  title: Text("Complaints"),
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ComplaintsPage()));
                  },
                )
              ],
            ),),
    );
  }
}