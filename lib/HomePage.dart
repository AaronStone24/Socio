import 'package:flutter/material.dart';
import 'package:startup_namer/ScreenList.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState()=> _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
        title: Row(children: [Icon(Icons.add_a_photo),Padding(child: Text('Socio'), padding: EdgeInsets.only(left: 20))] ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.star,color: Colors.orange[500]),
            tooltip: 'Favorites',
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.notifications,),
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>NoticeBoard()));
            },
            tooltip: 'Notifications',
          )
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
          HomePage(),
          HomePage(),
          ProfilePage('assets/images/water.png','','Kartik','','','','',''),
        ],
        5),
    );
  }
}