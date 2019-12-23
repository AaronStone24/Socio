import 'package:flutter/material.dart';
import 'dart:async';
import './AllUsersScreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isInit=true;
  @override
  void didChangeDependencies() {
    if(isInit)
    {
      Timer(Duration(seconds: 4), ()=>Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=> AllUsersScreen())));
      isInit=false;
    }
    
    super.didChangeDependencies();
    
      }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset('assets/images/icon_background.png',
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.cover,
          ),
          Positioned(
            left: MediaQuery.of(context).size.width/2,
            bottom: MediaQuery.of(context).size.height/5,
            child: CircularProgressIndicator(
                backgroundColor: Colors.white,
            ),
          )
        ],
      )
      
    );
  }
}