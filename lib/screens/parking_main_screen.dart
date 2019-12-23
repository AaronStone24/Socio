import 'package:flutter/material.dart';
import './parking_status.dart';
import './rented_parking_history.dart';
class ParkingMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Parking"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (_)=> (ParkingStatus())));
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
                          child: Image.asset('assets/images/parking.png',
                          height: 250,
                          width: double.infinity,
                          fit: BoxFit.contain
                          ),
                          ),
                          Divider(
                           thickness: 2, 
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text('Parking Status',
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
                Navigator.of(context).push(MaterialPageRoute(builder: (_)=> RentedParkingHistoryScreen()));
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
                        child: Text('Rented Parking History',
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