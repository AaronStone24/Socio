import 'package:flutter/material.dart';
import './LoginPage.dart';
import './garbage_collector_detail2.dart';
class AllUsersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(93, 142, 155, 1.0),
      body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Login as:",
              style: TextStyle(
                fontFamily: "Work_Sans",
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.left,),
            ),
            Divider(
              thickness: 3,
            ),
            InkWell(
                onTap:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage(1)));
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/admin.png',
                          height: 184,
                          width: double.infinity,
                          fit: BoxFit.contain,
                          ),
                        ),),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('Admin',
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage(2)));
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
                        child: Image.asset('assets/images/user.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.contain
                        ),),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('User',
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage(3)));
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
                        child: Image.asset('assets/images/shopkeeper.png',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.contain
                        ),),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('Shopkeeper',
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>LoginPage(4)));
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/police.png',
                          width: double.infinity,
                          height: 184,
                          fit: BoxFit.contain
                          ),
                        ),),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('Security Guard',
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
                  Navigator.of(context).push(MaterialPageRoute(builder: (_)=>GarbageCollectorDetails2() ));
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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/keeper.png',
                          width: double.infinity,
                          height: 184,
                          fit: BoxFit.contain,
                          ),
                        ),),
                        Divider(
                          thickness: 2,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text('Housekeeper',
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
    );
  }
}