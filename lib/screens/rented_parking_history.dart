import 'package:flutter/material.dart';
import '../dummy_data_visitors.dart';
import 'package:flare_flutter/flare_actor.dart';

class RentedParkingHistoryScreen extends StatelessWidget {
  final appBar=AppBar(
    title: Text('Rented Parking History')
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar ,
      body: SingleChildScrollView(
              child: (rentedParking.isNotEmpty)?
           Column(
             children: <Widget>[
               ...rentedParking.map((item){
                 return Card(
                   shape: RoundedRectangleBorder(
                     borderRadius: BorderRadius.circular(15)),
                     child: Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Table(
                         children: <TableRow>[
                           TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Name ',
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.name,
                                 style: TextStyle(fontSize: 16,),),
                               )
                             ]
                           ),
                           TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Date of Renting',
                                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.dateOfRenting,
                                 style: TextStyle(fontSize: 16,),),
                               ),
                             ]
                           ),
                           TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Time ',
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.rentedTimeInterval,
                                 style: TextStyle(fontSize: 16,),),
                               )
                             ]
                           ),
                           TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Amount Received',
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('₹${item.amountPaid}',
                                 style: TextStyle(fontSize: 16,),),
                               ),
                             ]
                           ),
                            TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Details',
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.details,
                                 style: TextStyle(fontSize: 16,),),
                               ),
                             ]
                           ),
                         ],
                       ),
                       
                     )     
                  );
               }          
               ).toList(),
             ],
           ) : Center(
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
                    Text("No past Visitors!",
                    style: TextStyle(
                       color: Colors.black54,
                       fontSize: 22,
                       fontWeight: FontWeight.bold,
                      ),
                   ),
                 ],
               )
             ),
      ),
      
    );
  }
}