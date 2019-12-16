import 'package:flutter/material.dart';
import 'package:startup_namer/ScreenList.dart';
import 'package:flare_flutter/flare_actor.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  
  @override
  Widget build(BuildContext context) {
    double total=0.0;
    if(newOrders.isNotEmpty){
      newOrders.forEach((order){
      total+=order.price * order.quantity;
     });
    }
    return Scaffold(
      drawer: MarketDrawer(),
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: 
          (newOrders.isNotEmpty)?
          Column(
            children:<Widget>[         
              Container(
                width: double.infinity,
                height: 400,
                  child: ListView.builder(
              itemCount: newOrders.length,
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
                    child: ListTile(
                      title: Text(newOrders[index].title,
                      style: TextStyle(fontSize: 18,
                      fontWeight: FontWeight.bold,color: Colors.black87),
                      ),
                      leading: CircleAvatar( 
                        radius: 25,
                        child:Padding(
                          padding: EdgeInsets.all(3),
                          child: FittedBox(child: Text('₹${(newOrders[index].price)}'))),
                      backgroundColor: Colors.purple,),
                      trailing: RaisedButton(
                        elevation: 4,
                        color: Colors.orange,
                        onPressed: (){
                          setState(() {
                            newOrders.removeAt(index);
                          });
                        },
                        child: Text(
                          'Remove',
                        ),
                      ) ,
                      subtitle: Text(
                      'x ${newOrders[index].quantity}\n${newOrders[index].shopName}',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 12),
                        ),
                    ),
                  ),
                ),
                );
              },
            ),
                ),
             Row(
               children: <Widget>[
                 Expanded(
                   flex: 2,
                   child: Card(
                     child: Padding(
                       padding: const EdgeInsets.all(8),
                       child: Text('Total= ₹$total',
                       style: TextStyle(fontWeight: FontWeight.bold,
                       fontSize: 20),),
                     ),
                   ),
                 ),
                 Expanded(
                   flex: 1,
                   child: RaisedButton(
                    child: Text('Place Order'),
                     onPressed: (){
                       setState(()
                        {
                             previousOrder[previousOrder.length]=newOrders;
                             newOrders=[];
                           });
                      
                       }),
                 ),
               ],
             )
                 ]
                 )
                 : Center(
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
                   Text("Empty Cart",
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