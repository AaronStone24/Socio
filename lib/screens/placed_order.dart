import 'package:flutter/material.dart';
import 'package:startup_namer/ScreenList.dart';
import 'package:flare_flutter/flare_actor.dart';

class PlacedOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MarketDrawer(),
      appBar: AppBar(
        title: Text('My Orders'),
      ),
      body:  (previousOrder.isNotEmpty)?
          Column(
            children:<Widget>[         
              Container(
                width: double.infinity,
                height: 600,
                  child: ListView.builder(
              itemCount: previousOrder.length,
              itemBuilder: (ctx, index)
              {
                return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card (
                  margin: EdgeInsets.all(5),
                  elevation: 5,
                  color: Colors.white54,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                           CircleAvatar(
                           radius: 15,
                           child:Padding(
                           padding: EdgeInsets.all(3),
                           child: Text('${index+1}'),)),
     Container(
                           width: double.infinity,
                           height: 100,
                           child:ListView.builder(
                            itemCount: previousOrder[index].length,
                            itemBuilder: (ctxx, ind){
                              return ListTile(
                                title: Text('${previousOrder[index][ind].title}',),
                                leading: Icon(Icons.arrow_forward_ios),
                                trailing: Card(
                                  elevation: 3,
                                  child: Padding(
                                    padding: EdgeInsets.all(6),
                                    child: Text('₹${(previousOrder[index][ind].price * previousOrder[index][ind].quantity)}'),
                                  ),
                                ),
                              );
                            },
                          ),
                          ),
                        ],
                      ),
                    )
                    
                  
                 )
                );
              }
                  )
              )
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
                   Text("No Orders!",
                   style: TextStyle(
                     color: Colors.black54,
                     fontSize: 22,
                     fontWeight: FontWeight.bold,
                   ),
                   ),
                   ],
                 )
                 ),
    );
  
  }
}