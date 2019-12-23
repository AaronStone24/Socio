import 'package:flutter/material.dart';
import '../dummy_data_security.dart';
import '../dummy_data_visitors.dart';
import 'package:flare_flutter/flare_actor.dart';

class VisitorsHistoryScreen extends StatelessWidget {
  final appBar=AppBar(
    title: Text('Visitors\' History')
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar ,
      body: SingleChildScrollView(
              child: (visitors.isNotEmpty)?
           Column(
             children: <Widget>[
               ...visitors.map((item){
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
                                 child: Text('Purpose of Visit ',
                                 style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.purpose,
                                 style: TextStyle(fontSize: 16,),),
                               ),
                             ]
                           ),
                           TableRow(
                             children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text('Date of Visit',
                                 style: TextStyle(fontWeight: FontWeight.bold,
                                 fontSize: 16,),),
                               ),
                               Padding(
                                 padding: const EdgeInsets.all(5.0),
                                 child: Text(item.dateOfVisit,
                                 style: TextStyle(fontSize: 16,),),
                               )
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