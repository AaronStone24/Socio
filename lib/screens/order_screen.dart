import 'package:flutter/material.dart';
import '../ScreenList.dart';
import 'package:flare_flutter/flare_actor.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final appBar=AppBar(
        title: Text('My Cart'),
      );
  
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
      appBar: appBar,
      extendBody: true,
      bottomNavigationBar: ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
        topLeft: Radius.circular(20),
      ),
      child: MyBottomAppBar(Row(children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.keyboard_arrow_up), color: Colors.orange[500]),
        Padding(padding: EdgeInsets.only(right: MediaQuery.of(context).size.width*11.2/15)),
        IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (_)=>ProfilePage('assets/images/water.png',"","","","","","","")));},icon: Icon(Icons.portrait), color: Colors.orange[500]),
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
          Navigator.of(context).pop();
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      body: 
          (newOrders.isNotEmpty)?
           Stack(
          children:<Widget>[
            FadeInImage.assetNetwork(
              placeholder: 'assets/loading.gif',
              image: 'https://images.pexels.com/photos/2237190/pexels-photo-2237190.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              width: double.infinity,
              height: MediaQuery.of(context).size.height-appBar.preferredSize.height-MediaQuery.of(context).padding.top,
              fit: BoxFit.cover,
              ),
          LayoutBuilder(
          builder:(ctx ,constraints){
            return Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
              child: ListView.builder(
              itemCount: newOrders.length,
              itemBuilder: (ctx, index)
              {
                return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card (
                  margin: EdgeInsets.all(5),
                  elevation: 5,
                  color: Colors.white70,
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
                );
          }
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
             ),
             SizedBox(
               height:10 ,
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